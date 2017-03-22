--liquibase formatted sql

--changeset iris-docs:114 dbms:postgresql
INSERT INTO settings (company_name,address,vat_rate,custody_fees_rate,sell_commission_rate,buy_commission_rate,dividend_customer_rate,
                      interest_rate,country, economic_zone,dcbr_order_commission_rate,brvm_order_commission_rate, currency)
SELECT 'FINANCIA CAPITAL','Cameroun',18,0.1,0.01,0.01,0.05,2,'CM','CEMAC',0.01,0.03, 'XAF' WHERE NOT EXISTS (SELECT id FROM settings);

INSERT INTO account_type (account_number,type,parent_account_number) SELECT 24, 'Compte de négociation', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 24);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 401, 'Fournisseurs, dettes en compte', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 401);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 411, 'Clients, prestations de services', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 411);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 419, 'Clients, espèces', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 419);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 4432, 'Taxe (TVA, TAF, TPS) sur commissions', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 4432);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 4454, 'Taxe (TVA, TAF, TPS) sur services extérieurs', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 4454);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 4712, '.... liaison', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 4712);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 5211, 'Banques, comptes ordinaires', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 5211);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 532, 'Banque de règlement', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 532);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 5212, 'Banques, comptes opérations sur titres', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 5212);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 6411, 'Commissions et courtages sur achats', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 6411);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 7072, 'Autres commissions sur titres des clients/ Commission de courtage', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 7072);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 7112, 'Commissions sur droits de garde (adhésion)', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 7112);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 7144, 'Commissions de services financiers', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 7144);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 718, 'Autres produits sur titres des clients', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 718);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 7271, 'Intérêts de prêts Revenus de titres de placement', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 7271);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 7274, 'Intérêts de prêts Revenus de titres de placement', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 7274);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 7291, 'Prestations de services de gestion de portefeuille (OPCVM)', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 7291);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 9211, 'Titres à livrer au DC/BR', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 9211);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 9221, 'Titres à recevoir du DC/BR', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 9221);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 926, 'Valeurs en conservation', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 926);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 93, 'Titres de la clientèle - Obligations et Valeurs', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 93);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 94, 'Titres de la clientèle - Obligations et titres en quantité', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 94);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 9, 'Contreparie des valeurs en conservation', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 9);
INSERT INTO account_type (account_number,type,parent_account_number) SELECT 2131, 'Clients, compte reserve', null WHERE NOT EXISTS (SELECT account_number, type,parent_account_number FROM account_type WHERE account_number = 2131);


INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 240000, 0.00000000, 'Compte de négociation', 24, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 240000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 401000, 0.00000000, 'Fournisseurs, dettes en compte', 401, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 401000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 411000, 0.00000000, 'Clients, prestations de services', 411, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 411000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 419000, 0.00000000, 'Clients, espèces', 419, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 419000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 213100, 0.00000000, 'Clients, réservation', 2131, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 213100);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 443200, 0.00000000, 'Taxe (TVA, TAF, TPS) sur commissions', 4432, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 443200);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 445400, 0.00000000, 'Taxe (TVA, TAF, TPS) sur services extérieurs', 4454, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 445400);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 471201, 0.00000000, 'DC/BR liaison', 4712, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 471201);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 471202, 0.00000000, 'SGI liaison', 4712, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 471202);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 471203, 0.00000000, 'SGO liaison', 4712, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 471203);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 521100, 0.00000000, 'Banques, comptes ordinaires', 5211, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 521100);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 532000, 0.00000000, 'Banque de règlement', 532, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 532000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 521200, 0.00000000, 'Banques, comptes opérations sur titres', 5212, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 521200);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 641100, 0.00000000, 'Commissions et courtages sur achats', 6411, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 641100);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 707220, 0.00000000, 'Autres commissions sur titres des clients', 7072, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 707220);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 711200, 0.00000000, 'Commissions sur droits de garde (adhésion)', 7112, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 711200);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 714400, 0.00000000, 'Commissions de services financiers', 7144, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 714400);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 718000, 0.00000000, 'Autres produits sur titres des clients', 718, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 718000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 707210, 0.00000000, 'Commissions de courtage', 7072, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 707210);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 727100, 0.00000000, 'Intérêts de prêts Revenus de titres de placement', 7271, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 727100);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 727400, 0.00000000, 'Intérêts de prêts Revenus de titres de placement', 7274, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 727400);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 729100, 0.00000000, 'Prestations de services de gestion de portefeuille (OPCVM)', 7291, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 729100);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 921100, 0.00000000, 'Titres à livrer au DC/BR', 9211, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 921100);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 922100, 0.00000000, 'Titres à recevoir du DC/BR', 9221, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 922100);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 926000, 0.00000000, 'Valeurs en conservation', 926, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 926000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 931000, 0.00000000, 'Titres de la clientèle - Obligations et Valeurs', 93, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 931000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 932000, 0.00000000, 'Titres de la clientèle - Obligations et Valeurs', 93, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 932000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 933000, 0.00000000, 'Titres de la clientèle - Obligations et Valeurs', 93, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 933000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 941000, 0.00000000, 'Titres de la clientèle - Obligations et titres en quantité', 94, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 941000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 942000, 0.00000000, 'Titres de la clientèle - Obligations et titres en quantité', 94, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 942000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 943000, 0.00000000, 'Titres de la clientèle - Obligations et titres en quantité', 94, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 943000);
INSERT INTO account(account_number, balance, description, account_type_account_number, accounting_id, account_category) SELECT 900000, 0.00000000, 'Contreparie des valeurs en conservation', 9, 1,'GEN' WHERE NOT EXISTS (SELECT account_number FROM account WHERE account_number = 900000);

UPDATE bond SET activated = TRUE;

--changeset iris-docs:115
UPDATE bond SET enjoyment_date='2015-08-08';