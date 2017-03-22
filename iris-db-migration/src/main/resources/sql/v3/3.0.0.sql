--liquibase formatted sql

--changeset iris-docs:116
ALTER TABLE subscription_rights DROP COLUMN is_radiated;
ALTER TABLE subscription_rights DROP COLUMN dps_price;
ALTER TABLE subscription_rights DROP COLUMN quantity_to_receive;
ALTER TABLE subscription_rights ADD is_canceled BOOLEAN DEFAULT FALSE ;

CREATE TABLE subscription_rights_history(
  id SERIAL PRIMARY KEY,
  new_financial_asset_quantity INT NOT NULL,
  rights_quantity INT NOT NULL,
  dps_price DECIMAL,
  creation_date DATE,
  description VARCHAR(255),
  rights_movement VARCHAR(40),
  subscription_rights_id INT REFERENCES subscription_rights(id)
);

--changeset iris-docs:117
DROP TABLE security_transaction;
CREATE TABLE security_transaction(
  id SERIAL PRIMARY KEY,
  financial_asset_id INT REFERENCES financial_asset (id),
  transaction_id INT REFERENCES transaction (id),
  type VARCHAR(40),
  dividend_per_stock DECIMAL(28,8),
  event_date DATE,
  input_value_conversion INT,
  output_value_conversion INT,
  distributed BOOLEAN,
  transaction_type VARCHAR(20),
  deposit_amount DECIMAL(28,8),
  category VARCHAR(40),
  deposit_transaction_id INT,
  nominal DECIMAL(28,8),
  quantity INT,
  trading_account_id INT,
  asset_transfert_sense VARCHAR(40),
  tiers VARCHAR(255),
  end_collateral_date DATE,
  asset_value DECIMAL(28,8),
  issue_price DECIMAL(28,8),
  asset_class VARCHAR(40),
  quantity_in_portfolio INT,
  status_collateral VARCHAR(40),
  creation_date DATE,
  dps_price DECIMAL,
  right_bonus DECIMAL
);
--changeset iris-docs:118 dbms:postgresql
ALTER SEQUENCE security_transaction_id_seq RESTART WITH 1;
ALTER TABLE security_transaction ALTER COLUMN id SET DEFAULT nextval('security_transaction_id_seq');

--changeset iris-docs:119 dbms:postgresql
ALTER TABLE subscription_rights ADD security_transaction_id INT REFERENCES security_transaction(id);

--changeset iris-docs:120
ALTER TABLE security_transaction ADD movement_date DATE;

--changeset iris-docs:121
ALTER TABLE trading_account ADD old_account_number VARCHAR(20);

--changeset iris-docs:122
ALTER TABLE "order" ADD market_type VARCHAR(40);

--changeset iris-docs:123
UPDATE settings SET asset_transfert_commission_sgi=0.2, asset_transfert_commission_dcbr=0.1, asset_collateral_commission_sgi=0.2, asset_collateral_commission_dcbr=0.1;

--changeset iris-docs:124
ALTER TABLE iris_user ADD language VARCHAR(8);

--changeset iris-docs:125
ALTER TABLE settings ADD language VARCHAR(8) DEFAULT 'fr';

--changeset iris-doc:126
ALTER TABLE portfolio_performance DROP portfolio_liquidity_value;
ALTER TABLE portfolio_performance ADD is_history BOOLEAN DEFAULT FALSE  NULL;

--changeset iris-doc:127
CREATE TABLE portfolio_detail_history_assets(
    id SERIAL PRIMARY KEY,
    portfolio_id INT,
    history_date DATE,
    financial_asset_id INT,
    quantity INT,
    asset_class VARCHAR(20),
    principal_amount DECIMAL,
    price INT,
    reference_price DECIMAL
);
CREATE UNIQUE INDEX portfolio_history_assets_date_portfolio_id_uindex
ON portfolio_detail_history_assets (history_date,financial_asset_id,portfolio_id);

--changeset iris-doc:128
create table oauth_client_details (
  client_id VARCHAR(256) PRIMARY KEY,
  resource_ids VARCHAR(256),
  client_secret VARCHAR(256),
  scope VARCHAR(256),
  authorized_grant_types VARCHAR(256),
  web_server_redirect_uri VARCHAR(256),
  authorities VARCHAR(256),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR(4096),
  autoapprove VARCHAR(256)
);

create table oauth_client_token (
  token_id VARCHAR(256),
  token bytea,
  authentication_id VARCHAR(256),
  user_name VARCHAR(256),
  client_id VARCHAR(256)
);

create table oauth_access_token (
  token_id VARCHAR(256),
  token bytea,
  authentication_id VARCHAR(256),
  user_name VARCHAR(256),
  client_id VARCHAR(256),
  authentication bytea,
  refresh_token VARCHAR(256)
);

create table oauth_refresh_token (
  token_id VARCHAR(256),
  token bytea,
  authentication bytea
);

create table oauth_code (
  code VARCHAR(256), authentication bytea
);

create table oauth_approvals (
  userId VARCHAR(256),
  clientId VARCHAR(256),
  scope VARCHAR(256),
  status VARCHAR(10),
  expiresAt TIMESTAMP,
  lastModifiedAt TIMESTAMP
);


insert into oauth_client_details (client_id, client_secret,
                                  scope, authorized_grant_types, access_token_validity,
                                  refresh_token_validity, additional_information, autoapprove)
values ('c54285b9-150d-4ce1-bd2d-0ecb7a8d01ec',
        '$2a$10$SM1Z.0mOBJdx724UCdRjNeNb4MKJSsYLJMBoXnhYgTDyII.whrIwm',
        'read,write', 'authorization_code,client_credentials,refresh_token,password,implicit',
        3600, null, '{}', 'read,write');

--changeset iris-doc:129
ALTER TABLE portfolio_history ADD portfolio_history_type VARCHAR(40);
ALTER TABLE portfolio_history ADD security_transaction_id INT ;

--changeset iris-doc:130
ALTER TABLE portfolio_history ALTER COLUMN price DROP NOT NULL ;
ALTER TABLE portfolio_history ALTER COLUMN added_value DROP NOT NULL;

--changeset iris-doc:131
ALTER TABLE client ADD intermediation_commission_bond DECIMAL;

--changeset iris-docs:132 dbms:postgresql
ALTER TABLE portfolio_history RENAME COLUMN sgi_commission_ratio  TO intermediation_commission;
ALTER TABLE portfolio_history RENAME COLUMN tax  TO vat;

--changeset iris-docs:132 dbms:h2
ALTER TABLE portfolio_history ALTER COLUMN sgi_commission_ratio RENAME TO intermediation_commission;
ALTER TABLE portfolio_history ALTER COLUMN tax RENAME TO vat;

--changeset iris-doc:133
ALTER TABLE portfolio_history DROP COLUMN dcbr_commission_ratio;
ALTER TABLE portfolio_history DROP COLUMN brvm_commission_ratio;