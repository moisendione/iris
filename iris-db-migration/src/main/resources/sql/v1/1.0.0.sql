--liquibase formatted sql

--changeset iris-docs:5 dbms:postgresql
ALTER TABLE mutual_fund_daily RENAME COLUMN date TO record_date;

--changeset iris-docs:5 dbms:h2
ALTER TABLE mutual_fund_daily ALTER COLUMN  date RENAME TO record_date;

--changeset iris-docs:6
ALTER TABLE mutual_fund_daily ALTER COLUMN record_date DROP NOT NULL;
ALTER TABLE mutual_fund_daily ALTER COLUMN asset_value DROP NOT NULL;
ALTER TABLE mutual_fund_daily ALTER COLUMN gross_price DROP NOT NULL;
ALTER TABLE mutual_fund_daily ALTER COLUMN net_price DROP NOT NULL;
ALTER TABLE mutual_fund_daily ALTER COLUMN number_of_shares DROP NOT NULL;
ALTER TABLE mutual_fund_daily ALTER COLUMN liquidity_amount DROP NOT NULL;
ALTER TABLE mutual_fund_daily ALTER COLUMN asset_value_net_change DROP NOT NULL;
ALTER TABLE mutual_fund_daily ALTER COLUMN asset_value_percent_change DROP NOT NULL;


--changeset iris-docs:7
CREATE TABLE portfolio (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    creation_date DATE
);

CREATE TABLE portfolio_detail(
  id SERIAL PRIMARY KEY,
  quantity INT NOT NULL,
  creation_date DATE,
  avg_buy_price DECIMAL(28,8) NOT NULL,
  asset_class VARCHAR(10) NOT NULL,
  current_price DECIMAL(28,8),
  portfolio_id INT REFERENCES portfolio(id),
  financial_asset_id INT REFERENCES financial_asset(id)

);

CREATE TABLE mutual_fund_portfolio (
    mutual_fund_id INT REFERENCES mutual_fund(id),
    portfolio_id INT REFERENCES portfolio(id)
);

CREATE TABLE client_portfolio (
    client_id INT REFERENCES client(id),
    portfolio_id INT REFERENCES portfolio(id)
);


--changeset iris-docs:8
CREATE TABLE "order"(
  id SERIAL PRIMARY KEY,
  number VARCHAR(20),
  order_sense VARCHAR(40),
  order_type VARCHAR(60),
  asset_class VARCHAR(40),
  order_status VARCHAR(40),
  order_validity VARCHAR(40),
  order_parameter VARCHAR(40),
  quantity INT,
  limit_price DECIMAL(28,8),
  deadline DATE,
  fulfilment_date DATE,
  creation_date TIMESTAMP,
  financial_asset_id INT REFERENCES financial_asset(id),
  client_id INT REFERENCES client(id)
);

CREATE TABLE order_history(
  id SERIAL PRIMARY KEY,
  status_name VARCHAR(60),
  record_date Date,
  order_id INT REFERENCES "order"(id)
);


--changeset iris-docs:9
CREATE TABLE trading_account (
    id SERIAL PRIMARY KEY,
    account_number VARCHAR(50),
    account_description VARCHAR (255),
    portfolio_id INT REFERENCES portfolio(id)
);

DROP TABLE client_portfolio;

ALTER TABLE portfolio DROP COLUMN name;


--changeset iris-docs:10
ALTER TABLE trading_account ADD client_id INT;
ALTER TABLE trading_account ADD FOREIGN KEY (client_id) REFERENCES client(id);


--changeset iris-docs:11 dbms:postgresql
ALTER TABLE daily_security RENAME COLUMN close_pric_net_change  TO close_price_net_change;


--changeset iris-docs:11 dbms:h2
ALTER TABLE daily_security ALTER COLUMN close_pric_net_change RENAME TO close_price_net_change;


--changeset iris-docs:12
ALTER TABLE client add subscription_date DATE;


--changeset iris-docs:13
ALTER TABLE iris_user add client_id INTEGER;


--changeset iris-docs:15
CREATE TABLE legal_person(
  id INT PRIMARY KEY,
  company_name VARCHAR (256),
  activity_sector VARCHAR(256),
  company_address VARCHAR(256),
  amount_of_turnover VARCHAR(256),
  investment_objective VARCHAR(20),
  investment_knowledge VARCHAR(20),
  first_contact VARCHAR(50)
);


--changeset iris-docs:16
CREATE TABLE natural_person(
  id INT PRIMARY KEY,
  company_name VARCHAR (256),
  monthly_net_income VARCHAR(256),
  income_source VARCHAR(256),
  investment_objective VARCHAR(20),
  investment_knowledge VARCHAR(20),
  first_contact VARCHAR(50)
);


--changeset iris-docs:17
ALTER TABLE client ADD COLUMN birth_place VARCHAR(256);
ALTER TABLE client ADD COLUMN position VARCHAR(256);
ALTER TABLE client ADD COLUMN id_card_delivered_by VARCHAR(256);
ALTER TABLE client ADD COLUMN id_card_expiration_date DATE;
ALTER TABLE client ADD COLUMN have_bank_account BOOLEAN;
ALTER TABLE client ADD COLUMN bank_name VARCHAR(256);
ALTER TABLE client ADD COLUMN account_number VARCHAR(256);
ALTER TABLE client DROP COLUMN company_name;

--changeset iris-docs:18 dbms:postgresql
ALTER TABLE client RENAME COLUMN gender  TO title;

--changeset iris-docs:18 dbms:h2
ALTER TABLE client ALTER COLUMN  gender RENAME TO title;

--changeset iris-docs:19
ALTER TABLE client ALTER COLUMN title TYPE varchar(10);
ALTER TABLE client ADD COLUMN person_type VARCHAR(50);


--changeset iris-docs:20
CREATE SEQUENCE client_id_seq;
ALTER TABLE client ALTER COLUMN id SET DEFAULT nextval('client_id_seq');
ALTER TABLE client ALTER COLUMN id SET NOT NULL;

--changeset iris-docs:21 dbms:postgresql
SELECT setval('client_id_seq', 105);

--changeset iris-docs:22
ALTER TABLE client ALTER COLUMN occupation_code TYPE varchar(3);

--changeset iris-docs:23
ALTER TABLE legal_person DROP COLUMN company_name;
ALTER TABLE legal_person DROP COLUMN investment_objective;
ALTER TABLE legal_person DROP COLUMN investment_knowledge;
ALTER TABLE legal_person DROP COLUMN first_contact;
ALTER TABLE natural_person DROP COLUMN company_name;
ALTER TABLE natural_person DROP COLUMN investment_objective;
ALTER TABLE natural_person DROP COLUMN investment_knowledge;
ALTER TABLE natural_person DROP COLUMN first_contact;
ALTER TABLE client ADD COLUMN company_name VARCHAR(255);
ALTER TABLE client ADD COLUMN investment_objective VARCHAR(255);
ALTER TABLE client ADD COLUMN investment_knowledge VARCHAR(255);
ALTER TABLE client ADD COLUMN first_contact VARCHAR(255);

--changeset iris-docs:24

CREATE TABLE portfolio_history(
  id SERIAL PRIMARY KEY,
  price DECIMAL(28,8) NOT NULL,
  quantity INT NOT NULL,
  added_value DECIMAL(28,8) NOT NULL,
  history_date DATE,
  order_id INT REFERENCES "order"(id)
);

--changeset iris-docs:25
CREATE TABLE profitability(
  id SERIAL PRIMARY KEY,
  amount DECIMAL(28,8) NOT NULL,
  type VARCHAR(30),
  profitability_date DATE,
  description VARCHAR(256),
  portfolio_detail_id INT REFERENCES portfolio_detail(id)
);
--changeset iris-docs:26
ALTER TABLE trading_account DROP COLUMN account_number;
ALTER TABLE trading_account ADD account_id INT;
ALTER TABLE trading_account ADD FOREIGN KEY (account_id) REFERENCES account(id);

--changeset iris-docs:27 dbms:postgresql
SELECT setval('account_id_seq', 10000);

--changeset iris-docs:28
CREATE TABLE portfolio_performance(
  id SERIAL PRIMARY KEY,
  portfolio_asset_value DECIMAL(28,8) NOT NULL,
  portfolio_liquidity_value DECIMAL(28,8) NOT NULL,
  performance_date DATE,
  portfolio_id INT REFERENCES portfolio(id)
);


--changeset iris-docs:29 dbms:postgresql
SELECT setval('trading_day_id_seq', 10000);

--changeset iris-docs:30
ALTER TABLE bond ALTER COLUMN market_price DROP NOT NULL;
ALTER TABLE stock ALTER COLUMN benchmark_index DROP NOT NULL;
ALTER TABLE stock ALTER COLUMN price DROP NOT NULL;

--changeset iris-docs:31
ALTER TABLE trading_account ADD account_number VARCHAR(50);

--changeset iris-docs:32
ALTER TABLE portfolio_history ADD portfolio_detail_id INT NULL;

--changeset iris-docs:33
ALTER TABLE trading_account ADD creation_date DATE;

--changeset iris-docs:34
ALTER TABLE trading_account ADD status VARCHAR(50);

--changeset iris-docs:35
ALTER TABLE portfolio_performance ADD return_on_investment DECIMAL;
ALTER TABLE portfolio_performance ADD rank INT;
ALTER TABLE portfolio_performance ADD capital_gain DECIMAL(28,8);
ALTER TABLE portfolio_performance ADD latent_capital_gain DECIMAL(28,8);

--changeset iris-docs:36
ALTER TABLE "order" ADD trading_account_id INT;
ALTER TABLE "order" ADD min_quantity INT;
ALTER TABLE "order" ADD FOREIGN KEY (trading_account_id) REFERENCES trading_account(id);
--changeset iris-docs:37 dbms:postgresql
UPDATE accounting SET name='Comptablité bourse', accounting_type='TRADING' WHERE id=1;

INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (103001, 0.00000000, 'Capital FCP', 1030, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (121000, 0.00000000, 'Report à nouveau créditeur', 121, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (129100, 0.00000000, 'Perte nette à reporter', 1291, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (129200, 0.00000000, 'Perte - Amortissements réputés différés', 1292, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (130100, 0.00000000, 'Résultat en instance d''affectation : Bénéfice', 1301, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (130900, 0.00000000, 'Résultat en instance d''affection : Perte', 130, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (162000, 0.00000000, 'Emprunts et dettes auprès des établissements de crédit', 162, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (271000, 0.00000000, 'Titres nantis', 271, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (300001, 0.00000000, 'Action', 30, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (300002, 0.00000000, 'Obligation', 30, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (402100, 0.00000000, 'Fournisseurs, effets à payer', 4021, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (461000, 0.00000000, 'Associés, opérations sur capital', 461, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (502100, 0.00000000, 'Actions propres', 5021, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (632400, 0.00000000, 'Honoraires', 6324, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (632410, 0.00000000, 'Frais Commission d''intermédiation', 6324, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (632420, 0.00000000, 'Frais Commission de gestion', 6324, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (632430, 0.00000000, 'Frais droits de garde', 6324, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (632440, 0.00000000, 'Frais commissariat aux compte', 6324, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (632450, 0.00000000, 'Frais commission de nantissement', 6324, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (671200, 0.00000000, 'Frais d''intérêts', 6712, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (706100, 0.00000000, 'Services vendus dans la région', 7061, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (706110, 0.00000000, 'Intérêts sur placements', 7061, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (706120, 0.00000000, 'Plus value sur cession', 7061, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (706130, 0.00000000, 'Commission de transfert', 7061, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (706140, 0.00000000, 'Commission sur parts du FCP', 7061, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (706150, 0.00000000, 'Commission de sortie au FCP', 7061, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (706160, 0.00000000, 'Commission de nantissement', 7061, 1);
INSERT INTO "account"(account_number, balance, description, account_type_account_number, accounting_id) VALUES (706170, 0.00000000, 'Commission de Prise ferme', 7061, 1);

--changeset iris-docs:38 dbms:postgresql
UPDATE account SET balance=0 WHERE account_number=521000 AND accounting_id=1;

--changeset iris-docs:39
CREATE TABLE account_trading_account(
    trading_account_id INT REFERENCES trading_account (id),
    account_id INT REFERENCES account (id)
);

--changeset iris-docs:40
ALTER TABLE portfolio_performance ADD ratio_average_commission DECIMAL;
ALTER TABLE portfolio_performance ADD ratio_total_commission_average DECIMAL;

--changeset iris-docs:41
ALTER TABLE portfolio_performance ADD reserved_liquidity DECIMAL(28,8);
ALTER TABLE portfolio_performance ADD dividend DECIMAL(28,8);
ALTER TABLE portfolio_performance ADD interest DECIMAL(28,8);
ALTER TABLE portfolio_performance ADD commission DECIMAL(28,8);
ALTER TABLE portfolio_performance ADD available_liquidity DECIMAL(28,8);

--changeset iris-docs:42
ALTER TABLE "order" ADD declared_quantity INT;
ALTER TABLE "order" ADD market_id INT;
ALTER TABLE "order" ADD executed_price INT;

--changeset iris-docs:43 dbms:h2
CREATE SEQUENCE portfolio_detail_id_seq;

--changeset iris-docs:44
ALTER TABLE portfolio_detail ALTER COLUMN id SET DEFAULT nextval('portfolio_detail_id_seq');

--changeset iris-docs:45
ALTER TABLE account ADD account_category VARCHAR(3);

--changeset iris-docs:46
ALTER TABLE trading_account DROP COLUMN account_id;

--changeset iris-docs:47 dbms:h2
CREATE SEQUENCE order_id_seq;

--changeset iris-docs:48
ALTER TABLE "order" ALTER COLUMN id SET DEFAULT nextval('order_id_seq');

--changeset iris-docs:49
UPDATE account SET account_category='GEN' WHERE accounting_id=1;

--changeset iris-docs:50 dbms:postgresql
ALTER TABLE portfolio_performance RENAME COLUMN commission TO paid_commission;

--changeset iris-docs:51 dbms:h2
ALTER TABLE portfolio_performance ALTER COLUMN commission RENAME TO paid_commission;

--changeset iris-docs:52
CREATE UNIQUE INDEX portfolio_performance_date_portfolio_id_uindex ON portfolio_performance (performance_date,portfolio_id);

--changeset iris-docs:53
ALTER TABLE portfolio_performance ALTER COLUMN portfolio_liquidity_value DROP NOT NULL;

--changeset iris-docs:54
ALTER TABLE portfolio_performance ADD investment NUMERIC(28,8) DEFAULT 0 NULL;

--changeset iris-docs:55
ALTER TABLE portfolio_history ADD tax float(3) DEFAULT 0 NULL;
ALTER TABLE portfolio_history ADD sgi_commission_ratio float(3) DEFAULT 0 NULL;
ALTER TABLE portfolio_history ADD dcbr_commission_ratio float(3) DEFAULT 0 NULL;
ALTER TABLE portfolio_history ADD brvm_commission_ratio float(3) DEFAULT 0 NULL;

--changeset iris-docs:56
CREATE TABLE asset_transfert_history(
  id SERIAL PRIMARY KEY,
  history_date DATE,
  financial_asset_id INT REFERENCES financial_asset(id),
  trading_account_id INT REFERENCES trading_account(id),
  description VARCHAR(255),
  asset_transfert_sense VARCHAR(40),
  quantity INT,
  asset_class VARCHAR(40)
);


--changeset iris-docs:57
CREATE TABLE settings(
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(50),
    address VARCHAR(100),
    vat_rate DECIMAL,
    custody_fees_rate DECIMAL,
    sell_commission_rate DECIMAL,
    dividend_customer_rate DECIMAL,
    interest_rate DECIMAL,
    dividend_issuer_rate DECIMAL,
    buy_commission_rate DECIMAL,
    logo VARCHAR(100),
    registration_number VARCHAR(100),
    description VARCHAR(255),
    phone_number VARCHAR(30),
    email VARCHAR(50),
    website VARCHAR(25),
    currency VARCHAR(4),
    country VARCHAR(3),
    economic_zone VARCHAR(10)
);

--changeset iris-docs:58
ALTER TABLE settings ADD brvm_order_commission_rate DECIMAL;
ALTER TABLE settings ADD dcbr_order_commission_rate DECIMAL;

--changeset iris-docs:59
CREATE TABLE asset_collateral_history(
  id SERIAL PRIMARY KEY,
  history_date DATE,
  financial_asset_id INT REFERENCES financial_asset(id),
  trading_account_id INT REFERENCES trading_account(id),
  description VARCHAR(255),
  tiers VARCHAR(40),
  quantity INT,
  asset_class VARCHAR(40)
);

--changeset iris-docs:60
ALTER TABLE iris_user ADD COLUMN is_active BOOLEAN DEFAULT TRUE;
ALTER TABLE iris_user ADD COLUMN creation_date DATE;
ALTER TABLE iris_user ADD COLUMN last_modification_date DATE;

--changeset iris-docs:61
ALTER TABLE asset_transfert_history ADD COLUMN commission_sgi DECIMAL(28,8);
ALTER TABLE asset_transfert_history ADD COLUMN commission_dcbr DECIMAL(28,8);
ALTER TABLE asset_transfert_history ADD COLUMN vat DECIMAL(28,8);
ALTER TABLE asset_transfert_history ADD COLUMN all_taxes_included DECIMAL(28,8);

ALTER TABLE asset_collateral_history ADD COLUMN commission_sgi DECIMAL(28,8);
ALTER TABLE asset_collateral_history ADD COLUMN commission_dcbr DECIMAL(28,8);
ALTER TABLE asset_collateral_history ADD COLUMN vat DECIMAL(28,8);
ALTER TABLE asset_collateral_history ADD COLUMN all_taxes_included DECIMAL(28,8);

--changeset iris-docs:62
ALTER TABLE settings ADD asset_transfert_commission_sgi DECIMAL(28,8);
ALTER TABLE settings ADD asset_transfert_commission_dcbr DECIMAL(28,8);
ALTER TABLE settings ADD asset_collateral_commission_sgi DECIMAL(28,8);
ALTER TABLE settings ADD asset_collateral_commission_dcbr DECIMAL(28,8);

--changeset iris-docs:63
ALTER TABLE asset_collateral_history ADD collateral_status VARCHAR(40);

--changeset iris-docs:64
ALTER TABLE operation ADD COLUMN cancellable BOOLEAN DEFAULT TRUE;

--changeset iris-docs:65
ALTER TABLE asset_transfert_history ADD transfert_status VARCHAR(40);

--changeset iris-docs:66 dbms:postgresql
ALTER TABLE "order" RENAME COLUMN order_sense TO order_direction;

--changeset iris-docs:67 dbms:h2
ALTER TABLE "order" ALTER COLUMN order_sense RENAME TO order_direction;

--changeset iris-docs:68
DELETE FROM bank_account_client
WHERE client_id IN(SELECT id FROM client WHERE id_card_number IN ('98VHNRE','79IJHGF'));

DELETE FROM collateral
WHERE investment_id IN (SELECT i.id as id FROM investment i
  INNER JOIN client c ON c.id = i.client_id
WHERE i.client_id IN(SELECT id FROM client WHERE id_card_number IN ('98VHNRE','79IJHGF'))
);

DELETE FROM investment_history
WHERE investment_id IN (SELECT i.id as id FROM investment i
  INNER JOIN client c ON c.id = i.client_id
WHERE i.client_id IN(SELECT id FROM client WHERE id_card_number IN ('98VHNRE','79IJHGF'))
);

DELETE FROM investment
WHERE client_id IN(SELECT id FROM client WHERE id_card_number IN ('98VHNRE','79IJHGF'));

DELETE FROM client WHERE id_card_number IN ('98VHNRE','79IJHGF');

--changeset iris-docs:69 dbms:postgresql
ALTER TABLE iris_user ALTER COLUMN password TYPE VARCHAR(255);
UPDATE iris_user SET password='$2a$10$x4z8vZSLJ5b8s8xUEN59Fe9w/sWnvBSdCJiygWqM7ZhocJLuVb/GS' WHERE id=2;
UPDATE iris_user SET password='$2a$10$xiwIx02Z2X67IHgm/vCbgu9Ykm8VMWioeYQw376SXJOrPpzhE.7ki' WHERE id=4;

--changeset iris-docs:70 dbms:h2
ALTER TABLE iris_user ALTER COLUMN password TYPE VARCHAR(255);


--changeset iris-docs:71
ALTER TABLE client ADD intermediation_commission DECIMAL;
ALTER TABLE client ADD custody_commission DECIMAL;

--changeset iris-docs:72
ALTER TABLE bond ADD COLUMN transmitter VARCHAR(256);
ALTER TABLE bond ADD COLUMN loan_duration INT;
ALTER TABLE bond ADD COLUMN loan_duration_period VARCHAR(40);
ALTER TABLE bond ADD COLUMN enjoyment_date DATE;
ALTER TABLE bond ADD COLUMN grace_period INT;
ALTER TABLE bond ADD COLUMN grace_period_bond VARCHAR(40);
ALTER TABLE bond ADD COLUMN taxation_application BOOLEAN;
ALTER TABLE bond ADD COLUMN repayment_terms VARCHAR(40);

--changeset iris-docs:73
CREATE TABLE user_actions_log(
  id SERIAL PRIMARY KEY,
  log_action VARCHAR(30) NOT NULL,
  log_entity VARCHAR(30) NOT NULL,
  description VARCHAR(255),
  creation_date TIMESTAMP,
  iris_user_id INT REFERENCES iris_user(id)
  );

--changeset iris-docs:74
ALTER TABLE market ADD COLUMN dcbr_commission DECIMAL;
ALTER TABLE market ADD COLUMN trade_commission DECIMAL;
ALTER TABLE market ADD COLUMN currency VARCHAR(20);

--changeset iris-docs:75
CREATE TABLE mutual_fund_market(
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
  market_id INT REFERENCES market(id),
  accounting_id INT REFERENCES accounting(id)
);

--changeset iris-docs:76
CREATE TABLE market_mutual_fund_asset_class(
  id SERIAL PRIMARY KEY ,
  mutual_fund_id INT REFERENCES mutual_fund_market(id),
  asset_class VARCHAR(10)
);

--changeset iris-docs:77
ALTER TABLE iris_user ADD COLUMN first_name VARCHAR(60);
ALTER TABLE iris_user ADD COLUMN last_name VARCHAR(60);

--changeset iris-docs:78
CREATE TABLE account_financial_asset(
    financial_asset_id INT REFERENCES financial_asset (id),
    account_id INT REFERENCES account (id),
    type VARCHAR(40)
);
--changeset iris-docs:79
CREATE TABLE portfolio_history_operation(
  portfolio_history_id INT REFERENCES portfolio_history(id),
  operation_id INT REFERENCES operation(id)
);

--changeset iris-docs:80
CREATE TABLE transaction_financial_asset(
    financial_asset_id INT REFERENCES financial_asset (id),
    transaction_id INT REFERENCES transaction (id),
    type VARCHAR(40),
    dividend_per_stock DECIMAL(28,8),
    event_date DATE,
    input_value_conversion INT,
    output_value_conversion INT,
    distributed BOOLEAN
);


--changeset iris-docs:81
CREATE TABLE transmitter (
  id INT PRIMARY KEY ,
  transmitter_code VARCHAR(40) ,
  description VARCHAR (256),
  address VARCHAR(256) ,
  phone_number VARCHAR(20) ,
  email VARCHAR(40) ,
  fax VARCHAR(256),
  country VARCHAR(2)
);

--changeset iris-docs:82 dbms:postgresql
CREATE SEQUENCE transmitter_id_seq;
ALTER TABLE transmitter ALTER COLUMN id SET DEFAULT nextval('transmitter_id_seq');

--changeset iris-docs:83
CREATE TABLE treasury_notes_market(
  id INT PRIMARY KEY ,
  reference VARCHAR(255),
  emission_type VARCHAR(100),
  deposit_location VARCHAR(100),
  deposit_date TIMESTAMP ,
  total_amount DECIMAL (28,8),
  term INT ,
  value_date TIMESTAMP ,
  dead_line TIMESTAMP ,
  interest_rate_type VARCHAR(10) ,
  interest_rate DECIMAL(28,8) ,
  unit_value DECIMAL(28,8) ,
  market_id INT REFERENCES market(id),
  transmitter_id INT REFERENCES transmitter(id)
);

--changeset iris-docs:84 dbms:postgresql
CREATE SEQUENCE treasury_notes_market_id_seq;
ALTER TABLE treasury_notes_market ALTER COLUMN id SET DEFAULT nextval('treasury_notes_market_id_seq');

--changeset iris-docs:85
INSERT INTO district (code, name) VALUES ('11', 'Default');

--changeset iris-docs:86 dbms:postgresql
ALTER TABLE financial_asset ALTER COLUMN isin_code DROP NOT NULL;
ALTER TABLE financial_asset ALTER COLUMN last_quotation_date DROP NOT NULL;
ALTER TABLE financial_asset ALTER COLUMN ticker DROP NOT NULL;

--changeset iris-docs:87
ALTER TABLE financial_asset ADD asset_class VARCHAR(10) NULL;

--changeset iris-docs:88
ALTER TABLE transaction_financial_asset ADD deposit_amount DECIMAL(28,8);

--changeset iris-docs:89
ALTER TABLE transaction_financial_asset ADD category VARCHAR(40);
ALTER TABLE transaction_financial_asset ADD deposit_transaction_id INT;

--changeset iris-docs:90
ALTER TABLE transaction_financial_asset ADD nominal DECIMAL(28,8);

--changeset iris-docs:91 dbms:postgresql
ALTER TABLE mutual_fund_market ADD transmitter_id INT REFERENCES transmitter(id);

--changeset iris-docs:92
ALTER TABLE bond ADD activated BOOLEAN;

--changeset iris-docs:93
ALTER TABLE transaction_financial_asset ADD quantity INT;
ALTER TABLE transaction_financial_asset ADD trading_account_id INT;

--changeset iris-docs:94
CREATE TABLE treasury_assimilable_market(
  id INT PRIMARY KEY ,
  reference VARCHAR(255),
  isin_code VARCHAR(100),
  emission_type VARCHAR(100),
  deposit_location VARCHAR(100),
  deposit_date TIMESTAMP ,
  total_amount DECIMAL (28,8),
  term INT ,
  value_date TIMESTAMP ,
  delayed INT ,
  price DECIMAL(28,8) ,
  dead_line TIMESTAMP ,
  interest_rate_type VARCHAR(10) ,
  interest_rate DECIMAL(28,8) ,
  unit_value DECIMAL(28,8) ,
  market_id INT REFERENCES market(id),
  transmitter_id INT REFERENCES transmitter(id)
);

--changeset iris-docs:95 dbms:postgresql
CREATE SEQUENCE treasury_assimilable_market_id_seq;
ALTER TABLE treasury_assimilable_market ALTER COLUMN id SET DEFAULT nextval('treasury_assimilable_market_id_seq');

--changeset iris-docs:96
ALTER TABLE transaction_financial_asset ADD asset_transfert_sense VARCHAR(40);
ALTER TABLE transaction_financial_asset ADD tiers VARCHAR(255);
ALTER TABLE transaction_financial_asset ADD movement_date DATE;

--changeset iris-docs:97
ALTER TABLE transaction_financial_asset ADD end_collateral_date DATE;


--changeset iris-docs:98 dbms:postgresql
ALTER TABLE bond DROP COLUMN transmitter;
ALTER TABLE bond ADD transmitter_id INT REFERENCES transmitter(id);

--changeset iris-docs:99 dbms:postgresql
ALTER TABLE stock ADD transmitter_id INT REFERENCES transmitter(id);

--changeset iris-docs:100 dbms:h2
ALTER TABLE bond DROP COLUMN transmitter;
ALTER TABLE bond ADD COLUMN transmitter_id INT ;
ALTER TABLE stock ADD COLUMN transmitter_id INT ;

--changeset iris-docs:101
ALTER TABLE transaction_financial_asset ADD asset_value DECIMAL(28,8);
ALTER TABLE transaction_financial_asset ADD issue_price DECIMAL(28,8);
ALTER TABLE transaction_financial_asset ADD asset_class VARCHAR(40);

--changeset iris-docs:102
ALTER TABLE transaction_financial_asset ADD quantity_in_portfolio INT;

--changeset iris-docs:103
CREATE TABLE subscription_rights(
  id SERIAL PRIMARY KEY,
  quantity_to_receive INT NOT NULL,
  quantity_in_portfolio INT NOT NULL,
  creation_date DATE,
  maturity_date DATE,
  asset_value DECIMAL(28,8) NOT NULL,
  issue_price DECIMAL(28,8) NOT NULL,
  asset_class VARCHAR(10) NOT NULL,
  portfolio_id INT REFERENCES portfolio(id),
  financial_asset_id INT REFERENCES financial_asset(id)
);

--changeset iris-docs:104
ALTER TABLE transaction_financial_asset ADD subscription_rights_id INT;

--changeset iris-docs:105
ALTER TABLE subscription_rights ADD dps_price DECIMAL ;
ALTER TABLE subscription_rights ADD right_bonus DECIMAL ;

--changeset iris-docs:106
ALTER TABLE transaction_financial_asset ADD status_collateral VARCHAR(40);

--changeset iris-docs:107
ALTER TABLE transaction_financial_asset ADD creation_date DATE;
ALTER TABLE transaction_financial_asset ADD dps_price DECIMAL ;
ALTER TABLE transaction_financial_asset ADD right_bonus DECIMAL ;
ALTER TABLE subscription_rights ADD start_date DATE ;
ALTER TABLE subscription_rights ADD right_quantity INT ;

--changeset iris-docs:108
ALTER table transaction_financial_asset RENAME TO security_transaction;
DROP TABLE IF EXISTS account_financial_asset CASCADE;

--changeset iris-docs:109
ALTER TABLE operation ADD value_date DATE;


--changeset iris-docs:110
ALTER TABLE portfolio_history ADD quantity_in_portfolio INT ;

--changeset iris-docs:111
ALTER TABLE subscription_rights ADD is_radiated BOOLEAN DEFAULT FALSE ;
ALTER TABLE subscription_rights ADD is_used BOOLEAN DEFAULT FALSE ;

--changeset iris-docs:112
ALTER TABLE security_transaction ADD transaction_type VARCHAR(20);
--changeset iris-docs:113
ALTER TABLE user_profile ALTER COLUMN user_profile_type_id TYPE VARCHAR(20);
