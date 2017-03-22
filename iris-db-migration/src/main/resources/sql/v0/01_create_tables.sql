--liquibase formatted sql

--changeset iris-docs:1

CREATE TABLE iris_user(
  id SERIAL PRIMARY KEY,
  login VARCHAR(25) NOT NULL,
  password VARCHAR(35) NOT NULL
);

CREATE TABLE user_profile(
  iris_user_id INT REFERENCES iris_user(id),
  user_profile_type_id NUMERIC(1) NOT NULL
);
-- Add constraint on columns

CREATE TABLE market(
  id SERIAL PRIMARY KEY,
  name TEXT,
  description TEXT
);


CREATE TABLE financial_asset(
  id SERIAL PRIMARY KEY ,
  isin_code VARCHAR(20) NOT NULL,
  name VARCHAR(100) NOT NULL,
  ticker VARCHAR(10) NOT NULL,
  last_quotation_date timestamp
);

CREATE TABLE bond(
  id INT PRIMARY KEY,
  principal_amount DECIMAL(28,8) NOT NULL,
  maturity_date DATE NOT NULL,
  market_price DECIMAL(28,8) NOT NULL,
  coupon DECIMAL(28,8) NOT NULL,
  market_id INT REFERENCES market(id)
);

CREATE TABLE account_type(
  account_number BIGINT PRIMARY KEY,
  type VARCHAR(100) NOT NULL,
  parent_account_number INT REFERENCES account_type(account_number)
);
CREATE  TABLE  accounting(
  id SERIAL PRIMARY KEY,
  name VARCHAR (100),
  accounting_type VARCHAR(12)
);


CREATE TABLE account(
  id SERIAL PRIMARY KEY,
  account_number BIGINT,
  balance DECIMAL(28,8),
  description VARCHAR(100),
  account_type_account_number INT REFERENCES account_type(account_number),
  accounting_id INT REFERENCES accounting(id)
);

CREATE TABLE bank_account(
  id SERIAL PRIMARY KEY,
  bank_code VARCHAR(45) NOT NULL,
  branch_code VARCHAR(100) NOT NULL,
  account_number VARCHAR(100) NOT NULL,
  ribkey VARCHAR(100) NOT NULL,
  iban VARCHAR(100) NOT NULL,
  is_default BOOLEAN DEFAULT TRUE
);


CREATE TABLE fund_manager(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE fund_custodian(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE party(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  party_type VARCHAR(20) NOT NULL
);

CREATE TABLE account_party(
  party_id INT REFERENCES party(id),
  account_id INT REFERENCES  account(id)
);

CREATE TABLE account_fund_custodian(
  fund_custodian_id INT REFERENCES fund_custodian(id),
  account_id INT REFERENCES  account(id)
);

CREATE TABLE account_fund_manager(
  fund_manager_id INT REFERENCES fund_manager(id),
  account_id INT REFERENCES account(id)
);

CREATE TABLE bank_account_party(
 party_id INT REFERENCES party(id),
 bank_account_id INT REFERENCES  bank_account(id)
);

CREATE TABLE bank_account_fund_custodian(
  fund_custodian_id INT REFERENCES fund_custodian(id),
  bank_account_id INT REFERENCES  bank_account(id)
);

CREATE TABLE bank_account_fund_manager(
  fund_manager_id INT REFERENCES fund_manager(id),
  bank_account_id INT REFERENCES  bank_account(id)
);

CREATE TABLE mutual_fund(
  id INT PRIMARY KEY ,
  fund_manager_id INT REFERENCES fund_manager(id),
  fund_custodian_id INT REFERENCES fund_custodian(id),
  mutual_fund_category VARCHAR(10),
  mutual_fund_type VARCHAR(5) ,
  currency VARCHAR(3),
  economic_zone VARCHAR(5),
  country VARCHAR(2) ,
  quotation_mode VARCHAR(7) ,
  entry_fees DECIMAL(28,8),
  exit_fees DECIMAL(28,8),
  management_fees DECIMAL(28,8),
  benchmark_index DECIMAL(28,8),
  creation_date timestamp,
  number_of_shares BIGINT,
  asset_value DECIMAL(28,8),
  description TEXT,
  value_date timestamp,
  accounting_id INT REFERENCES accounting(id)

);


CREATE TABLE bank_account_mutual_fund(
  bank_account_id INT REFERENCES bank_account(id),
  mutual_fund_id INT REFERENCES  mutual_fund(id)
);


CREATE TABLE mutual_fund_asset_class(
  id SERIAL PRIMARY KEY ,
  mutual_fund_id INT REFERENCES mutual_fund(id),
  asset_class VARCHAR(10)
);


CREATE TABLE stock(
  id INT PRIMARY KEY ,
  benchmark_index DECIMAL(28,8) NOT NULL,
  price DECIMAL(28,8) NOT NULL,
  market_id INT REFERENCES market(id)
);

CREATE TABLE trading_day(
  id SERIAL PRIMARY KEY,
  trading_date DATE NOT NULL
);

CREATE TABLE intraday_security(
  id SERIAL PRIMARY KEY,
  event_time timestamp NOT NULL,
  avg_price DECIMAL(28,8) NOT NULL,
  best_bid_price DECIMAL(28,8) NOT NULL,
  best_bid_volume BIGINT NOT NULL ,
  best_ask_price DECIMAL(28,8) NOT NULL,
  best_ask_volume BIGINT NOT NULL ,
  last_trade_price DECIMAL(28,8) NOT NULL,
  financial_asset_id INT REFERENCES financial_asset(id),
  trading_day_id INT REFERENCES trading_day(id)
);


CREATE TABLE mutual_fund_daily(
  id SERIAL PRIMARY KEY,
  date date NOT NULL,
  asset_value DECIMAL(28,8) NOT NULL,
  gross_price DECIMAL(28,8) NOT NULL,
  net_price DECIMAL(28,8) NOT NULL,
  number_of_shares BIGINT NOT NULL ,
  liquidity_amount DECIMAL(28,8) NOT NULL,
  asset_value_net_change DECIMAL(28,8) NOT NULL,
  asset_value_percent_change DECIMAL(28,8) NOT NULL,
  mutual_fund_id INT REFERENCES mutual_fund(id)
);

CREATE TABLE daily_security(
  id SERIAL PRIMARY KEY,
  dynamic_limit_up DECIMAL(28,8),
  dynamic_limit_down DECIMAL(28,8),
  reference_price DECIMAL(28,8),
  avg_price DECIMAL(28,8),
  avg_price_percent_change DECIMAL(28,8),
  open_price DECIMAL(28,8),
  close_price DECIMAL(28,8),
  close_pric_net_change DECIMAL(28,8),
  close_price_percent_change DECIMAL(28,8),
  preopen_price DECIMAL(28,8),
  preopen_volume BIGINT,
  best_bid_price DECIMAL(28,8),
  best_bid_volume BIGINT,
  best_ask_price DECIMAL(28,8),
  best_ask_volume BIGINT,
  last_trade_time timestamp,
  last_trade_price DECIMAL(28,8),
  last_trade_price_net_change DECIMAL(28,8),
  last_trade_price_percent_change DECIMAL(28,8),
  total_trades BIGINT,
  total_trade_volume BIGINT,
  total_trade_value DECIMAL(28,8),
  financial_asset_id INT REFERENCES financial_asset(id),
  trading_day_id INT REFERENCES trading_day(id)

);

CREATE TABLE occupation(
  code VARCHAR(5) PRIMARY KEY,
  name VARCHAR (40) NOT NULL
);

CREATE TABLE district(
  code VARCHAR(2) PRIMARY KEY,
  name VARCHAR (40) NOT NULL
);

CREATE TABLE client(
  id INT PRIMARY KEY,
  first_name VARCHAR(40) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  company_name VARCHAR (256),
  address VARCHAR(256) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  email VARCHAR(40) NOT NULL,
  fax VARCHAR(256),
  birth_date TIMESTAMP,
  client_code VARCHAR(40) NOT NULL,
  id_card_number VARCHAR(40),
  id_card_type VARCHAR(2) ,
  gender VARCHAR(1),
  country VARCHAR(2),
  client_type VARCHAR(1),
  occupation_code VARCHAR(2) REFERENCES occupation(code),
  district_code VARCHAR(2) REFERENCES  district(code)
);

CREATE TABLE bank_account_client(
  client_id INT REFERENCES client(id),
  bank_account_id INT REFERENCES  bank_account(id)
);

CREATE TABLE account_client(
  client_id INT REFERENCES client(id),
  account_id INT REFERENCES  account(id)
);


CREATE TABLE transaction_type(
  id SERIAL PRIMARY KEY,
  type VARCHAR(256) NOT NULL
);

CREATE TABLE mutual_fund_performance(
  id SERIAL PRIMARY KEY,
  january_first_net_change DECIMAL(28,8),
  january_first_percent_change DECIMAL(28,8),
  a_year_net_change DECIMAL(28,8),
  a_year_percent_change DECIMAL(28,8),
  three_years_net_change DECIMAL(28,8),
  three_years_percent_change DECIMAL(28,8),
  five_years_net_change DECIMAL(28,8),
  five_years_percent_change DECIMAL(28,8),
  update_date timestamp,
  mutual_fund_id INT REFERENCES mutual_fund(id)

);

CREATE TABLE investment(
  id SERIAL PRIMARY KEY,
  number_of_shares BIGINT ,
  number_of_available_shares BIGINT DEFAULT 0 ,
  avg_buying_price DECIMAL(28,8),
  has_collaterals BOOLEAN,
  mutual_fund_id INT REFERENCES mutual_fund(id),
  client_id INT REFERENCES client(id)
);

CREATE TABLE tiers(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE collateral(
  id SERIAL PRIMARY KEY,
  number_of_shares BIGINT NOT NULL ,
  avg_share_price DECIMAL(28,8) NOT NULL ,
  tiers VARCHAR(25) NOT NULL,
  returned BOOLEAN DEFAULT FALSE ,
  investment_id INT REFERENCES investment(id)
);

CREATE TABLE collateral_history(
  id SERIAL PRIMARY KEY,
  date timestamp NOT NULL ,
  number_of_shares BIGINT NOT NULL ,
  share_price DECIMAL(28,8) NOT NULL ,
  collateral_mouvement_type VARCHAR(6),
  collateral_id INT REFERENCES collateral(id) ,
  tiers VARCHAR(25) NOT NULL
);


CREATE TABLE investment_history(
  id BIGSERIAL PRIMARY KEY,
  number_of_shares BIGINT NOT NULL ,
  price DECIMAL(28,8) NOT NULL ,
  date timestamp NOT NULL ,
  investment_movement_type VARCHAR(7),
  investment_id INT REFERENCES investment(id)
);

CREATE TABLE period(
  id SERIAL PRIMARY KEY,
  start_date TIMESTAMP NOT NULL,
  end_date TIMESTAMP NOT NULL ,
  created_date TIMESTAMP NOT NULL,
  is_closed BOOLEAN
);
CREATE TABLE transaction(
  id SERIAL PRIMARY KEY,
  description VARCHAR(100) NOT NULL ,
  transaction_date timestamp NOT NULL,
  created_date timestamp NOT NULL,
  transaction_type VARCHAR(25),
  period_id INT REFERENCES period(id)
);

CREATE TABLE operation(
  id SERIAL PRIMARY KEY,
  amount DECIMAL(28,8) NOT NULL ,
  previous_balance DECIMAL(28,8) NOT NULL,
  description TEXT,
  operation_date timestamp NOT NULL,
  final_balance DECIMAL(28,8) NOT NULL,
  account_id INT REFERENCES account(id),
  transaction_id INT REFERENCES transaction(id),
  operation_type VARCHAR(6)
);

CREATE TABLE mutual_fund_financial_asset(
  id SERIAL PRIMARY KEY,
  quantity INT NOT NULL,
  avg_buy_amount DECIMAL(28,8) NOT NULL,
  asset_class VARCHAR(10) NOT NULL,
  current_price DECIMAL(28,8),
  mutual_fund_id INT REFERENCES mutual_fund(id),
  financial_asset_id INT REFERENCES financial_asset(id)

);

CREATE TABLE mutual_fund_asset_history(
  id SERIAL PRIMARY KEY,
  quantity INT NOT NULL,
  amount DECIMAL(28,8) NOT NULL,
  operation_date timestamp NOT NULL,
  mutual_fund_id INT REFERENCES mutual_fund(id),
  financial_asset_id INT REFERENCES financial_asset(id),
  party_id INT REFERENCES party(id),
  commission DECIMAL(28,8) NOT NULL

);


--changeset iris-docs:2 dbms:postgresql

-- Initialising sequences to avoid collusion with dummy sample DATA

SELECT setval('financial_asset_id_seq', 10000);
SELECT setval('bank_account_id_seq', 10000);
SELECT setval('market_id_seq', 10000);
SELECT setval('fund_manager_id_seq', 10000);
SELECT setval('fund_custodian_id_seq', 10000);
SELECT setval('tiers_id_seq', 10000);
SELECT setval('iris_user_id_seq', 10000);
SELECT setval('accounting_id_seq', 10000);
SELECT setval('investment_id_seq', 10000);
SELECT setval('investment_history_id_seq', 10000);
ALTER SEQUENCE investment_history_id_seq OWNED BY investment_history.id;