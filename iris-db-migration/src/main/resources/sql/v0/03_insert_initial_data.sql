--liquibase formatted sql

--changeset iris-docs:4 dbms:postgresql

INSERT INTO market(id, name, description) VALUES (1, 'Bourse régionale des valeurs mobilières - BRVM','La bourse régionale des valeurs mobilières est une institution financière spécialisée créée le 18 décembre 1996 conformément à une décision du conseil de ministres de l''UEMOA prise en décembre 1993.');
INSERT INTO market(id, name, description) VALUES (2, 'Douala Stock Exchange - DSX','Bourse de Douala');


INSERT INTO fund_manager(id, name) VALUES (1, 'Financia Capital');
INSERT INTO fund_manager(id, name) VALUES (2, 'Africa Capital');
INSERT INTO fund_manager(id, name) VALUES (3, 'My Invest LLC');
INSERT INTO fund_manager(id, name) VALUES (4, 'Making Money Fast TM');
INSERT INTO fund_manager(id, name) VALUES (5, 'Broker Holding LLC');
INSERT INTO fund_manager(id, name) VALUES (6, 'Invest In Stock LLC');
INSERT INTO fund_manager(id, name) VALUES (7, 'Financia Security');
INSERT INTO fund_manager(id, name) VALUES (8, 'The best one LLc');
INSERT INTO fund_manager(id, name) VALUES (9, 'Africa Securities LLC');

INSERT INTO fund_custodian(id, name) VALUES (1, 'Bank Of Africa');
INSERT INTO fund_custodian(id, name) VALUES (2, 'UBA');
INSERT INTO fund_custodian(id, name) VALUES (3, 'BICIC');
INSERT INTO fund_custodian(id, name) VALUES (4, 'BNP');
INSERT INTO fund_custodian(id, name) VALUES (5, 'FICTIVE BANK');
INSERT INTO fund_custodian(id, name) VALUES (6, 'ECOBANK');
INSERT INTO fund_custodian(id, name) VALUES (7, 'BGFI');
INSERT INTO fund_custodian(id, name) VALUES (8, 'ATTIJARI WAFA BANK');
INSERT INTO fund_custodian(id, name) VALUES (9, 'DIAMOND BANK');

INSERT INTO account_type VALUES (10, 'Capital', null);
INSERT INTO account_type VALUES (103, 'Capital personnel', 10);
INSERT INTO account_type VALUES (1030, 'Capital FCP', 103);
INSERT INTO account_type VALUES (12, 'Report à nouveau', null);
INSERT INTO account_type VALUES (121, 'Report à nouveau créditeur', 12);
INSERT INTO account_type VALUES (129, 'Report à nouveau débiteur', 12);
INSERT INTO account_type VALUES (1291, 'Perte nette à reporter', 129);
INSERT INTO account_type VALUES (1292, 'Perte - Amortissements réputés différés', 129);
INSERT INTO account_type VALUES (13, 'Résultat net de l''exercice', null);
INSERT INTO account_type VALUES (130, 'Résultat en instance d''affectation', 13);
INSERT INTO account_type VALUES (1301, 'Résultat en instance d''affectation : Bénéfice', 130);
INSERT INTO account_type VALUES (1302, 'Résultat en instance d''affection : Perte', 130);
INSERT INTO account_type VALUES (16, 'Emprunts et dettes assimilés', null);
INSERT INTO account_type VALUES (162, 'Emprunts et dettes auprès des établissements de crédit', 16);
INSERT INTO account_type VALUES (27, 'Autres immobilisations financières', null);
INSERT INTO account_type VALUES (271, 'Prêts et créances non commerciales', 27);
INSERT INTO account_type VALUES (2714, 'Titres prêtés', 271);
INSERT INTO account_type VALUES (30, 'Stock titres', null);
INSERT INTO account_type VALUES (40, 'Fournisseurs et comptes rattachés', null);
INSERT INTO account_type VALUES (402, 'Fournisseurs, effets à payer', 40);
INSERT INTO account_type VALUES (4021, 'Fournisseurs, effets à payer', 402);
INSERT INTO account_type VALUES (46, 'Associés et groupe', null);
INSERT INTO account_type VALUES (461, 'Associés, opérations sur capital', 46);
INSERT INTO account_type VALUES (50, 'Titres de placement', null);
INSERT INTO account_type VALUES (502, 'Actions', 50);
INSERT INTO account_type VALUES (5021, 'Actions propres', 502);
INSERT INTO account_type VALUES (52, 'Banques', null);
INSERT INTO account_type VALUES (521, 'Banques locales', 52);
INSERT INTO account_type VALUES (63, 'Services extérieurs B', null);
INSERT INTO account_type VALUES (632, 'Rémunérations d''intermédiaires et de conseils', 63);
INSERT INTO account_type VALUES (6321, 'Commissions et courtages sur achats', 632);
INSERT INTO account_type VALUES (6322, 'Commissions et courtages sur ventes', 632);
INSERT INTO account_type VALUES (6324, 'Honoraires', 632);
INSERT INTO account_type VALUES (67, 'Frais financiers et charges assimilés', null);
INSERT INTO account_type VALUES (671, 'Intérêts des emprunts', 67);
INSERT INTO account_type VALUES (6712, 'Emprunts auprès des établissements de crédit', 671);
INSERT INTO account_type VALUES (70, 'Ventes', null);
INSERT INTO account_type VALUES (706, 'Services vendus', 70);
INSERT INTO account_type VALUES (7061, 'Services vendus dans la région', 706);

INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (1, 'CM10000000','21 GESTION ACTIVE','QHZ','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (2, 'CM10000001','29 HAUSSMANN CROISSANCE EUROPE','YAA','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (3, 'CM10000002','29 HAUSSMANN EQUILIBRE','BOJ','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (4, 'CM10000003','29 HAUSSMANN EURO RENDEMENT','ZXL','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (5, 'CM10000004','29 HAUSSMANN EUROPE OPPORTUNIT','QPS','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (6, 'CM10000005','29 HAUSSMANN SELECTION EUROPE','VOB','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (7, 'CM10000006','29 HAUSSMANN SELECTION US','HSN','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (8, 'CM10000007','AA MMF EMERGING CONVICTIONS','WBV','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (9, 'CM10000008','AAA ACTIONS AGRO ALIMENTAIRE R','MUG','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (10, 'CM10000009','AAA ACTIONS AGRO ALIMENTAIRE R','AJA','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (11, 'CM10000010','AAZ CHALLENGER','MJU','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (12, 'CM10000011','AAZ PRESTIGE OR','KME','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (13, 'CM10000012','AAZ SPECIAL','CMR','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (14, 'CM10000013','AB - EURO HIGH YIELD PORTFOLIO','TTR','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (15, 'CM10000014','AB - US THEMATIC RESEARCH PORT','QMC','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (16, 'CM10000015','AB GESTION TAUX VIE','TDD','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (17, 'CM10000016','ABP DIVERSIFIE','BYL','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (18, 'CM10000017','ABSOLU VEGA','HRP','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (19, 'CM10000018','ACATIS - AKTIEN DEUTSCHLAND EL','VLZ','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (20, 'CM10000019','ACATIS - GANF VALUE EVENT FOND','FAX','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (21, 'CM10000020','AKTIEN GLOBAL FONDS UI','WTO','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (22, 'CM10000021','ACATIS AKTIEN GLOBAL FONDS UI','GXC','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (23, 'CM10000022','ACATIS AKTIEN GLOBAL FONDS UI','GPA','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (24, 'CM10000023','ACATIS AKTIEN GLOBAL FONDS UI','HKC','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (25, 'CM10000024','ACATIS IFK VALUE RENTEN UI A','RUR','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (26, 'CM10000025','ACER ACTIONS','PFB','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (27, 'CM10000026','ACTIONPRIVEE EUROPE','RZO','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (28, 'CM10000027','ACTIONS 21 A','XXJ','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (29, 'CM10000028','ACTIVALOR (C);','AFQ','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (30, 'CM10000029','ACTYS 1','ELG','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (31, 'CM10000030','ACTYS 3','SFV','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (32, 'CM10000031','ADEQUITY ABSOLU','FGD','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (33, 'CM10000032','AEQUAM DIVERSIFIED FUND I1 EUR','KAJ','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (34, 'CM10000033','AEQUAM DIVERSIFIED FUND S2 USD','FWM','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (35, 'CM10000034','AESOPE ACTIONS FRANCAISES','QIL','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (36, 'CM10000035','AFER OBJECTIF 2017','TWN','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (37, 'CM10000036','AFER-EUROSFER A','KHE','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (38, 'CM10000037','AFER-FLORE','WCF','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (39, 'CM10000038','AFER-SFER','SGQ','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (40, 'CM10000039','AGIF - BRIC EQUITY C EUR (C);','RZN','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (41, 'CM10000040','AGIF - EUROPE EQUITY GROWTH A','NUD','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (42, 'CM10000041','AGIF - EUROPE EQUITY GROWTH AT','EEK','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (43, 'CM10000042','AGIF - EUROPEAN EQUITY DIVIDEN','LDF','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (44, 'CM10000043','AGIF - GLOBAL AGRICULTURAL TRE','BQL','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (45, 'CM10000044','AGIF - GLOBAL ECO TRENDS A (D);','APZ','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (46, 'CM10000045','AGIF - GLOBAL HI-TECH GROWTH A','QLF','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (47, 'CM10000046','AGIF - JAPAN EQUITY A USD (D);','WOA','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (48, 'CM10000047','AGIF - US HIGH YIELD AM H2-AUD','RHI','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (49, 'CM10000048','AGIF - US HIGH YIELD AM USD (D','CWL','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (50, 'CM10000049','AGIF III - EMERGING EUROPE P (','XTH','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (51, 'CM10000050','AGIF V - ALLIANZ US EQUITY C2','HJL','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (52, 'CM10000051','AGIF V - GLOBAL EMERGING MARKE','HRG','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (53, 'CM10000052','AGIPI ACTIONS','MVX','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (54, 'CM10000053','AGIPI ENERGIES','YTD','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (55, 'CM10000054','AGIPI EUROPE','WRY','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (56, 'CM10000055','AGIPI INFLATION','OCW','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (57, 'CM10000056','AGIPI MARCHES EMERGENTS','VMP','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (58, 'CM10000057','AGPM DYNAMIQUE','FEI','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (59, 'CM10000058','AGPM OPPORTUNITƒ 4','WJP','2016-03-01 10:30:00');
INSERT INTO financial_asset(id, isin_code, name, ticker, last_quotation_date) VALUES (60, 'CM10000059','AIM EUROPE MULTICAPS B','XJN','2016-03-01 10:30:00');

INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES(100, 'CI0000000866', 'AFD 5.25% 2008-2016', 'AFD.O1', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (101, 'BJ0000000188', 'BHB 6.25% 2012-2017', 'BHB.O1', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (102, 'TG0000000190', 'BIDC 6.75% 2010-2017', 'BIDC.O2', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (103, 'TG0000000264', 'BIDC-EBID 6.50% 2014-2021', 'BIDC.O3', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (104, 'BF0000000174', 'BOA BURKINA FASO 6.25% 2012-2017', 'BOABF.O3', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (105, 'CI0000001095', 'BOA - CI 6.25% 2012-2017', 'BOAC.O2', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (106, 'TG0000000215', 'BOAD 5.95% 2012-2019', 'BOAD.O11', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (107, 'TG0000000272', 'BOAD 5.95% 2014-2021', 'BOAD.O12', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (108, 'NG0000000098', 'BOA NIGER 6.25% 2012-2017', 'BOAN.O2', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (109, 'SN0000000217', 'BOA SENEGAL 6.50% 2012-2017', 'BOAS.O2', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (110, 'BJ0000000170', 'CAA-BENIN 6.50% 2011-2016', 'CAAB.O3', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (111, 'TG0000000223', 'CRRH-UEMOA 6.10% 2012-2022', 'CRRH.O1', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (112, 'TG0000000256', 'CRRH-UEMOA 6% 2013-2023', 'CRRH.O3', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (113, 'TG0000000280', 'CRRH-UEMOA 6% 2014-2024', 'CRRH.O4', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (114, 'TG0000000678', 'CRRH-UEMOA 5,85% 2015-2025', 'CRRH.O5', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (115, 'SN0000000225', 'ETAT DU SENEGAL 6.70% 2012-2019', 'EOS.O4', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (116, 'SN0000000233', 'ETAT DU SENEGAL 6,50% 2013-2023', 'EOS.O5', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (117, 'SN0000000340', 'ETAT DU SENEGAL 6.50% 2014-2021', 'EOS.O6', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (118, 'SN0000000910', 'ETAT DU SENEGAL 6.30% 2015-2025', 'EOS.O7', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (119, 'TG0000000207', 'ETAT TOGOLAIS 6.50% 2011-2016', 'EOT.O2', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (120, 'TG0000000249', 'ORAGROUP 6.75% 2013-2019', 'ORGT.O1', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (121, 'CI0000001004', 'PAA 6.95% 2010-2017', 'PAAC.O1', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (122, 'SN0000000176', 'PAD 7% 2010-2017', 'PADS.O2', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (123, 'CI0000000981', 'PALM 7% 2009-2016', 'PALC.O1', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (124, 'SN0000000241', 'SHELTER AFRIQUE 6.60% 2014-2021', 'SHAF.O3', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (125, 'CI0000001111', 'SIFCA 6.90% 2013-2021', 'SIFC.O1', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (126, 'BF0000000166', 'TPBF 6.50% 2011 - 2016', 'TPBF.O2', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (127, 'BF0000000182', 'TPBF 6.50% 2013-2020', 'TPBF.O3', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (128, 'CI0000001012', 'TPCI 7% 2010-2017', 'TPCI.O10', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (129, 'CI0000001079', 'TPCI 6.50% 2011-2016', 'TPCI.O11', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (130, 'CI0000001087', 'TPCI 6.50% 2012-2017', 'TPCI.O13', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (131, 'CI0000001103', 'TPCI 6.00% 2013-2016', 'TPCI.O14', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (132, 'CI0000001129', 'TPCI 6.30% 2013-2018', 'TPCI.O15', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (133, 'CI0000001160', 'TPCI 6.55% 2014-2022', 'TPCI.O16', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (134, 'CI0000001293', 'TPCI 3% 2014-2024', 'TPCI.O17', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (135, 'CI0000001301', 'TPCI 5.85% 2014-2021', 'TPCI.O18', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (136, 'CI0000001681', 'TPCI 5.99% 2015-2025', 'TPCI.O19', '2016-05-12 16:19:00');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (137, 'CI0000001723', 'TPCI 5,85% 2015-2022', 'TPCI.O20', '2016-05-12 16:19:00');

INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (200, 'CI0000000550', 'AIR LIQUIDE CI', 'SIVC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (201, 'BJ0000000048', 'BANK OF AFRICA BENIN', 'BOAB', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (202, 'BF0000000013', 'BANK OF AFRICA BURKINA FASO', 'BOABF', '2016-04-15 15:30:37');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (203, 'CI0000000957', 'BANK OF AFRICA CI', 'BOAC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (204, 'NG0000000013', 'BANK OF AFRICA NIGER', 'BOAN', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (205, 'SN0000000332', 'BANK OF AFRICA SENEGAL', 'BOAS', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (206, 'CI0000000048', 'BERNABE', 'BNBC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (207, 'CI0000000014', 'BICICI', 'BICC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (208, 'CI0000000261', 'BOLLORE AFRICA LOGISTICS CI', 'SDSC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (209, 'CI0000000220', 'CFAO CI', 'CFAC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (210, 'CI0000000212', 'CIE CI', 'CIEC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (211, 'CI0000000345', 'CROWN SIEM', 'SEMC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (212, 'TG0000000132', 'ECOBANK TRANSNATIONAL INCORPORATED TG', 'ETIT', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (213, 'CI0000000121', 'FILTISAC CI', 'FTSC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (214, 'CI0000000279', 'MOVIS CI', 'SVOC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (215, 'CI0000000618', 'NEI CEDA CI', 'NEIC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (216, 'CI0009240728', 'NESTLE CI', 'NTLC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (217, 'BF0000000117', 'ONATEL BF', 'ONTBF', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (218, 'CI0000000592', 'PALMCI', 'PALC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (219, 'CI0000000022', 'SAFCA CI', 'SAFC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (220, 'CI0000000196', 'SAPH CI', 'SPHC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (221, 'CI0000000600', 'SERVAIR ABIDJAN CI', 'ABJC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (222, 'CI0000000352', 'SETAO CI', 'STAC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (223, 'CI0000000030', 'SGBCI', 'SGBC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (224, 'CI0000000154', 'SICABLE CI', 'CABC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (225, 'CI0000000113', 'SICOR', 'SICC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (226, 'CI0000000097', 'SITAB', 'STBC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (227, 'CI0000000170', 'SMB CI', 'SMBC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (228, 'CI0000000204', 'SODECI', 'SDCC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (229, 'CI0000000162', 'SOGB', 'SOGC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (230, 'CI0000000105', 'SOLIBRA CI', 'SLBC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (231, 'SN0000000019', 'SONATEL', 'SNTS', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (232, 'CI0000000650', 'TOTAL CI', 'TTLC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (233, 'SN0000000357', 'TOTAL SENEGAL', 'TTLS', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (234, 'CI0000000055', 'TRACTAFRIC MOTORS CI', 'PRSC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (235, 'CI0000000287', 'UNILEVER CI', 'UNLC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (236, 'CI0000000337', 'UNIWAX CI', 'UNXC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (237, 'CI0000000246', 'VIVO ENERGY CI', 'SHEC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (238, 'CI0000000121', 'FILTISAC CI', 'FTSC', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (239, 'BF0000000117', 'ONATEL BF', 'ONTBF', '2016-04-15 15:28:49');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (240, 'CI0000000592', 'PALMCI', 'PALC', '2016-04-15 15:28:49');

INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (400, 'CM0000010009', 'SEMC', 'SEMC', '2016-06-06');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (401, 'CM0000010007', 'SAFACAM', 'SAFACAM', '2016-06-06');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (402, 'CM0000010025', 'SOCAPALM', 'SOCAPALM', '2016-06-06');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (500, 'CM0000020032', 'BDEAC 5,5% net 2010-2017', 'BDEAC.1017', '2016-06-06');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (501, 'CM0000020040', 'ECMR 5,9% net 2013-2018', 'ECMR.1318', '2016-06-06');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (502, 'CM0000020073', 'ECMR 5,5% net 2014-2019', 'ECMR.1419', '2016-06-06');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (503, 'CM0000020057', 'Etat du Tchad 6% 2013-2018', 'ETC.1318', '2016-06-06');
INSERT INTO financial_asset (id, isin_code, name, ticker, last_quotation_date) VALUES (504, 'CM0000020065', 'FAGACE 5,25% net 2014-2019', 'FAGACE1419', '2016-06-06');

INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (1, 1, 9, 'MIXTE', 1, 'XAF', 'UEMOA', 'BF', 'DAILY', 0.01000000, 0.03000000, 0.00500000, 19743.00000000, '2011-03-09 12:40:47', 134835, 12311.00000000, '2014-12-21 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (2, 1, 9, 'BOND', 2, 'XOF', 'UEMOA', 'BF', 'DAILY', 0.01000000, 0.03000000, 0.00500000, 15078.00000000, '2012-03-09 12:40:47', 359735, 20762.00000000, '2012-11-12 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (3, 1, 9, 'BOND', 2, 'EUR', 'UEMOA', 'BF', 'DAILY', 0.01000000, 0.03000000, 0.00500000, 13712.00000000, '2013-03-09 12:40:47', 906381, 25165.00000000, '2010-10-29 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (4, 1, 9, 'BOND', 1, 'XAF', 'UEMOA', 'BF', 'DAILY', 0.01000000, 0.03000000, 0.00500000, 15749.00000000, '2014-03-09 12:40:47', 411726, 23151.00000000, '2011-10-28 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (5, 1, 9, 'STOCK', 2, 'XOF', 'UEMOA', 'BF', 'DAILY', 0.01000000, 0.03000000, 0.00500000, 11083.00000000, '2015-03-09 12:40:47', 228518, 33337.00000000, '2010-10-20 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (6, 1, 9, 'BOND', 2, 'EUR', 'UEMOA', 'BF', 'DAILY', 0.01000000, 0.03000000, 0.00500000, 12799.00000000, '2011-03-09 12:40:47', 162754, 27053.00000000, '2012-11-27 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (7, 1, 9, 'STOCK', 2, 'XAF', 'UEMOA', 'BF', 'DAILY', 0.01000000, 0.03000000, 0.00500000, 15914.00000000, '2012-03-09 12:40:47', 154758, 32342.00000000, '2013-12-24 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (8, 1, 9, 'BOND', 1, 'XOF', 'UEMOA', 'BF', 'DAILY', 0.01000000, 0.03000000, 0.00500000, 19502.00000000, '2013-03-09 12:40:47', 592256, 10575.00000000, '2015-12-16 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (9, 1, 9, 'BOND', 1, 'EUR', 'UEMOA', 'BF', 'DAILY', 0.01000000, 0.03000000, 0.00500000, 12303.00000000, '2014-03-09 12:40:47', 466737, 10317.00000000, '2015-10-18 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (10, 2, 8, 'STOCK', 1, 'XAF', 'UEMOA', 'BF', 'DAILY', 0.01000000, 0.03000000, 0.00500000, 12643.00000000, '2015-03-09 12:40:47', 677464, 33809.00000000, '2014-12-22 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (11, 2, 8, 'STOCK', 2, 'XOF', 'UEMOA', 'BF', 'DAILY', 0.01000000, 0.03000000, 0.00500000, 17952.00000000, '2011-03-09 12:40:47', 501797, 27964.00000000, '2012-12-30 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (12, 2, 8, 'BOND', 1, 'EUR', 'CEMAC', 'BF', 'DAILY', 0.01000000, 0.03000000, 0.00500000, 11827.00000000, '2010-03-09 12:40:47', 268394, 29129.00000000, '2010-10-23 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (13, 2, 8, 'BOND', 2, 'XAF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 17190.00000000, '2013-03-09 12:40:47', 704669, 14809.00000000, '2015-10-24 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (14, 2, 8, 'BOND', 2, 'XOF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 19370.00000000, '2013-03-09 12:40:47', 847844, 27159.00000000, '2013-12-14 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (15, 2, 8, 'STOCK', 1, 'EUR', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 16887.00000000, '2015-03-09 12:40:47', 580073, 45534.00000000, '2014-11-29 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (16, 2, 8, 'BOND', 2, 'XAF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 19428.00000000, '2012-03-09 12:40:47', 625700, 42327.00000000, '2012-10-30 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (17, 2, 8, 'BOND', 2, 'XOF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 10162.00000000, '2015-03-09 12:40:47', 396855, 27526.00000000, '2013-12-28 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (18, 2, 8, 'STOCK', 1, 'EUR', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 19586.00000000, '2015-03-09 12:40:47', 579663, 49527.00000000, '2014-10-18 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (19, 3, 7, 'STOCK', 1, 'XAF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 10765.00000000, '2016-03-09 12:40:47', 578148, 21904.00000000, '2010-11-12 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (20, 3, 7, 'BOND', 2, 'XOF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 18319.00000000, '2015-03-09 12:40:47', 35339, 24928.00000000, '2013-11-27 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (21, 3, 7, 'STOCK', 1, 'EUR', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 12111.00000000, '2015-03-09 12:40:47', 87078, 46170.00000000, '2010-10-15 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (22, 3, 7, 'BOND', 1, 'XAF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 19223.00000000, '2016-03-09 12:40:47', 198900, 34074.00000000, '2012-11-10 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (23, 3, 7, 'BOND', 1, 'XOF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 10547.00000000, '2013-03-09 12:40:47', 366738, 34032.00000000, '2014-10-11 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (24, 3, 7, 'BOND', 2, 'EUR', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 11557.00000000, '2012-03-09 12:40:47', 681803, 12591.00000000, '2011-10-22 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (25, 3, 7, 'BOND', 1, 'XAF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 17015.00000000, '2011-03-09 12:40:47', 741427, 37620.00000000, '2014-12-11 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (26, 3, 7, 'BOND', 1, 'XOF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 16108.00000000, '2014-03-09 12:40:47', 609519, 38387.00000000, '2014-11-12 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (27, 3, 7, 'STOCK', 2, 'EUR', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 10204.00000000, '2014-03-09 12:40:47', 967643, 42979.00000000, '2010-12-13 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (28, 3, 7, 'BOND', 2, 'XAF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 11519.00000000, '2014-03-09 12:40:47', 215521, 35552.00000000, '2012-12-16 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (29, 3, 7, 'BOND', 1, 'XOF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 16625.00000000, '2013-03-09 12:40:47', 158260, 21537.00000000, '2013-10-26 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (30, 4, 6, 'STOCK', 2, 'EUR', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 11192.00000000, '2011-03-09 12:40:47', 659159, 23706.00000000, '2014-11-29 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (31, 4, 6, 'BOND', 2, 'XAF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 19905.00000000, '2012-03-09 12:40:47', 303350, 35700.00000000, '2012-12-26 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (32, 4, 6, 'BOND', 1, 'XOF', 'CEMAC', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 16200.00000000, '2015-03-09 12:40:47', 289561, 10920.00000000, '2013-12-30 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (33, 4, 6, 'BOND', 1, 'EUR', 'UEMOA', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 13565.00000000, '2011-03-09 12:40:47', 590452, 27203.00000000, '2011-11-19 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (34, 4, 6, 'STOCK', 2, 'XAF', 'UEMOA', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 16701.00000000, '2016-03-09 12:40:47', 685243, 14164.00000000, '2013-12-27 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (35, 4, 6, 'BOND', 2, 'XOF', 'UEMOA', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 19002.00000000, '2016-03-09 12:40:47', 836778, 40501.00000000, '2011-11-25 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (36, 4, 6, 'BOND', 2, 'EUR', 'UEMOA', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 13076.00000000, '2016-03-09 12:40:47', 123866, 32719.00000000, '2015-11-18 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (37, 4, 6, 'BOND', 1, 'XAF', 'UEMOA', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 15880.00000000, '2016-03-09 12:40:47', 183018, 21325.00000000, '2011-12-22 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (38, 4, 6, 'STOCK', 2, 'XOF', 'UEMOA', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 13096.00000000, '2013-03-09 12:40:47', 276617, 35231.00000000, '2011-12-10 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (39, 4, 6, 'BOND', 1, 'EUR', 'UEMOA', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 16317.00000000, '2010-03-09 12:40:47', 657077, 16793.00000000, '2011-10-30 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (40, 4, 6, 'STOCK', 2, 'XAF', 'UEMOA', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 16596.00000000, '2012-03-09 12:40:47', 152601, 22601.00000000, '2012-11-18 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (41, 1, 1, 'STOCK', 2, 'XOF', 'UEMOA', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 19221.00000000, '2014-03-09 12:40:47', 991035, 28248.00000000, '2011-12-27 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (42, 1, 1, 'BOND', 2, 'EUR', 'UEMOA', 'CV', 'MONTHLY', 0.01000000, 0.03000000, 0.00500000, 17808.00000000, '2013-03-09 12:40:47', 355408, 23881.00000000, '2010-12-18 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (43, 1, 1, 'BOND', 2, 'XAF', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 15831.00000000, '2013-03-09 12:40:47', 459016, 13939.00000000, '2015-11-10 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (44, 1, 1, 'STOCK', 1, 'XOF', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 12621.00000000, '2011-03-09 12:40:47', 365443, 28383.00000000, '2013-10-10 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (45, 1, 1, 'BOND', 2, 'EUR', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 18273.00000000, '2016-03-09 12:40:47', 654071, 49380.00000000, '2014-11-30 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (46, 1, 1, 'BOND', 1, 'XAF', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 11181.00000000, '2016-03-09 12:40:47', 391287, 33549.00000000, '2012-12-21 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (47, 5, 5, 'BOND', 2, 'XOF', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 12416.00000000, '2016-03-09 12:40:47', 345267, 25672.00000000, '2015-10-15 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (48, 5, 5, 'BOND', 1, 'EUR', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 11670.00000000, '2014-03-09 12:40:47', 77517, 16747.00000000, '2011-12-10 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (49, 5, 5, 'STOCK', 2, 'XAF', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 16138.00000000, '2015-03-09 12:40:47', 848148, 25332.00000000, '2015-10-18 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (50, 5, 5, 'BOND', 1, 'XOF', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 17201.00000000, '2015-03-09 12:40:47', 717878, 47479.00000000, '2013-11-16 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (51, 5, 5, 'STOCK', 1, 'EUR', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 14436.00000000, '2015-03-09 12:40:47', 659597, 26807.00000000, '2015-10-25 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (52, 5, 5, 'BOND', 2, 'XAF', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 12006.00000000, '2015-03-09 12:40:47', 377834, 46246.00000000, '2011-10-13 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (53, 5, 5, 'STOCK', 2, 'XOF', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 12924.00000000, '2013-03-09 12:40:47', 527913, 25494.00000000, '2012-10-26 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (54, 5, 5, 'STOCK', 2, 'EUR', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 19553.00000000, '2015-03-09 12:40:47', 363186, 35316.00000000, '2012-11-28 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (55, 5, 5, 'STOCK', 2, 'XAF', 'UEMOA', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 19773.00000000, '2011-03-09 12:40:47', 189132, 11527.00000000, '2014-12-26 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (56, 5, 5, 'STOCK', 2, 'XOF', 'CEMAC', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 12934.00000000, '2015-03-09 12:40:47', 747607, 38168.00000000, '2010-11-17 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (57, 5, 5, 'BOND', 1, 'EUR', 'CEMAC', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 10208.00000000, '2012-03-09 12:40:47', 750317, 37221.00000000, '2011-11-18 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (58, 5, 5, 'BOND', 2, 'XAF', 'CEMAC', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 18898.00000000, '2014-03-09 12:40:47', 188417, 44255.00000000, '2014-10-13 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (59, 5, 5, 'STOCK', 2, 'XOF', 'CEMAC', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 15795.00000000, '2013-03-09 12:40:47', 622944, 49700.00000000, '2012-10-27 00:00:00');
INSERT INTO mutual_fund (id, fund_manager_id, fund_custodian_id, mutual_fund_category, mutual_fund_type, currency, economic_zone, country, quotation_mode, entry_fees, exit_fees, management_fees, benchmark_index, creation_date, number_of_shares, asset_value, value_date) VALUES (60, 5, 5, 'BOND', 1, 'EUR', 'CEMAC', 'CV', 'YEARLY', 0.01000000, 0.03000000, 0.00500000, 19399.00000000, '2015-03-09 12:40:47', 685517, 27259.00000000, '2012-12-19 00:00:00');

INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (1, 20402527, 0.18, 70252131, 0.12, 93181674, 0.13, 77692635, 0.06, '2016-12-21 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (2, 4315337, 0.19, 49117341, 0.11, 59666812, 0.01, 58843994, 0.04, '2015-11-25 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (3, 96675387, 0.07, 34663968, -0.03, 63776975, 0.11, 88282639, 0.00, '2015-11-12 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (4, 12578512, 0.00, 86514422, -0.01, 27139127, -0.08, 88974254, 0.16, '2015-11-29 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (5, 74193433, 0.11, 42470817, 0.06, 63453703, 0.06, 70058431, 0.03, '2015-10-29 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (6, 4609066, 0.09, 15173755, 0.11, 6826528, 0.14, 7371724, 0.10, '2015-10-23 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (7, 93178444, 0.16, 44698813, 0.09, 25959368, 0.02, 1349714, 0.17, '2015-10-24 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (8, 93186608, 0.05, 27042562, 0.06, 30311238, 0.03, 66956808, 0.16, '2015-11-22 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (9, 42303915, -0.01, 64492423, 0.13, 7632514, -0.03, 63033639, 0.13, '2015-10-25 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (10, 28414855, 0.05, 86059586, -0.01, 19704821, 0.01, 66098874, -0.07, '2015-10-21 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (11, 78731819, 0.01, 35551630, 0.09, 69870734, 0.06, 77861672, 0.04, '2016-10-17 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (12, 83606701, 0.02, 61785098, 0.04, 56758116, 0.20, 53833355, -0.09, '2016-10-12 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (13, 92304321, -0.08, 30816223, 0.03, 94636520, 0.20, 87076317, -0.05, '2015-12-18 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (14, 4010208, -0.10, 42039376, -0.04, 8530092, 0.06, 3509759, 0.01, '2016-12-10 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (15, 42595090, 0.07, 13873533, 0.09, 41808138, 0.11, 97734449, -0.03, '2016-10-15 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (16, 6428963, 0.11, 87734079, -0.09, 94131163, 0.04, 36893110, 0.00, '2015-11-11 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (17, 41929607, 0.08, 47734598, 0.12, 79422574, 0.20, 99924319, 0.19, '2016-10-19 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (18, 15983956, 0.00, 60644195, -0.05, 87872092, 0.01, 84984255, 0.16, '2016-11-27 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (19, 2845675, 0.20, 3299060, 0.04, 12248612, 0.16, 50775629, 0.19, '2015-11-13 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (20, 50937967, -0.01, 15278701, 0.16, 99506080, -0.02, 98135396, 0.20, '2015-11-23 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (21, 59388686, -0.04, 21878023, -0.09, 17401038, 0.08, 51091548, 0.01, '2015-12-22 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (22, 5680371, 0.15, 23325395, 0.03, 23046032, -0.03, 40399330, 0.08, '2015-12-22 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (23, 15289994, -0.09, 55445564, -0.05, 85352132, 0.05, 54013238, 0.19, '2015-10-30 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (24, 6574220, 0.02, 22607096, -0.10, 17174789, 0.19, 75882348, 0.01, '2015-10-16 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (25, 46030208, 0.10, 35893083, 0.09, 35765094, 0.16, 90403213, -0.01, '2015-12-23 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (26, 69633667, 0.11, 79460394, -0.06, 53050110, 0.00, 86752744, 0.14, '2015-12-26 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (27, 42857491, 0.16, 23606186, 0.05, 97532452, 0.02, 98232036, 0.20, '2016-12-26 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (28, 24177212, 0.09, 25786217, -0.03, 66004293, 0.18, 24293449, -0.09, '2016-12-23 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (29, 70741641, -0.01, 94463759, 0.12, 31383941, -0.03, 33448946, 0.00, '2016-10-16 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (30, 53392177, 0.01, 13593507, -0.07, 70563673, 0.14, 28306626, 0.17, '2016-12-19 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (31, 34570523, 0.16, 52201237, -0.07, 98067330, 0.04, 10842981, 0.08, '2015-11-16 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (32, 22196435, 0.11, 45304148, 0.13, 39974312, -0.09, 83009759, 0.03, '2016-10-11 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (33, 33444684, 0.03, 54515804, 0.16, 76717495, 0.14, 47552262, -0.08, '2015-11-21 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (34, 33510571, -0.07, 89410848, -0.05, 95820549, 0.17, 4906095, 0.09, '2016-10-27 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (35, 87282132, 0.00, 28845997, 0.20, 40183602, 0.00, 98913319, 0.00, '2015-11-23 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (36, 17980728, 0.06, 47642540, 0.18, 60068510, 0.03, 39314421, 0.12, '2015-11-24 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (37, 39314385, -0.10, 70997164, -0.05, 93526388, 0.10, 82981323, -0.08, '2015-11-30 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (38, 94266565, 0.01, 23256267, 0.13, 58133929, 0.13, 80480877, -0.01, '2015-10-27 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (39, 29179346, 0.06, 71317531, 0.14, 71350140, -0.10, 12827146, 0.08, '2016-12-22 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (40, 88260785, -0.10, 93311824, 0.03, 36611792, 0.14, 49206337, -0.02, '2016-11-19 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (41, 7072113, 0.01, 58730238, 0.17, 7942349, -0.08, 72167769, 0.18, '2015-12-14 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (42, 5055947, 0.09, 70105068, 0.04, 31876645, 0.19, 7029179, -0.02, '2015-11-25 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (43, 48051745, 0.14, 92987830, -0.01, 77297056, -0.06, 92823352, 0.14, '2015-10-24 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (44, 31026809, -0.04, 76454690, 0.08, 16163590, 0.17, 77314825, -0.05, '2015-11-18 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (45, 91857995, -0.02, 58497898, 0.02, 85352272, 0.05, 53827653, -0.08, '2016-10-22 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (46, 65811190, 0.10, 5262872, -0.05, 46912930, 0.09, 73927702, -0.09, '2016-12-28 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (47, 34446428, 0.16, 97214782, 0.03, 78740865, 0.02, 94316871, 0.09, '2015-11-10 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (48, 33663465, 0.03, 55738781, 0.03, 63769056, 0.12, 47166596, 0.17, '2015-10-27 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (49, 86430060, 0.20, 57531702, 0.12, 87115859, -0.05, 46358252, 0.13, '2015-12-17 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (50, 22956239, -0.10, 76481179, 0.00, 63391083, 0.17, 11450418, -0.03, '2015-11-30 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (51, 75139780, 0.00, 6513465, -0.04, 6354809, 0.00, 1275901, 0.04, '2016-12-16 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (52, 9695355, 0.10, 16909370, 0.10, 58832150, 0.05, 52572388, 0.15, '2015-10-22 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (53, 75543807, 0.00, 53931935, -0.01, 70319284, -0.08, 60097403, 0.17, '2015-12-21 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (54, 28825096, 0.18, 37284758, -0.01, 20828230, -0.08, 51044072, -0.06, '2015-12-12 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (55, 90856239, -0.07, 22010472, -0.06, 91784619, -0.05, 3940800, 0.20, '2016-10-19 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (56, 85097277, 0.00, 77289028, 0.01, 63594307, 0.00, 66294180, 0.03, '2016-10-28 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (57, 2262671, -0.03, 59439539, -0.09, 64187787, 0.12, 97273923, 0.05, '2015-12-25 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (58, 10898267, -0.05, 70092898, 0.08, 28573009, -0.04, 79583931, 0.19, '2015-11-16 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (59, 23360680, -0.06, 76521826, 0.11, 83519245, -0.10, 64021750, -0.08, '2016-12-30 00:00:00');
INSERT INTO mutual_fund_performance (mutual_fund_id, january_first_net_change, january_first_percent_change, a_year_net_change, a_year_percent_change, three_years_net_change, three_years_percent_change, five_years_net_change, five_years_percent_change, update_date) VALUES (60, 32091696, 0.17, 49613391, 0.11, 5813039, 0.13, 35025097, 0.11, '2016-11-12 00:00:00');

INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id) VALUES('2016-03-18', 15638122.00000000, 27230349864.00000000, 7980769136.00000000, 9090, 557540651.00000000, 17980978.00000000, 0.50, 1);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 9598470.00000000, 22895842133.00000000, 22980802997.00000000, 7416, 685147337.00000000, 18864775.00000000, 0.50, 2);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 22975721.00000000, 9636012530.00000000, 18860046253.00000000, 8907, 167927505.00000000, 16366093.00000000, 0.50, 3);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 18329445.00000000, 14511102769.00000000, 10655669555.00000000, 1167, 268855923.00000000, 10842245.00000000, 0.50, 4);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 2293483.00000000, 12439134397.00000000, 7111113985.00000000, 8266, 389369925.00000000, 11693047.00000000, 0.50, 5);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 8694774.00000000, 23126288818.00000000, 18401500235.00000000, 2434, 924479115.00000000, 13262410.00000000, 0.50, 6);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 3928559.00000000, 9128015227.00000000, 3372354746.00000000, 2355, 749520560.00000000, 7628016.00000000, 0.50, 7);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 9570787.00000000, 19099085793.00000000, 1942191185.00000000, 6486, 565964928.00000000, 16487969.00000000, 0.50, 8);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 7241404.00000000, 2257276229.00000000, 16648986810.00000000, 1714, 350580872.00000000, 9873722.00000000, 0.50, 9);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 26799490.00000000, 23512751245.00000000, 21837263098.00000000, 6867, 243868715.00000000, 4284783.00000000, 0.50, 10);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 14886411.00000000, 20833878417.00000000, 22521872014.00000000, 8141, 837713690.00000000, 17622129.00000000, 0.50, 11);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 24182680.00000000, 3388666851.00000000, 2152902880.00000000, 2416, 408245863.00000000, 16907350.00000000, 0.50, 12);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 20309372.00000000, 27898216400.00000000, 10232087804.00000000, 7693, 393122170.00000000, 9032786.00000000, 0.50, 13);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 3120485.00000000, 24981779330.00000000, 14837004451.00000000, 5077, 761083340.00000000, 1045272.00000000, 0.50, 14);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 25117020.00000000, 8375133398.00000000, 23412780882.00000000, 6638, 604580640.00000000, 11058226.00000000, 0.50, 15);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 18911072.00000000, 3648943331.00000000, 7084408277.00000000, 9789, 191983717.00000000, 6187481.00000000, 0.50, 16);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 22122677.00000000, 9192418901.00000000, 18426397915.00000000, 1938, 789871786.00000000, 18793623.00000000, 0.50, 17);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 1759242.00000000, 21976814073.00000000, 7674258292.00000000, 5073, 199307899.00000000, 11785197.00000000, 0.50, 18);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 1353045.00000000, 1519377840.00000000, 23174903679.00000000, 5041, 623818389.00000000, 4532947.00000000, 0.50, 19);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 2577897.00000000, 12625977157.00000000, 5364060250.00000000, 9732, 640185237.00000000, 11100973.00000000, 0.50, 20);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 23247990.00000000, 13461237032.00000000, 1989330834.00000000, 3857, 447804546.00000000, 13433518.00000000, 0.50, 21);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 11528781.00000000, 5676136708.00000000, 8737953613.00000000, 9158, 575754778.00000000, 19210665.00000000, 0.50, 22);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 22730127.00000000, 27228682669.00000000, 17639716972.00000000, 1643, 813485769.00000000, 19856230.00000000, 0.50, 23);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 2513755.00000000, 16093664780.00000000, 27007565541.00000000, 2695, 781462824.00000000, 12685078.00000000, 0.50, 24);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 18269753.00000000, 17678716808.00000000, 23789566105.00000000, 3279, 850797905.00000000, 17369727.00000000, 0.50, 25);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 24398750.00000000, 13329803157.00000000, 12537410656.00000000, 4140, 245541910.00000000, 5960160.00000000, 0.50, 26);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 29132994.00000000, 25061987201.00000000, 26797398655.00000000, 3647, 645976974.00000000, 9699347.00000000, 0.50, 27);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 27324209.00000000, 7937040002.00000000, 3398548122.00000000, 7961, 133836485.00000000, 3948666.00000000, 0.50, 28);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 11148211.00000000, 12585688880.00000000, 17898706538.00000000, 9109, 312672111.00000000, 10619050.00000000, 0.50, 29);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 3081863.00000000, 4783131342.00000000, 26017107125.00000000, 1128, 551015895.00000000, 15872903.00000000, 0.50, 30);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 15776175.00000000, 16793627162.00000000, 23759456824.00000000, 8653, 780089183.00000000, 1565329.00000000, 0.50, 31);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 19842811.00000000, 9516148449.00000000, 8571429188.00000000, 1425, 313445499.00000000, 15417398.00000000, 0.50, 32);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 13303463.00000000, 8068066404.00000000, 16909964040.00000000, 8107, 253474032.00000000, 18769159.00000000, 0.50, 33);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 5197951.00000000, 4997273327.00000000, 12775407897.00000000, 9729, 741027808.00000000, 4634031.00000000, 0.50, 34);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 9359440.00000000, 12940992896.00000000, 19584100965.00000000, 8302, 353484996.00000000, 9210561.00000000, 0.50, 35);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 12673612.00000000, 11391723307.00000000, 3234681223.00000000, 7047, 764544735.00000000, 16643777.00000000, 0.50, 36);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 6277977.00000000, 6128447485.00000000, 4138791989.00000000, 3175, 596990703.00000000, 5777419.00000000, 0.50, 37);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 7625538.00000000, 29307241084.00000000, 6864461863.00000000, 6828, 339850036.00000000, 16219074.00000000, 0.50, 38);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 20505618.00000000, 10579530246.00000000, 8143756010.00000000, 1501, 295745482.00000000, 18302206.00000000, 0.50, 39);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 23723427.00000000, 10015595446.00000000, 15479786820.00000000, 6306, 392947825.00000000, 18875024.00000000, 0.50, 40);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 3734022.00000000, 21023587705.00000000, 28014383968.00000000, 2546, 584514361.00000000, 7852618.00000000, 0.50, 41);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 8271853.00000000, 5725802159.00000000, 26063194467.00000000, 5141, 632688590.00000000, 1519591.00000000, 0.50, 42);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 11842039.00000000, 27644065834.00000000, 6484884250.00000000, 7330, 962063455.00000000, 11791363.00000000, 0.50, 43);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 23091002.00000000, 14832401565.00000000, 19717142574.00000000, 7733, 440140727.00000000, 16334434.00000000, 0.50, 44);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 21887568.00000000, 18779709525.00000000, 6576430637.00000000, 6732, 103084221.00000000, 15165185.00000000, 0.50, 45);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 22273179.00000000, 15704074354.00000000, 12830629507.00000000, 8747, 919124041.00000000, 4795192.00000000, 0.50, 46);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 8525495.00000000, 7273448004.00000000, 16346013010.00000000, 5527, 581288863.00000000, 5590778.00000000, 0.50, 47);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 6172683.00000000, 5552533333.00000000, 1389647946.00000000, 3141, 856339965.00000000, 15918909.00000000, 0.50, 48);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 16135707.00000000, 19152898092.00000000, 16562815339.00000000, 2313, 754055783.00000000, 10200702.00000000, 0.50, 49);
INSERT INTO mutual_fund_daily (date, asset_value, gross_price, net_price, number_of_shares, liquidity_amount, asset_value_net_change, asset_value_percent_change, mutual_fund_id)  VALUES('2016-03-18', 27432529.00000000, 26595051250.00000000, 3445277914.00000000, 2142, 554514041.00000000, 7121279.00000000, 0.50, 50);

INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(100, 10000.00000000, '2016-12-31', 100.00000000, 0.05250000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(101, 10000.00000000, '2017-12-31', 100.00000000, 0.06250000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(102, 10000.00000000, '2017-12-31', 100.00000000, 0.06750000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(103, 10000.00000000, '2021-12-31', 100.00000000, 0.06500000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(104, 10000.00000000, '2017-12-31', 100.00000000, 0.06250000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(105, 10000.00000000, '2017-12-31', 100.00000000, 0.06250000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(106, 10000.00000000, '2019-12-31', 100.00000000, 0.05950000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(107, 10000.00000000, '2021-12-31', 100.00000000, 0.05950000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(108, 10000.00000000, '2017-12-31', 100.00000000, 0.06250000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(109, 10000.00000000, '2017-12-31', 100.00000000, 0.06500000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(110, 10000.00000000, '2016-12-31', 100.00000000, 0.06500000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(111, 10000.00000000, '2022-12-31', 100.00000000, 0.06100000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(112, 10000.00000000, '2017-12-31', 100.00000000, 0.06000000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(113, 10000.00000000, '2024-12-31', 100.00000000, 0.06000000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(114, 10000.00000000, '2025-12-31', 100.00000000, 0.05850000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(115, 10000.00000000, '2019-12-31', 100.00000000, 0.06700000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(116, 10000.00000000, '2023-12-31', 100.00000000, 0.06500000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(117, 10000.00000000, '2021-12-31', 100.00000000, 0.06500000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(118, 10000.00000000, '2025-12-31', 100.00000000, 0.06300000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(119, 10000.00000000, '2016-12-31', 100.00000000, 0.06500000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(120, 10000.00000000, '2019-12-31', 100.00000000, 0.06750000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(121, 10000.00000000, '2017-12-31', 100.00000000, 0.06950000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(122, 10000.00000000, '2017-12-31', 100.00000000, 0.07000000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(123, 10000.00000000, '2016-12-31', 100.00000000, 0.07000000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(124, 10000.00000000, '2021-12-31', 100.00000000, 0.06600000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(125, 10000.00000000, '2021-12-31', 100.00000000, 0.06900000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(126, 10000.00000000, '2016-12-31', 100.00000000, 0.06500000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(127, 10000.00000000, '2020-12-31', 100.00000000, 0.06500000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(128, 10000.00000000, '2017-12-31', 100.00000000, 0.07000000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(129, 10000.00000000, '2016-12-31', 100.00000000, 0.06500000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(130, 10000.00000000, '2017-12-31', 100.00000000, 0.06500000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(131, 10000.00000000, '2016-12-31', 100.00000000, 0.06000000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(132, 10000.00000000, '2018-12-31', 100.00000000, 0.06300000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(133, 10000.00000000, '2022-12-31', 100.00000000, 0.06550000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(134, 10000.00000000, '2024-12-31', 100.00000000, 0.03000000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(135, 10000.00000000, '2021-12-31', 100.00000000, 0.05850000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(136, 10000.00000000, '2025-12-31', 100.00000000, 0.05990000, 1);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES(137, 10000.00000000, '2022-12-31', 100.00000000, 0.05850000, 1);

INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES (500, 10000.00000000, '2017-12-31', 100.00000000, 0.05500000, 2);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES (501, 10000.00000000, '2018-12-21', 100.00000000, 0.05900000, 2);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES (502, 10000.00000000, '2019-12-26', 100.00000000, 0.05500000, 2);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES (503, 10000.00000000, '2018-12-31', 100.00000000, 0.06000000, 2);
INSERT INTO bond (id, principal_amount, maturity_date, market_price, coupon, market_id) VALUES (504, 10000.00000000, '2019-12-31', 100.00000000, 0.05250000, 2);

INSERT INTO stock VALUES(200, 20678.00000000, 20678.00000000, 1);
INSERT INTO stock VALUES(201, 11120.00000000, 11120.00000000, 1);
INSERT INTO stock VALUES(202, 13924.00000000, 13924.00000000, 1);
INSERT INTO stock VALUES(203, 13111.00000000, 13111.00000000, 1);
INSERT INTO stock VALUES(204, 24037.00000000, 24037.00000000, 1);
INSERT INTO stock VALUES(205, 16990.00000000, 16990.00000000, 1);
INSERT INTO stock VALUES(206, 21293.00000000, 21293.00000000, 1);
INSERT INTO stock VALUES(207, 17486.00000000, 17486.00000000, 1);
INSERT INTO stock VALUES(208, 20599.00000000, 20599.00000000, 1);
INSERT INTO stock VALUES(209, 13511.00000000, 13511.00000000, 1);
INSERT INTO stock VALUES(210, 21785.00000000, 21785.00000000, 1);
INSERT INTO stock VALUES(211, 12756.00000000, 12756.00000000, 1);
INSERT INTO stock VALUES(212, 21877.00000000, 21877.00000000, 1);
INSERT INTO stock VALUES(213, 24993.00000000, 24993.00000000, 1);
INSERT INTO stock VALUES(214, 17118.00000000, 17118.00000000, 1);
INSERT INTO stock VALUES(215, 19983.00000000, 19983.00000000, 1);
INSERT INTO stock VALUES(216, 23618.00000000, 23618.00000000, 1);
INSERT INTO stock VALUES(217, 24036.00000000, 24036.00000000, 1);
INSERT INTO stock VALUES(218, 20695.00000000, 20695.00000000, 1);
INSERT INTO stock VALUES(219, 15629.00000000, 15629.00000000, 1);
INSERT INTO stock VALUES(220, 13475.00000000, 13475.00000000, 1);
INSERT INTO stock VALUES(221, 22738.00000000, 22738.00000000, 1);
INSERT INTO stock VALUES(222, 14431.00000000, 14431.00000000, 1);
INSERT INTO stock VALUES(223, 21496.00000000, 21496.00000000, 1);
INSERT INTO stock VALUES(224, 12951.00000000, 12951.00000000, 1);
INSERT INTO stock VALUES(225, 17027.00000000, 17027.00000000, 1);
INSERT INTO stock VALUES(226, 10595.00000000, 10595.00000000, 1);
INSERT INTO stock VALUES(227, 22770.00000000, 22770.00000000, 1);
INSERT INTO stock VALUES(228, 15231.00000000, 15231.00000000, 1);
INSERT INTO stock VALUES(229, 18253.00000000, 18253.00000000, 1);
INSERT INTO stock VALUES(230, 11239.00000000, 11239.00000000, 1);
INSERT INTO stock VALUES(231, 24918.00000000, 24918.00000000, 1);
INSERT INTO stock VALUES(232, 23419.00000000, 23419.00000000, 1);
INSERT INTO stock VALUES(233, 24258.00000000, 24258.00000000, 1);
INSERT INTO stock VALUES(234, 16565.00000000, 16565.00000000, 1);
INSERT INTO stock VALUES(235, 22125.00000000, 22125.00000000, 1);
INSERT INTO stock VALUES(236, 21574.00000000, 21574.00000000, 1);
INSERT INTO stock VALUES(237, 15370.00000000, 15370.00000000, 1);
INSERT INTO stock VALUES(238, 13182.00000000, 13182.00000000, 1);
INSERT INTO stock VALUES(239, 14762.00000000, 14762.00000000, 1);
INSERT INTO stock VALUES(240, 18067.00000000, 18067.00000000, 1);

INSERT INTO stock (id, benchmark_index, price, market_id) VALUES (401, 0.00000000, 0.00000000, 2);
INSERT INTO stock (id, benchmark_index, price, market_id) VALUES (402, 0.00000000, 0.00000000, 2);
INSERT INTO stock (id, benchmark_index, price, market_id) VALUES (400, 0.00000000, 0.00000000, 2);


-- TRUNCATE TABLE tiers CASCADE ;
-- TRUNCATE TABLE client CASCADE ;
-- TRUNCATE table investment CASCADE ;
-- TRUNCATE TABLE collateral CASCADE ;

INSERT INTO tiers values (1, 'BGFI');

INSERT INTO occupation(code,name) VALUES('P0','Personnel FINANCIA');
INSERT INTO occupation(code,name) VALUES('P1','Salariés secteur privé');
INSERT INTO occupation(code,name) VALUES('P2','Salarié secteur public');
INSERT INTO occupation(code,name) VALUES('P3','Fonctionnaires');
INSERT INTO occupation(code,name) VALUES('P4','Profession libérale');
INSERT INTO occupation(code,name) VALUES('P5','Industriels');
INSERT INTO occupation(code,name) VALUES('P6','Commercants');
INSERT INTO occupation(code,name) VALUES('P7','Etudiants');
INSERT INTO occupation(code,name) VALUES('P8','Agriculteurs');
INSERT INTO occupation(code,name) VALUES('P9','Artisans');
INSERT INTO occupation(code,name) VALUES('P10','Retraités');
INSERT INTO occupation(code,name) VALUES('P11','Sans emploi');
INSERT INTO occupation(code,name) VALUES('M0','Institutions du groupe FINANCIA');
INSERT INTO occupation(code,name) VALUES('M1','Institutions du secteur public');
INSERT INTO occupation(code,name) VALUES('M2','Institutions bancaires');
INSERT INTO occupation(code,name) VALUES('M3','Institutions financières non bancaires');
INSERT INTO occupation(code,name) VALUES('M4','Institutions du secteur Industriel');
INSERT INTO occupation(code,name) VALUES('M5','Institutions commerciales');
INSERT INTO occupation(code,name) VALUES('M6','Institution académique');
INSERT INTO occupation(code,name) VALUES('M7','Institutions du secteur agrolimentaire');
INSERT INTO occupation(code,name) VALUES('M8','Institutions du secteur artisanal');

INSERT INTO district (code, name) VALUES ('01', 'Ngaoundéré');
INSERT INTO district (code, name) VALUES ('02', 'Yaoundé');
INSERT INTO district (code, name) VALUES ('03', 'Bertoua');
INSERT INTO district (code, name) VALUES ('04', 'Buéa');
INSERT INTO district (code, name) VALUES ('05', 'Douala');
INSERT INTO district (code, name) VALUES ('06', 'Garoua');
INSERT INTO district (code, name) VALUES ('07', 'Bamenda');
INSERT INTO district (code, name) VALUES ('08', 'Bafoussam');
INSERT INTO district (code, name) VALUES ('09', 'Ebolowa');
INSERT INTO district (code, name) VALUES ('10', 'Maroua');

INSERT INTO iris_user VALUES (2, 'client_Yasmine', 'password_BOHOUN');
INSERT INTO iris_user VALUES (4, 'client_Assane', 'password_SOW');
INSERT INTO iris_user VALUES (6, 'financia', 'rKrpbSV8X34QHbBv');

INSERT INTO user_profile (iris_user_id, user_profile_type_id) VALUES (2, 1);
INSERT INTO user_profile (iris_user_id, user_profile_type_id) VALUES (2, 2);

INSERT INTO user_profile(iris_user_id, user_profile_type_id)  VALUES (4, 1);
INSERT INTO user_profile(iris_user_id, user_profile_type_id)  VALUES (6, 1);

INSERT INTO bank_account(id, bank_code, branch_code, account_number, ribkey, iban) VALUES (2, '6543', '7987', '5790098', '1234', '8009');
INSERT INTO bank_account(id, bank_code, branch_code, account_number, ribkey, iban) VALUES (4, '6543', '7987', '5790098', '1234', '8009');

INSERT INTO party (id, name, party_type) VALUES (1, 'Financia Capital', 'BROKER');
INSERT INTO party (id, name, party_type) VALUES (2, 'Anonymous SGI', 'BROKER');

INSERT INTO accounting (id, name, accounting_type) VALUES (1, 'Comptabilité globale', 'GENERAL');
INSERT INTO account (account_number, account_type_account_number, accounting_id, description) VALUES ( '521000', 521, 1, 'Compte général : Banques');

INSERT INTO client (id, first_name, last_name, company_name, address, phone_number, email, fax, client_code, id_card_number, id_card_type, gender, occupation_code, country, district_code, client_type, birth_date) VALUES (2, 'Yasmine', 'BOHOUN', 'People Input', 'liberte 6', '77777', 'ydasilva@peopleinput.com', '55555', 'YRBBT567', '98VHNRE', 'PS', 'F', 'P0','BJ','01','P', '1988-04-25 00:00:00');
INSERT INTO client (id, first_name, last_name, company_name, address, phone_number, email, fax, client_code, id_card_number, id_card_type, gender, occupation_code, country, district_code, client_type, birth_date) VALUES (4, 'Assane', 'SOW', 'People Input', 'Keur Massar', '775552713', 'asow@peopleinput.com', '777888999', 'tthiao68', '79IJHGF', 'CI', 'M','P1','SN','02','P', '1988-06-25 00:00:00');

INSERT INTO bank_account_client (client_id, bank_account_id) VALUES (2, 2);
INSERT INTO bank_account_client (client_id, bank_account_id) VALUES (4, 4);


INSERT INTO investment (id, number_of_shares, number_of_available_shares, avg_buying_price, mutual_fund_id, client_id, has_collaterals) VALUES (1, 2, 57, 8999.00000000, 1, 2, true);
INSERT INTO investment (id, number_of_shares, number_of_available_shares, avg_buying_price, mutual_fund_id, client_id, has_collaterals) VALUES (3, 54566, 67890, 10000000000.00000000, 1, 4, true);
INSERT INTO investment (id, number_of_shares, number_of_available_shares, avg_buying_price, mutual_fund_id, client_id, has_collaterals) VALUES (4, 9986, 234556, 1000.00000000, 2, 4, true);

INSERT INTO investment_history (id, number_of_shares, price, date, investment_movement_type, investment_id) VALUES (1, 5, 15638122.00000000, '2016-03-18 00:00:00.000000', 'BUYING', 1);

INSERT INTO collateral (number_of_shares, avg_share_price, investment_id, tiers) VALUES (3, 790345.00000000, 1, 'BOA');
INSERT INTO collateral (number_of_shares, avg_share_price, investment_id, tiers) VALUES (577, 2577.00000000, 3, 'SGBS');
INSERT INTO collateral (number_of_shares, avg_share_price, investment_id, tiers) VALUES (46, 890.00000000, 4, 'BOA');
INSERT INTO collateral (number_of_shares, avg_share_price, investment_id, tiers) VALUES (456, 78990.00000000, 1, 'SGBS');

INSERT INTO period (start_date, end_date, created_date, is_closed) VALUES ('2015-01-01 11:44:09.051000', '2015-12-01 11:44:27.744000', '2015-04-27 11:44:44.171000', TRUE );
INSERT INTO period (start_date, end_date, created_date, is_closed) VALUES ('2016-01-01 11:44:09.051000', '2016-12-01 11:44:27.744000', '2016-04-27 11:44:44.171000', FALSE );

INSERT INTO mutual_fund_financial_asset (quantity, avg_buy_amount, mutual_fund_id, financial_asset_id, asset_class) VALUES (5, 46.00000000, 1, 100, 'BOND');
INSERT INTO mutual_fund_financial_asset (quantity, avg_buy_amount, mutual_fund_id, financial_asset_id, asset_class) VALUES (7, 46.00000000, 2, 101, 'BOND');
INSERT INTO mutual_fund_financial_asset (quantity, avg_buy_amount, mutual_fund_id, financial_asset_id, asset_class) VALUES (7, 46.00000000, 2, 102, 'BOND');
INSERT INTO mutual_fund_financial_asset (quantity, avg_buy_amount, mutual_fund_id, financial_asset_id, asset_class) VALUES (7, 46.00000000, 2, 200, 'STOCK');
INSERT INTO mutual_fund_financial_asset (quantity, avg_buy_amount, mutual_fund_id, financial_asset_id, asset_class) VALUES (7, 46.00000000, 2, 202, 'STOCK');
INSERT INTO mutual_fund_financial_asset (quantity, avg_buy_amount, mutual_fund_id, financial_asset_id, asset_class) VALUES (2, 4.00000000, 1, 103, 'BOND');
INSERT INTO mutual_fund_financial_asset (quantity, avg_buy_amount, mutual_fund_id, financial_asset_id, asset_class) VALUES (7, 46.00000000, 2, 204, 'STOCK');
INSERT INTO mutual_fund_financial_asset (quantity, avg_buy_amount, mutual_fund_id, financial_asset_id, asset_class) VALUES (2, 4.00000000, 1, 205, 'STOCK');
INSERT INTO mutual_fund_financial_asset (quantity, avg_buy_amount, mutual_fund_id, financial_asset_id, asset_class) VALUES (45, 28000.00000000, 5, 206, 'STOCK');

INSERT INTO mutual_fund_asset_class (mutual_fund_id, asset_class) VALUES (1, 'BOND');
INSERT INTO mutual_fund_asset_class (mutual_fund_id, asset_class) VALUES (1, 'STOCK');

INSERT INTO   trading_day (id, trading_date) VALUES (2, '2008-12-31');
INSERT INTO   trading_day (id, trading_date) VALUES (3, '2009-01-07');
INSERT INTO   trading_day (id, trading_date) VALUES (4, '2009-01-14');
INSERT INTO   trading_day (id, trading_date) VALUES (5, '2009-01-21');
INSERT INTO   trading_day (id, trading_date) VALUES (6, '2009-01-28');
INSERT INTO   trading_day (id, trading_date) VALUES (7, '2009-02-04');
INSERT INTO   trading_day (id, trading_date) VALUES (8, '2009-02-10');
INSERT INTO   trading_day (id, trading_date) VALUES (9, '2009-02-18');
INSERT INTO   trading_day (id, trading_date) VALUES (10, '2009-02-25');
INSERT INTO   trading_day (id, trading_date) VALUES (11, '2009-03-04');
INSERT INTO   trading_day (id, trading_date) VALUES (12, '2009-03-11');
INSERT INTO   trading_day (id, trading_date) VALUES (13, '2009-03-18');
INSERT INTO   trading_day (id, trading_date) VALUES (14, '2009-03-25');
INSERT INTO   trading_day (id, trading_date) VALUES (15, '2009-04-01');
INSERT INTO   trading_day (id, trading_date) VALUES (16, '2009-04-07');
INSERT INTO   trading_day (id, trading_date) VALUES (17, '2009-04-08');
INSERT INTO   trading_day (id, trading_date) VALUES (18, '2009-04-15');
INSERT INTO   trading_day (id, trading_date) VALUES (19, '2009-04-22');
INSERT INTO   trading_day (id, trading_date) VALUES (20, '2009-04-29');
INSERT INTO   trading_day (id, trading_date) VALUES (21, '2009-05-06');
INSERT INTO   trading_day (id, trading_date) VALUES (22, '2009-05-13');
INSERT INTO   trading_day (id, trading_date) VALUES (23, '2009-05-19');
INSERT INTO   trading_day (id, trading_date) VALUES (24, '2009-05-27');
INSERT INTO   trading_day (id, trading_date) VALUES (25, '2009-06-03');
INSERT INTO   trading_day (id, trading_date) VALUES (26, '2009-06-10');
INSERT INTO   trading_day (id, trading_date) VALUES (27, '2009-06-17');
INSERT INTO   trading_day (id, trading_date) VALUES (28, '2009-06-24');
INSERT INTO   trading_day (id, trading_date) VALUES (29, '2009-07-01');
INSERT INTO   trading_day (id, trading_date) VALUES (30, '2009-07-08');
INSERT INTO   trading_day (id, trading_date) VALUES (31, '2009-07-15');
INSERT INTO   trading_day (id, trading_date) VALUES (32, '2009-07-22');
INSERT INTO   trading_day (id, trading_date) VALUES (33, '2009-07-29');
INSERT INTO   trading_day (id, trading_date) VALUES (34, '2009-08-05');
INSERT INTO   trading_day (id, trading_date) VALUES (35, '2009-08-12');
INSERT INTO   trading_day (id, trading_date) VALUES (36, '2009-08-19');
INSERT INTO   trading_day (id, trading_date) VALUES (37, '2009-08-26');
INSERT INTO   trading_day (id, trading_date) VALUES (38, '2009-09-02');
INSERT INTO   trading_day (id, trading_date) VALUES (39, '2009-09-09');
INSERT INTO   trading_day (id, trading_date) VALUES (40, '2009-09-16');
INSERT INTO   trading_day (id, trading_date) VALUES (41, '2009-09-23');
INSERT INTO   trading_day (id, trading_date) VALUES (42, '2009-09-30');
INSERT INTO   trading_day (id, trading_date) VALUES (43, '2009-10-07');
INSERT INTO   trading_day (id, trading_date) VALUES (44, '2009-10-14');
INSERT INTO   trading_day (id, trading_date) VALUES (45, '2009-10-21');
INSERT INTO   trading_day (id, trading_date) VALUES (46, '2009-10-28');
INSERT INTO   trading_day (id, trading_date) VALUES (47, '2009-11-04');
INSERT INTO   trading_day (id, trading_date) VALUES (48, '2009-11-11');
INSERT INTO   trading_day (id, trading_date) VALUES (49, '2009-11-18');
INSERT INTO   trading_day (id, trading_date) VALUES (50, '2009-11-26');
INSERT INTO   trading_day (id, trading_date) VALUES (51, '2009-12-02');
INSERT INTO   trading_day (id, trading_date) VALUES (52, '2009-12-09');
INSERT INTO   trading_day (id, trading_date) VALUES (53, '2009-12-16');
INSERT INTO   trading_day (id, trading_date) VALUES (54, '2009-12-23');
INSERT INTO   trading_day (id, trading_date) VALUES (55, '2009-12-30');
INSERT INTO   trading_day (id, trading_date) VALUES (56, '2010-01-06');
INSERT INTO   trading_day (id, trading_date) VALUES (57, '2010-01-13');
INSERT INTO   trading_day (id, trading_date) VALUES (58, '2010-01-20');
INSERT INTO   trading_day (id, trading_date) VALUES (59, '2010-01-27');
INSERT INTO   trading_day (id, trading_date) VALUES (60, '2010-02-03');
INSERT INTO   trading_day (id, trading_date) VALUES (61, '2010-02-10');
INSERT INTO   trading_day (id, trading_date) VALUES (62, '2010-02-17');
INSERT INTO   trading_day (id, trading_date) VALUES (63, '2010-02-24');
INSERT INTO   trading_day (id, trading_date) VALUES (64, '2010-03-03');
INSERT INTO   trading_day (id, trading_date) VALUES (65, '2010-03-10');
INSERT INTO   trading_day (id, trading_date) VALUES (66, '2010-03-17');
INSERT INTO   trading_day (id, trading_date) VALUES (67, '2010-03-24');
INSERT INTO   trading_day (id, trading_date) VALUES (68, '2010-03-31');
INSERT INTO   trading_day (id, trading_date) VALUES (69, '2010-04-07');
INSERT INTO   trading_day (id, trading_date) VALUES (70, '2010-04-14');
INSERT INTO   trading_day (id, trading_date) VALUES (71, '2010-04-21');
INSERT INTO   trading_day (id, trading_date) VALUES (72, '2010-04-28');
INSERT INTO   trading_day (id, trading_date) VALUES (73, '2010-05-05');
INSERT INTO   trading_day (id, trading_date) VALUES (74, '2010-05-12');
INSERT INTO   trading_day (id, trading_date) VALUES (75, '2010-05-19');
INSERT INTO   trading_day (id, trading_date) VALUES (76, '2010-05-26');
INSERT INTO   trading_day (id, trading_date) VALUES (77, '2010-06-02');
INSERT INTO   trading_day (id, trading_date) VALUES (78, '2010-06-09');
INSERT INTO   trading_day (id, trading_date) VALUES (79, '2010-06-16');
INSERT INTO   trading_day (id, trading_date) VALUES (80, '2010-06-23');
INSERT INTO   trading_day (id, trading_date) VALUES (81, '2010-06-30');
INSERT INTO   trading_day (id, trading_date) VALUES (82, '2010-07-07');
INSERT INTO   trading_day (id, trading_date) VALUES (83, '2010-07-14');
INSERT INTO   trading_day (id, trading_date) VALUES (84, '2010-07-21');
INSERT INTO   trading_day (id, trading_date) VALUES (85, '2010-07-28');
INSERT INTO   trading_day (id, trading_date) VALUES (86, '2010-08-04');
INSERT INTO   trading_day (id, trading_date) VALUES (87, '2010-08-11');
INSERT INTO   trading_day (id, trading_date) VALUES (88, '2010-08-18');
INSERT INTO   trading_day (id, trading_date) VALUES (89, '2010-08-25');
INSERT INTO   trading_day (id, trading_date) VALUES (90, '2010-09-01');
INSERT INTO   trading_day (id, trading_date) VALUES (91, '2010-09-08');
INSERT INTO   trading_day (id, trading_date) VALUES (92, '2010-09-15');
INSERT INTO   trading_day (id, trading_date) VALUES (93, '2010-09-22');
INSERT INTO   trading_day (id, trading_date) VALUES (94, '2010-10-06');
INSERT INTO   trading_day (id, trading_date) VALUES (95, '2010-10-13');
INSERT INTO   trading_day (id, trading_date) VALUES (96, '2010-10-20');
INSERT INTO   trading_day (id, trading_date) VALUES (97, '2010-10-27');
INSERT INTO   trading_day (id, trading_date) VALUES (98, '2010-10-29');
INSERT INTO   trading_day (id, trading_date) VALUES (99, '2010-11-03');
INSERT INTO   trading_day (id, trading_date) VALUES (100, '2010-11-10');
INSERT INTO   trading_day (id, trading_date) VALUES (101, '2010-11-17');
INSERT INTO   trading_day (id, trading_date) VALUES (102, '2010-11-24');
INSERT INTO   trading_day (id, trading_date) VALUES (103, '2010-12-01');
INSERT INTO   trading_day (id, trading_date) VALUES (104, '2010-12-08');
INSERT INTO   trading_day (id, trading_date) VALUES (105, '2010-12-15');
INSERT INTO   trading_day (id, trading_date) VALUES (106, '2010-12-22');
INSERT INTO   trading_day (id, trading_date) VALUES (107, '2010-12-29');
INSERT INTO   trading_day (id, trading_date) VALUES (108, '2011-01-05');
INSERT INTO   trading_day (id, trading_date) VALUES (109, '2011-01-12');
INSERT INTO   trading_day (id, trading_date) VALUES (110, '2011-01-19');
INSERT INTO   trading_day (id, trading_date) VALUES (111, '2011-01-26');
INSERT INTO   trading_day (id, trading_date) VALUES (112, '2011-02-02');
INSERT INTO   trading_day (id, trading_date) VALUES (113, '2011-02-09');
INSERT INTO   trading_day (id, trading_date) VALUES (114, '2011-02-16');
INSERT INTO   trading_day (id, trading_date) VALUES (115, '2011-02-23');
INSERT INTO   trading_day (id, trading_date) VALUES (116, '2011-02-28');
INSERT INTO   trading_day (id, trading_date) VALUES (117, '2011-03-02');
INSERT INTO   trading_day (id, trading_date) VALUES (118, '2011-03-04');
INSERT INTO   trading_day (id, trading_date) VALUES (119, '2011-03-07');
INSERT INTO   trading_day (id, trading_date) VALUES (120, '2011-03-09');
INSERT INTO   trading_day (id, trading_date) VALUES (121, '2011-03-11');
INSERT INTO   trading_day (id, trading_date) VALUES (122, '2011-03-14');
INSERT INTO   trading_day (id, trading_date) VALUES (123, '2011-03-16');
INSERT INTO   trading_day (id, trading_date) VALUES (124, '2011-03-18');
INSERT INTO   trading_day (id, trading_date) VALUES (125, '2011-03-21');
INSERT INTO   trading_day (id, trading_date) VALUES (126, '2011-03-23');
INSERT INTO   trading_day (id, trading_date) VALUES (127, '2011-03-25');
INSERT INTO   trading_day (id, trading_date) VALUES (128, '2011-03-28');
INSERT INTO   trading_day (id, trading_date) VALUES (129, '2011-03-30');
INSERT INTO   trading_day (id, trading_date) VALUES (130, '2011-04-01');
INSERT INTO   trading_day (id, trading_date) VALUES (131, '2011-04-04');
INSERT INTO   trading_day (id, trading_date) VALUES (132, '2011-04-06');
INSERT INTO   trading_day (id, trading_date) VALUES (133, '2011-04-08');
INSERT INTO   trading_day (id, trading_date) VALUES (134, '2011-04-11');
INSERT INTO   trading_day (id, trading_date) VALUES (135, '2011-04-13');
INSERT INTO   trading_day (id, trading_date) VALUES (136, '2011-04-15');
INSERT INTO   trading_day (id, trading_date) VALUES (137, '2011-04-18');
INSERT INTO   trading_day (id, trading_date) VALUES (138, '2011-04-20');
INSERT INTO   trading_day (id, trading_date) VALUES (139, '2011-04-25');
INSERT INTO   trading_day (id, trading_date) VALUES (140, '2011-04-27');
INSERT INTO   trading_day (id, trading_date) VALUES (141, '2011-04-29');
INSERT INTO   trading_day (id, trading_date) VALUES (142, '2011-05-03');
INSERT INTO   trading_day (id, trading_date) VALUES (143, '2011-05-04');
INSERT INTO   trading_day (id, trading_date) VALUES (144, '2011-05-06');
INSERT INTO   trading_day (id, trading_date) VALUES (145, '2011-05-09');
INSERT INTO   trading_day (id, trading_date) VALUES (146, '2011-05-11');
INSERT INTO   trading_day (id, trading_date) VALUES (147, '2011-05-13');
INSERT INTO   trading_day (id, trading_date) VALUES (148, '2011-05-16');
INSERT INTO   trading_day (id, trading_date) VALUES (149, '2011-05-18');
INSERT INTO   trading_day (id, trading_date) VALUES (150, '2011-05-23');
INSERT INTO   trading_day (id, trading_date) VALUES (151, '2011-05-25');
INSERT INTO   trading_day (id, trading_date) VALUES (152, '2011-05-27');
INSERT INTO   trading_day (id, trading_date) VALUES (153, '2011-05-30');
INSERT INTO   trading_day (id, trading_date) VALUES (154, '2011-06-01');
INSERT INTO   trading_day (id, trading_date) VALUES (155, '2011-06-03');
INSERT INTO   trading_day (id, trading_date) VALUES (156, '2011-06-06');
INSERT INTO   trading_day (id, trading_date) VALUES (157, '2011-06-08');
INSERT INTO   trading_day (id, trading_date) VALUES (158, '2011-06-10');
INSERT INTO   trading_day (id, trading_date) VALUES (159, '2011-06-13');
INSERT INTO   trading_day (id, trading_date) VALUES (160, '2011-06-15');
INSERT INTO   trading_day (id, trading_date) VALUES (161, '2011-06-17');
INSERT INTO   trading_day (id, trading_date) VALUES (162, '2011-06-20');
INSERT INTO   trading_day (id, trading_date) VALUES (163, '2011-06-22');
INSERT INTO   trading_day (id, trading_date) VALUES (164, '2011-06-24');
INSERT INTO   trading_day (id, trading_date) VALUES (165, '2011-06-27');
INSERT INTO   trading_day (id, trading_date) VALUES (166, '2011-06-29');
INSERT INTO   trading_day (id, trading_date) VALUES (167, '2011-07-01');
INSERT INTO   trading_day (id, trading_date) VALUES (168, '2011-07-04');
INSERT INTO   trading_day (id, trading_date) VALUES (169, '2011-07-06');
INSERT INTO   trading_day (id, trading_date) VALUES (170, '2011-07-08');
INSERT INTO   trading_day (id, trading_date) VALUES (171, '2011-07-11');
INSERT INTO   trading_day (id, trading_date) VALUES (172, '2011-07-13');
INSERT INTO   trading_day (id, trading_date) VALUES (173, '2011-07-15');
INSERT INTO   trading_day (id, trading_date) VALUES (174, '2011-07-18');
INSERT INTO   trading_day (id, trading_date) VALUES (175, '2011-07-20');
INSERT INTO   trading_day (id, trading_date) VALUES (176, '2011-07-22');
INSERT INTO   trading_day (id, trading_date) VALUES (177, '2011-07-25');
INSERT INTO   trading_day (id, trading_date) VALUES (178, '2011-07-27');
INSERT INTO   trading_day (id, trading_date) VALUES (179, '2011-07-29');
INSERT INTO   trading_day (id, trading_date) VALUES (180, '2011-08-01');
INSERT INTO   trading_day (id, trading_date) VALUES (181, '2011-08-03');
INSERT INTO   trading_day (id, trading_date) VALUES (182, '2011-08-05');
INSERT INTO   trading_day (id, trading_date) VALUES (183, '2011-08-08');
INSERT INTO   trading_day (id, trading_date) VALUES (184, '2011-08-10');
INSERT INTO   trading_day (id, trading_date) VALUES (185, '2011-08-12');
INSERT INTO   trading_day (id, trading_date) VALUES (186, '2011-08-17');
INSERT INTO   trading_day (id, trading_date) VALUES (187, '2011-08-19');
INSERT INTO   trading_day (id, trading_date) VALUES (188, '2011-08-22');
INSERT INTO   trading_day (id, trading_date) VALUES (189, '2011-08-24');
INSERT INTO   trading_day (id, trading_date) VALUES (190, '2011-08-26');
INSERT INTO   trading_day (id, trading_date) VALUES (191, '2011-08-31');
INSERT INTO   trading_day (id, trading_date) VALUES (192, '2011-09-02');
INSERT INTO   trading_day (id, trading_date) VALUES (193, '2011-09-05');
INSERT INTO   trading_day (id, trading_date) VALUES (194, '2011-09-07');
INSERT INTO   trading_day (id, trading_date) VALUES (195, '2011-09-09');
INSERT INTO   trading_day (id, trading_date) VALUES (196, '2011-09-12');
INSERT INTO   trading_day (id, trading_date) VALUES (197, '2011-09-14');
INSERT INTO   trading_day (id, trading_date) VALUES (198, '2011-09-16');
INSERT INTO   trading_day (id, trading_date) VALUES (199, '2011-09-19');
INSERT INTO   trading_day (id, trading_date) VALUES (200, '2011-09-21');
INSERT INTO   trading_day (id, trading_date) VALUES (201, '2011-09-23');
INSERT INTO   trading_day (id, trading_date) VALUES (202, '2011-09-26');
INSERT INTO   trading_day (id, trading_date) VALUES (203, '2011-09-28');
INSERT INTO   trading_day (id, trading_date) VALUES (204, '2011-09-30');
INSERT INTO   trading_day (id, trading_date) VALUES (205, '2011-10-03');
INSERT INTO   trading_day (id, trading_date) VALUES (206, '2011-10-05');
INSERT INTO   trading_day (id, trading_date) VALUES (207, '2011-10-07');
INSERT INTO   trading_day (id, trading_date) VALUES (208, '2011-10-10');
INSERT INTO   trading_day (id, trading_date) VALUES (209, '2011-10-12');
INSERT INTO   trading_day (id, trading_date) VALUES (210, '2011-10-14');
INSERT INTO   trading_day (id, trading_date) VALUES (211, '2011-10-17');
INSERT INTO   trading_day (id, trading_date) VALUES (212, '2011-10-19');
INSERT INTO   trading_day (id, trading_date) VALUES (213, '2011-10-21');
INSERT INTO   trading_day (id, trading_date) VALUES (214, '2011-10-24');
INSERT INTO   trading_day (id, trading_date) VALUES (215, '2011-10-26');
INSERT INTO   trading_day (id, trading_date) VALUES (216, '2011-10-28');
INSERT INTO   trading_day (id, trading_date) VALUES (217, '2011-10-31');
INSERT INTO   trading_day (id, trading_date) VALUES (218, '2011-11-02');
INSERT INTO   trading_day (id, trading_date) VALUES (219, '2011-11-04');
INSERT INTO   trading_day (id, trading_date) VALUES (220, '2011-11-09');
INSERT INTO   trading_day (id, trading_date) VALUES (221, '2011-11-11');
INSERT INTO   trading_day (id, trading_date) VALUES (222, '2011-11-14');
INSERT INTO   trading_day (id, trading_date) VALUES (223, '2011-11-16');
INSERT INTO   trading_day (id, trading_date) VALUES (224, '2011-11-18');
INSERT INTO   trading_day (id, trading_date) VALUES (225, '2011-11-21');
INSERT INTO   trading_day (id, trading_date) VALUES (226, '2011-11-23');
INSERT INTO   trading_day (id, trading_date) VALUES (227, '2011-11-25');
INSERT INTO   trading_day (id, trading_date) VALUES (228, '2011-11-28');
INSERT INTO   trading_day (id, trading_date) VALUES (229, '2011-11-30');
INSERT INTO   trading_day (id, trading_date) VALUES (230, '2011-12-02');
INSERT INTO   trading_day (id, trading_date) VALUES (231, '2011-12-05');
INSERT INTO   trading_day (id, trading_date) VALUES (232, '2011-12-07');
INSERT INTO   trading_day (id, trading_date) VALUES (233, '2011-12-09');
INSERT INTO   trading_day (id, trading_date) VALUES (234, '2011-12-12');
INSERT INTO   trading_day (id, trading_date) VALUES (235, '2011-12-14');
INSERT INTO   trading_day (id, trading_date) VALUES (236, '2011-12-16');
INSERT INTO   trading_day (id, trading_date) VALUES (237, '2011-12-19');
INSERT INTO   trading_day (id, trading_date) VALUES (238, '2011-12-21');
INSERT INTO   trading_day (id, trading_date) VALUES (239, '2011-12-23');
INSERT INTO   trading_day (id, trading_date) VALUES (240, '2011-12-28');
INSERT INTO   trading_day (id, trading_date) VALUES (241, '2011-12-30');
INSERT INTO   trading_day (id, trading_date) VALUES (242, '2012-01-06');
INSERT INTO   trading_day (id, trading_date) VALUES (243, '2012-01-09');
INSERT INTO   trading_day (id, trading_date) VALUES (244, '2012-01-11');
INSERT INTO   trading_day (id, trading_date) VALUES (245, '2012-01-13');
INSERT INTO   trading_day (id, trading_date) VALUES (246, '2012-01-16');
INSERT INTO   trading_day (id, trading_date) VALUES (247, '2012-01-18');
INSERT INTO   trading_day (id, trading_date) VALUES (248, '2012-01-20');
INSERT INTO   trading_day (id, trading_date) VALUES (249, '2012-01-23');
INSERT INTO   trading_day (id, trading_date) VALUES (250, '2012-01-25');
INSERT INTO   trading_day (id, trading_date) VALUES (251, '2012-01-27');
INSERT INTO   trading_day (id, trading_date) VALUES (252, '2012-01-30');
INSERT INTO   trading_day (id, trading_date) VALUES (253, '2012-02-01');
INSERT INTO   trading_day (id, trading_date) VALUES (254, '2012-02-03');
INSERT INTO   trading_day (id, trading_date) VALUES (255, '2012-02-06');
INSERT INTO   trading_day (id, trading_date) VALUES (256, '2012-02-08');
INSERT INTO   trading_day (id, trading_date) VALUES (257, '2012-02-10');
INSERT INTO   trading_day (id, trading_date) VALUES (258, '2012-02-13');
INSERT INTO   trading_day (id, trading_date) VALUES (259, '2012-02-15');
INSERT INTO   trading_day (id, trading_date) VALUES (260, '2012-02-17');
INSERT INTO   trading_day (id, trading_date) VALUES (261, '2012-02-20');
INSERT INTO   trading_day (id, trading_date) VALUES (262, '2012-02-22');
INSERT INTO   trading_day (id, trading_date) VALUES (263, '2012-02-27');
INSERT INTO   trading_day (id, trading_date) VALUES (264, '2012-02-29');
INSERT INTO   trading_day (id, trading_date) VALUES (265, '2012-03-02');
INSERT INTO   trading_day (id, trading_date) VALUES (266, '2012-03-05');
INSERT INTO   trading_day (id, trading_date) VALUES (267, '2012-03-07');
INSERT INTO   trading_day (id, trading_date) VALUES (268, '2012-03-09');
INSERT INTO   trading_day (id, trading_date) VALUES (269, '2012-03-12');
INSERT INTO   trading_day (id, trading_date) VALUES (270, '2012-03-14');
INSERT INTO   trading_day (id, trading_date) VALUES (271, '2012-03-16');
INSERT INTO   trading_day (id, trading_date) VALUES (272, '2012-03-19');
INSERT INTO   trading_day (id, trading_date) VALUES (273, '2012-03-23');
INSERT INTO   trading_day (id, trading_date) VALUES (274, '2012-03-26');
INSERT INTO   trading_day (id, trading_date) VALUES (275, '2012-03-28');
INSERT INTO   trading_day (id, trading_date) VALUES (276, '2012-03-30');
INSERT INTO   trading_day (id, trading_date) VALUES (277, '2012-04-09');
INSERT INTO   trading_day (id, trading_date) VALUES (278, '2012-04-14');
INSERT INTO   trading_day (id, trading_date) VALUES (279, '2012-04-16');
INSERT INTO   trading_day (id, trading_date) VALUES (280, '2012-04-18');
INSERT INTO   trading_day (id, trading_date) VALUES (281, '2012-04-20');
INSERT INTO   trading_day (id, trading_date) VALUES (282, '2012-04-23');
INSERT INTO   trading_day (id, trading_date) VALUES (283, '2012-04-25');
INSERT INTO   trading_day (id, trading_date) VALUES (284, '2012-05-04');
INSERT INTO   trading_day (id, trading_date) VALUES (285, '2012-05-07');
INSERT INTO   trading_day (id, trading_date) VALUES (286, '2012-05-09');
INSERT INTO   trading_day (id, trading_date) VALUES (287, '2012-05-11');
INSERT INTO   trading_day (id, trading_date) VALUES (288, '2012-05-14');
INSERT INTO   trading_day (id, trading_date) VALUES (289, '2012-05-16');
INSERT INTO   trading_day (id, trading_date) VALUES (290, '2012-05-18');
INSERT INTO   trading_day (id, trading_date) VALUES (291, '2012-05-23');
INSERT INTO   trading_day (id, trading_date) VALUES (292, '2012-05-25');
INSERT INTO   trading_day (id, trading_date) VALUES (293, '2012-05-28');
INSERT INTO   trading_day (id, trading_date) VALUES (294, '2012-05-30');
INSERT INTO   trading_day (id, trading_date) VALUES (295, '2012-06-01');
INSERT INTO   trading_day (id, trading_date) VALUES (296, '2012-06-04');
INSERT INTO   trading_day (id, trading_date) VALUES (297, '2012-06-06');
INSERT INTO   trading_day (id, trading_date) VALUES (298, '2012-06-08');
INSERT INTO   trading_day (id, trading_date) VALUES (299, '2012-06-13');
INSERT INTO   trading_day (id, trading_date) VALUES (300, '2012-06-15');
INSERT INTO   trading_day (id, trading_date) VALUES (301, '2012-06-18');
INSERT INTO   trading_day (id, trading_date) VALUES (302, '2012-06-20');
INSERT INTO   trading_day (id, trading_date) VALUES (303, '2012-06-22');
INSERT INTO   trading_day (id, trading_date) VALUES (304, '2012-06-25');
INSERT INTO   trading_day (id, trading_date) VALUES (305, '2012-06-29');
INSERT INTO   trading_day (id, trading_date) VALUES (306, '2012-07-02');
INSERT INTO   trading_day (id, trading_date) VALUES (307, '2012-07-04');
INSERT INTO   trading_day (id, trading_date) VALUES (308, '2012-07-06');
INSERT INTO   trading_day (id, trading_date) VALUES (309, '2012-07-11');
INSERT INTO   trading_day (id, trading_date) VALUES (310, '2012-07-13');
INSERT INTO   trading_day (id, trading_date) VALUES (311, '2012-07-16');
INSERT INTO   trading_day (id, trading_date) VALUES (312, '2012-07-18');
INSERT INTO   trading_day (id, trading_date) VALUES (313, '2012-07-20');
INSERT INTO   trading_day (id, trading_date) VALUES (314, '2012-07-23');
INSERT INTO   trading_day (id, trading_date) VALUES (315, '2012-07-25');
INSERT INTO   trading_day (id, trading_date) VALUES (316, '2012-07-27');
INSERT INTO   trading_day (id, trading_date) VALUES (317, '2012-07-30');
INSERT INTO   trading_day (id, trading_date) VALUES (318, '2012-08-01');
INSERT INTO   trading_day (id, trading_date) VALUES (319, '2012-08-03');
INSERT INTO   trading_day (id, trading_date) VALUES (320, '2012-08-06');
INSERT INTO   trading_day (id, trading_date) VALUES (321, '2012-08-08');
INSERT INTO   trading_day (id, trading_date) VALUES (322, '2012-08-10');
INSERT INTO   trading_day (id, trading_date) VALUES (323, '2012-08-13');
INSERT INTO   trading_day (id, trading_date) VALUES (324, '2012-08-22');
INSERT INTO   trading_day (id, trading_date) VALUES (325, '2012-08-24');
INSERT INTO   trading_day (id, trading_date) VALUES (326, '2012-08-27');
INSERT INTO   trading_day (id, trading_date) VALUES (327, '2012-08-29');
INSERT INTO   trading_day (id, trading_date) VALUES (328, '2012-08-31');
INSERT INTO   trading_day (id, trading_date) VALUES (329, '2012-09-03');
INSERT INTO   trading_day (id, trading_date) VALUES (330, '2012-09-05');
INSERT INTO   trading_day (id, trading_date) VALUES (331, '2012-09-07');
INSERT INTO   trading_day (id, trading_date) VALUES (332, '2012-09-10');
INSERT INTO   trading_day (id, trading_date) VALUES (333, '2012-09-12');
INSERT INTO   trading_day (id, trading_date) VALUES (334, '2012-09-14');
INSERT INTO   trading_day (id, trading_date) VALUES (335, '2012-09-17');
INSERT INTO   trading_day (id, trading_date) VALUES (336, '2012-09-19');
INSERT INTO   trading_day (id, trading_date) VALUES (337, '2012-09-21');
INSERT INTO   trading_day (id, trading_date) VALUES (338, '2012-09-26');
INSERT INTO   trading_day (id, trading_date) VALUES (339, '2012-09-28');
INSERT INTO   trading_day (id, trading_date) VALUES (340, '2012-10-01');
INSERT INTO   trading_day (id, trading_date) VALUES (341, '2012-10-03');
INSERT INTO   trading_day (id, trading_date) VALUES (342, '2012-10-05');
INSERT INTO   trading_day (id, trading_date) VALUES (343, '2012-10-08');
INSERT INTO   trading_day (id, trading_date) VALUES (344, '2012-10-12');
INSERT INTO   trading_day (id, trading_date) VALUES (345, '2012-10-15');
INSERT INTO   trading_day (id, trading_date) VALUES (346, '2012-10-17');
INSERT INTO   trading_day (id, trading_date) VALUES (347, '2012-10-22');
INSERT INTO   trading_day (id, trading_date) VALUES (348, '2012-10-24');
INSERT INTO   trading_day (id, trading_date) VALUES (349, '2012-10-29');
INSERT INTO   trading_day (id, trading_date) VALUES (350, '2012-10-31');
INSERT INTO   trading_day (id, trading_date) VALUES (351, '2012-11-07');
INSERT INTO   trading_day (id, trading_date) VALUES (352, '2012-11-12');
INSERT INTO   trading_day (id, trading_date) VALUES (353, '2012-11-14');
INSERT INTO   trading_day (id, trading_date) VALUES (354, '2012-11-16');
INSERT INTO   trading_day (id, trading_date) VALUES (355, '2012-11-19');
INSERT INTO   trading_day (id, trading_date) VALUES (356, '2012-11-21');
INSERT INTO   trading_day (id, trading_date) VALUES (357, '2012-11-23');
INSERT INTO   trading_day (id, trading_date) VALUES (358, '2012-11-30');
INSERT INTO   trading_day (id, trading_date) VALUES (359, '2012-12-03');
INSERT INTO   trading_day (id, trading_date) VALUES (360, '2012-12-05');
INSERT INTO   trading_day (id, trading_date) VALUES (361, '2012-12-07');
INSERT INTO   trading_day (id, trading_date) VALUES (362, '2012-12-10');
INSERT INTO   trading_day (id, trading_date) VALUES (363, '2012-12-12');
INSERT INTO   trading_day (id, trading_date) VALUES (364, '2012-12-14');
INSERT INTO   trading_day (id, trading_date) VALUES (365, '2012-12-19');
INSERT INTO   trading_day (id, trading_date) VALUES (366, '2012-12-21');
INSERT INTO   trading_day (id, trading_date) VALUES (367, '2012-12-26');
INSERT INTO   trading_day (id, trading_date) VALUES (368, '2012-12-28');
INSERT INTO   trading_day (id, trading_date) VALUES (369, '2013-01-02');
INSERT INTO   trading_day (id, trading_date) VALUES (370, '2013-01-04');
INSERT INTO   trading_day (id, trading_date) VALUES (371, '2013-01-07');
INSERT INTO   trading_day (id, trading_date) VALUES (372, '2013-01-09');
INSERT INTO   trading_day (id, trading_date) VALUES (373, '2013-01-11');
INSERT INTO   trading_day (id, trading_date) VALUES (374, '2013-01-14');
INSERT INTO   trading_day (id, trading_date) VALUES (375, '2013-01-16');
INSERT INTO   trading_day (id, trading_date) VALUES (376, '2013-01-18');
INSERT INTO   trading_day (id, trading_date) VALUES (377, '2013-01-23');
INSERT INTO   trading_day (id, trading_date) VALUES (378, '2013-01-30');
INSERT INTO   trading_day (id, trading_date) VALUES (379, '2013-02-01');
INSERT INTO   trading_day (id, trading_date) VALUES (380, '2013-02-04');
INSERT INTO   trading_day (id, trading_date) VALUES (381, '2013-02-06');
INSERT INTO   trading_day (id, trading_date) VALUES (382, '2013-02-08');
INSERT INTO   trading_day (id, trading_date) VALUES (383, '2013-02-13');
INSERT INTO   trading_day (id, trading_date) VALUES (384, '2013-02-15');
INSERT INTO   trading_day (id, trading_date) VALUES (385, '2013-02-18');
INSERT INTO   trading_day (id, trading_date) VALUES (386, '2013-02-20');
INSERT INTO   trading_day (id, trading_date) VALUES (387, '2013-02-22');
INSERT INTO   trading_day (id, trading_date) VALUES (388, '2013-02-25');
INSERT INTO   trading_day (id, trading_date) VALUES (389, '2013-02-27');
INSERT INTO   trading_day (id, trading_date) VALUES (390, '2013-03-01');
INSERT INTO   trading_day (id, trading_date) VALUES (391, '2013-03-04');
INSERT INTO   trading_day (id, trading_date) VALUES (392, '2013-03-06');
INSERT INTO   trading_day (id, trading_date) VALUES (393, '2013-03-08');
INSERT INTO   trading_day (id, trading_date) VALUES (394, '2013-03-11');
INSERT INTO   trading_day (id, trading_date) VALUES (395, '2013-03-13');
INSERT INTO   trading_day (id, trading_date) VALUES (396, '2013-03-15');
INSERT INTO   trading_day (id, trading_date) VALUES (397, '2013-03-18');
INSERT INTO   trading_day (id, trading_date) VALUES (398, '2013-03-20');
INSERT INTO   trading_day (id, trading_date) VALUES (399, '2013-03-22');
INSERT INTO   trading_day (id, trading_date) VALUES (400, '2013-03-27');
INSERT INTO   trading_day (id, trading_date) VALUES (401, '2013-04-03');
INSERT INTO   trading_day (id, trading_date) VALUES (402, '2013-04-05');
INSERT INTO   trading_day (id, trading_date) VALUES (403, '2013-04-08');
INSERT INTO   trading_day (id, trading_date) VALUES (404, '2013-04-10');
INSERT INTO   trading_day (id, trading_date) VALUES (405, '2013-04-12');
INSERT INTO   trading_day (id, trading_date) VALUES (406, '2013-04-15');
INSERT INTO   trading_day (id, trading_date) VALUES (407, '2013-04-17');
INSERT INTO   trading_day (id, trading_date) VALUES (408, '2013-04-19');
INSERT INTO   trading_day (id, trading_date) VALUES (409, '2013-04-22');
INSERT INTO   trading_day (id, trading_date) VALUES (410, '2013-04-24');
INSERT INTO   trading_day (id, trading_date) VALUES (411, '2013-04-26');
INSERT INTO   trading_day (id, trading_date) VALUES (412, '2013-04-29');
INSERT INTO   trading_day (id, trading_date) VALUES (413, '2013-05-03');
INSERT INTO   trading_day (id, trading_date) VALUES (414, '2013-05-06');
INSERT INTO   trading_day (id, trading_date) VALUES (415, '2013-05-08');
INSERT INTO   trading_day (id, trading_date) VALUES (416, '2013-05-10');
INSERT INTO   trading_day (id, trading_date) VALUES (417, '2013-05-13');
INSERT INTO   trading_day (id, trading_date) VALUES (418, '2013-05-15');
INSERT INTO   trading_day (id, trading_date) VALUES (419, '2013-05-17');
INSERT INTO   trading_day (id, trading_date) VALUES (420, '2013-05-22');
INSERT INTO   trading_day (id, trading_date) VALUES (421, '2013-05-25');
INSERT INTO   trading_day (id, trading_date) VALUES (422, '2013-05-27');
INSERT INTO   trading_day (id, trading_date) VALUES (423, '2013-05-29');
INSERT INTO   trading_day (id, trading_date) VALUES (424, '2013-05-31');
INSERT INTO   trading_day (id, trading_date) VALUES (425, '2013-06-03');
INSERT INTO   trading_day (id, trading_date) VALUES (426, '2013-06-05');
INSERT INTO   trading_day (id, trading_date) VALUES (427, '2013-06-07');
INSERT INTO   trading_day (id, trading_date) VALUES (428, '2013-06-10');
INSERT INTO   trading_day (id, trading_date) VALUES (429, '2013-06-12');
INSERT INTO   trading_day (id, trading_date) VALUES (430, '2013-06-14');
INSERT INTO   trading_day (id, trading_date) VALUES (431, '2013-06-17');
INSERT INTO   trading_day (id, trading_date) VALUES (432, '2013-06-19');
INSERT INTO   trading_day (id, trading_date) VALUES (433, '2013-06-21');
INSERT INTO   trading_day (id, trading_date) VALUES (434, '2013-06-24');
INSERT INTO   trading_day (id, trading_date) VALUES (435, '2013-06-26');
INSERT INTO   trading_day (id, trading_date) VALUES (436, '2013-06-28');
INSERT INTO   trading_day (id, trading_date) VALUES (437, '2013-07-01');
INSERT INTO   trading_day (id, trading_date) VALUES (438, '2013-07-03');
INSERT INTO   trading_day (id, trading_date) VALUES (439, '2013-07-05');
INSERT INTO   trading_day (id, trading_date) VALUES (440, '2013-07-08');
INSERT INTO   trading_day (id, trading_date) VALUES (441, '2013-07-10');
INSERT INTO   trading_day (id, trading_date) VALUES (442, '2013-07-12');
INSERT INTO   trading_day (id, trading_date) VALUES (443, '2013-07-15');
INSERT INTO   trading_day (id, trading_date) VALUES (444, '2013-07-17');
INSERT INTO   trading_day (id, trading_date) VALUES (445, '2013-07-19');
INSERT INTO   trading_day (id, trading_date) VALUES (446, '2013-07-22');
INSERT INTO   trading_day (id, trading_date) VALUES (447, '2013-07-24');
INSERT INTO   trading_day (id, trading_date) VALUES (448, '2013-07-26');
INSERT INTO   trading_day (id, trading_date) VALUES (449, '2013-07-29');
INSERT INTO   trading_day (id, trading_date) VALUES (450, '2013-07-31');
INSERT INTO   trading_day (id, trading_date) VALUES (451, '2013-08-02');
INSERT INTO   trading_day (id, trading_date) VALUES (452, '2013-08-05');
INSERT INTO   trading_day (id, trading_date) VALUES (453, '2013-08-07');
INSERT INTO   trading_day (id, trading_date) VALUES (454, '2013-08-09');
INSERT INTO   trading_day (id, trading_date) VALUES (455, '2013-08-12');
INSERT INTO   trading_day (id, trading_date) VALUES (456, '2013-08-14');
INSERT INTO   trading_day (id, trading_date) VALUES (457, '2013-08-16');
INSERT INTO   trading_day (id, trading_date) VALUES (458, '2013-08-19');
INSERT INTO   trading_day (id, trading_date) VALUES (459, '2013-08-21');
INSERT INTO   trading_day (id, trading_date) VALUES (460, '2013-08-23');
INSERT INTO   trading_day (id, trading_date) VALUES (461, '2013-08-26');
INSERT INTO   trading_day (id, trading_date) VALUES (462, '2013-08-28');
INSERT INTO   trading_day (id, trading_date) VALUES (463, '2013-08-30');
INSERT INTO   trading_day (id, trading_date) VALUES (464, '2013-09-02');
INSERT INTO   trading_day (id, trading_date) VALUES (465, '2013-09-04');
INSERT INTO   trading_day (id, trading_date) VALUES (466, '2013-09-06');
INSERT INTO   trading_day (id, trading_date) VALUES (467, '2013-09-09');
INSERT INTO   trading_day (id, trading_date) VALUES (468, '2013-09-11');
INSERT INTO   trading_day (id, trading_date) VALUES (469, '2013-09-13');
INSERT INTO   trading_day (id, trading_date) VALUES (470, '2013-09-16');
INSERT INTO   trading_day (id, trading_date) VALUES (471, '2013-09-20');
INSERT INTO   trading_day (id, trading_date) VALUES (472, '2013-09-23');
INSERT INTO   trading_day (id, trading_date) VALUES (473, '2013-10-07');
INSERT INTO   trading_day (id, trading_date) VALUES (474, '2013-10-09');
INSERT INTO   trading_day (id, trading_date) VALUES (475, '2013-10-11');
INSERT INTO   trading_day (id, trading_date) VALUES (476, '2013-10-16');
INSERT INTO   trading_day (id, trading_date) VALUES (477, '2013-10-18');
INSERT INTO   trading_day (id, trading_date) VALUES (478, '2013-10-21');
INSERT INTO   trading_day (id, trading_date) VALUES (479, '2013-10-23');
INSERT INTO   trading_day (id, trading_date) VALUES (480, '2013-10-25');
INSERT INTO   trading_day (id, trading_date) VALUES (481, '2013-10-28');
INSERT INTO   trading_day (id, trading_date) VALUES (482, '2013-10-30');
INSERT INTO   trading_day (id, trading_date) VALUES (483, '2013-11-01');
INSERT INTO   trading_day (id, trading_date) VALUES (484, '2013-11-04');
INSERT INTO   trading_day (id, trading_date) VALUES (485, '2013-11-06');
INSERT INTO   trading_day (id, trading_date) VALUES (486, '2013-11-08');
INSERT INTO   trading_day (id, trading_date) VALUES (487, '2013-11-11');
INSERT INTO   trading_day (id, trading_date) VALUES (488, '2013-11-13');
INSERT INTO   trading_day (id, trading_date) VALUES (489, '2013-11-15');
INSERT INTO   trading_day (id, trading_date) VALUES (490, '2013-11-18');
INSERT INTO   trading_day (id, trading_date) VALUES (491, '2013-11-20');
INSERT INTO   trading_day (id, trading_date) VALUES (492, '2013-11-22');
INSERT INTO   trading_day (id, trading_date) VALUES (493, '2013-11-27');
INSERT INTO   trading_day (id, trading_date) VALUES (494, '2013-11-29');
INSERT INTO   trading_day (id, trading_date) VALUES (495, '2013-12-02');
INSERT INTO   trading_day (id, trading_date) VALUES (496, '2013-12-04');
INSERT INTO   trading_day (id, trading_date) VALUES (497, '2013-12-06');
INSERT INTO   trading_day (id, trading_date) VALUES (498, '2013-12-09');
INSERT INTO   trading_day (id, trading_date) VALUES (499, '2013-12-11');
INSERT INTO   trading_day (id, trading_date) VALUES (500, '2013-12-13');
INSERT INTO   trading_day (id, trading_date) VALUES (501, '2013-12-16');
INSERT INTO   trading_day (id, trading_date) VALUES (502, '2013-12-18');
INSERT INTO   trading_day (id, trading_date) VALUES (503, '2013-12-20');
INSERT INTO   trading_day (id, trading_date) VALUES (504, '2013-12-23');
INSERT INTO   trading_day (id, trading_date) VALUES (505, '2013-12-27');
INSERT INTO   trading_day (id, trading_date) VALUES (506, '2013-12-30');
INSERT INTO   trading_day (id, trading_date) VALUES (507, '2014-01-03');
INSERT INTO   trading_day (id, trading_date) VALUES (508, '2014-01-06');
INSERT INTO   trading_day (id, trading_date) VALUES (509, '2014-01-08');
INSERT INTO   trading_day (id, trading_date) VALUES (510, '2014-01-10');
INSERT INTO   trading_day (id, trading_date) VALUES (511, '2014-01-13');
INSERT INTO   trading_day (id, trading_date) VALUES (512, '2014-01-15');
INSERT INTO   trading_day (id, trading_date) VALUES (513, '2014-01-17');
INSERT INTO   trading_day (id, trading_date) VALUES (514, '2014-01-20');
INSERT INTO   trading_day (id, trading_date) VALUES (515, '2014-01-22');
INSERT INTO   trading_day (id, trading_date) VALUES (516, '2014-01-24');
INSERT INTO   trading_day (id, trading_date) VALUES (517, '2014-01-27');
INSERT INTO   trading_day (id, trading_date) VALUES (518, '2014-01-29');
INSERT INTO   trading_day (id, trading_date) VALUES (519, '2014-01-31');
INSERT INTO   trading_day (id, trading_date) VALUES (520, '2014-02-03');
INSERT INTO   trading_day (id, trading_date) VALUES (521, '2014-02-05');
INSERT INTO   trading_day (id, trading_date) VALUES (522, '2014-02-07');
INSERT INTO   trading_day (id, trading_date) VALUES (523, '2014-02-12');
INSERT INTO   trading_day (id, trading_date) VALUES (524, '2014-02-14');
INSERT INTO   trading_day (id, trading_date) VALUES (525, '2014-02-17');
INSERT INTO   trading_day (id, trading_date) VALUES (526, '2014-02-19');
INSERT INTO   trading_day (id, trading_date) VALUES (527, '2014-02-21');
INSERT INTO   trading_day (id, trading_date) VALUES (528, '2014-02-24');
INSERT INTO   trading_day (id, trading_date) VALUES (529, '2014-02-26');
INSERT INTO   trading_day (id, trading_date) VALUES (530, '2014-02-28');
INSERT INTO   trading_day (id, trading_date) VALUES (531, '2014-03-03');
INSERT INTO   trading_day (id, trading_date) VALUES (532, '2014-03-05');
INSERT INTO   trading_day (id, trading_date) VALUES (533, '2014-03-07');
INSERT INTO   trading_day (id, trading_date) VALUES (534, '2014-03-10');
INSERT INTO   trading_day (id, trading_date) VALUES (535, '2014-03-12');
INSERT INTO   trading_day (id, trading_date) VALUES (536, '2014-03-14');
INSERT INTO   trading_day (id, trading_date) VALUES (537, '2014-03-17');
INSERT INTO   trading_day (id, trading_date) VALUES (538, '2014-03-19');
INSERT INTO   trading_day (id, trading_date) VALUES (539, '2014-03-21');
INSERT INTO   trading_day (id, trading_date) VALUES (540, '2014-03-24');
INSERT INTO   trading_day (id, trading_date) VALUES (541, '2014-03-26');
INSERT INTO   trading_day (id, trading_date) VALUES (542, '2014-03-28');
INSERT INTO   trading_day (id, trading_date) VALUES (543, '2014-03-31');
INSERT INTO   trading_day (id, trading_date) VALUES (544, '2014-04-02');
INSERT INTO   trading_day (id, trading_date) VALUES (545, '2014-04-04');
INSERT INTO   trading_day (id, trading_date) VALUES (546, '2014-04-07');
INSERT INTO   trading_day (id, trading_date) VALUES (547, '2014-04-09');
INSERT INTO   trading_day (id, trading_date) VALUES (548, '2014-04-11');
INSERT INTO   trading_day (id, trading_date) VALUES (549, '2014-04-14');
INSERT INTO   trading_day (id, trading_date) VALUES (550, '2014-04-16');
INSERT INTO   trading_day (id, trading_date) VALUES (551, '2014-04-21');
INSERT INTO   trading_day (id, trading_date) VALUES (552, '2014-04-23');
INSERT INTO   trading_day (id, trading_date) VALUES (553, '2014-04-25');
INSERT INTO   trading_day (id, trading_date) VALUES (554, '2014-04-28');
INSERT INTO   trading_day (id, trading_date) VALUES (555, '2014-04-30');
INSERT INTO   trading_day (id, trading_date) VALUES (556, '2014-05-02');
INSERT INTO   trading_day (id, trading_date) VALUES (557, '2014-05-05');
INSERT INTO   trading_day (id, trading_date) VALUES (558, '2014-05-07');
INSERT INTO   trading_day (id, trading_date) VALUES (559, '2014-05-09');
INSERT INTO   trading_day (id, trading_date) VALUES (560, '2014-05-12');
INSERT INTO   trading_day (id, trading_date) VALUES (561, '2014-05-14');
INSERT INTO   trading_day (id, trading_date) VALUES (562, '2014-05-16');
INSERT INTO   trading_day (id, trading_date) VALUES (563, '2014-05-21');
INSERT INTO   trading_day (id, trading_date) VALUES (564, '2014-05-23');
INSERT INTO   trading_day (id, trading_date) VALUES (565, '2014-05-26');
INSERT INTO   trading_day (id, trading_date) VALUES (566, '2014-05-28');
INSERT INTO   trading_day (id, trading_date) VALUES (567, '2014-05-30');
INSERT INTO   trading_day (id, trading_date) VALUES (568, '2014-06-02');
INSERT INTO   trading_day (id, trading_date) VALUES (569, '2014-06-04');
INSERT INTO   trading_day (id, trading_date) VALUES (570, '2014-06-06');
INSERT INTO   trading_day (id, trading_date) VALUES (571, '2014-06-09');
INSERT INTO   trading_day (id, trading_date) VALUES (572, '2014-06-11');
INSERT INTO   trading_day (id, trading_date) VALUES (573, '2014-06-13');
INSERT INTO   trading_day (id, trading_date) VALUES (574, '2014-06-16');
INSERT INTO   trading_day (id, trading_date) VALUES (575, '2014-06-18');
INSERT INTO   trading_day (id, trading_date) VALUES (576, '2014-06-20');
INSERT INTO   trading_day (id, trading_date) VALUES (577, '2014-06-23');
INSERT INTO   trading_day (id, trading_date) VALUES (578, '2014-06-25');
INSERT INTO   trading_day (id, trading_date) VALUES (579, '2014-06-27');
INSERT INTO   trading_day (id, trading_date) VALUES (580, '2014-06-30');
INSERT INTO   trading_day (id, trading_date) VALUES (581, '2014-07-02');
INSERT INTO   trading_day (id, trading_date) VALUES (582, '2014-07-04');
INSERT INTO   trading_day (id, trading_date) VALUES (583, '2014-07-07');
INSERT INTO   trading_day (id, trading_date) VALUES (584, '2014-07-09');
INSERT INTO   trading_day (id, trading_date) VALUES (585, '2014-07-11');
INSERT INTO   trading_day (id, trading_date) VALUES (586, '2014-07-14');
INSERT INTO   trading_day (id, trading_date) VALUES (587, '2014-07-16');
INSERT INTO   trading_day (id, trading_date) VALUES (588, '2014-07-18');
INSERT INTO   trading_day (id, trading_date) VALUES (589, '2014-07-21');
INSERT INTO   trading_day (id, trading_date) VALUES (590, '2014-07-23');
INSERT INTO   trading_day (id, trading_date) VALUES (591, '2014-07-25');
INSERT INTO   trading_day (id, trading_date) VALUES (592, '2014-07-30');
INSERT INTO   trading_day (id, trading_date) VALUES (593, '2014-08-01');
INSERT INTO   trading_day (id, trading_date) VALUES (594, '2014-08-04');
INSERT INTO   trading_day (id, trading_date) VALUES (595, '2014-08-06');
INSERT INTO   trading_day (id, trading_date) VALUES (596, '2014-08-08');
INSERT INTO   trading_day (id, trading_date) VALUES (597, '2014-08-11');
INSERT INTO   trading_day (id, trading_date) VALUES (598, '2014-08-13');
INSERT INTO   trading_day (id, trading_date) VALUES (599, '2014-08-18');
INSERT INTO   trading_day (id, trading_date) VALUES (600, '2014-08-20');
INSERT INTO   trading_day (id, trading_date) VALUES (601, '2014-08-22');
INSERT INTO   trading_day (id, trading_date) VALUES (602, '2014-08-25');
INSERT INTO   trading_day (id, trading_date) VALUES (603, '2014-08-27');
INSERT INTO   trading_day (id, trading_date) VALUES (604, '2014-08-29');
INSERT INTO   trading_day (id, trading_date) VALUES (605, '2014-09-01');
INSERT INTO   trading_day (id, trading_date) VALUES (606, '2014-09-03');
INSERT INTO   trading_day (id, trading_date) VALUES (607, '2014-09-05');
INSERT INTO   trading_day (id, trading_date) VALUES (608, '2014-09-08');
INSERT INTO   trading_day (id, trading_date) VALUES (609, '2014-09-10');
INSERT INTO   trading_day (id, trading_date) VALUES (610, '2014-09-12');
INSERT INTO   trading_day (id, trading_date) VALUES (611, '2014-09-15');
INSERT INTO   trading_day (id, trading_date) VALUES (612, '2014-09-19');
INSERT INTO   trading_day (id, trading_date) VALUES (613, '2014-09-22');
INSERT INTO   trading_day (id, trading_date) VALUES (614, '2014-09-24');
INSERT INTO   trading_day (id, trading_date) VALUES (615, '2014-09-26');
INSERT INTO   trading_day (id, trading_date) VALUES (616, '2014-09-29');
INSERT INTO   trading_day (id, trading_date) VALUES (617, '2014-10-01');
INSERT INTO   trading_day (id, trading_date) VALUES (618, '2014-10-03');
INSERT INTO   trading_day (id, trading_date) VALUES (619, '2014-10-06');
INSERT INTO   trading_day (id, trading_date) VALUES (620, '2014-10-08');
INSERT INTO   trading_day (id, trading_date) VALUES (621, '2014-10-10');
INSERT INTO   trading_day (id, trading_date) VALUES (622, '2014-10-13');
INSERT INTO   trading_day (id, trading_date) VALUES (623, '2014-10-15');
INSERT INTO   trading_day (id, trading_date) VALUES (624, '2014-10-17');
INSERT INTO   trading_day (id, trading_date) VALUES (625, '2014-10-20');
INSERT INTO   trading_day (id, trading_date) VALUES (626, '2014-10-24');
INSERT INTO   trading_day (id, trading_date) VALUES (627, '2014-10-27');
INSERT INTO   trading_day (id, trading_date) VALUES (628, '2014-10-29');
INSERT INTO   trading_day (id, trading_date) VALUES (629, '2014-10-31');
INSERT INTO   trading_day (id, trading_date) VALUES (630, '2014-11-03');
INSERT INTO   trading_day (id, trading_date) VALUES (631, '2014-11-05');
INSERT INTO   trading_day (id, trading_date) VALUES (632, '2014-11-07');
INSERT INTO   trading_day (id, trading_date) VALUES (633, '2014-11-10');
INSERT INTO   trading_day (id, trading_date) VALUES (634, '2014-11-12');
INSERT INTO   trading_day (id, trading_date) VALUES (635, '2014-11-14');
INSERT INTO   trading_day (id, trading_date) VALUES (636, '2014-11-17');
INSERT INTO   trading_day (id, trading_date) VALUES (637, '2014-11-19');
INSERT INTO   trading_day (id, trading_date) VALUES (638, '2014-11-21');
INSERT INTO   trading_day (id, trading_date) VALUES (639, '2014-11-24');
INSERT INTO   trading_day (id, trading_date) VALUES (640, '2014-11-26');
INSERT INTO   trading_day (id, trading_date) VALUES (641, '2014-11-28');
INSERT INTO   trading_day (id, trading_date) VALUES (642, '2014-12-01');
INSERT INTO   trading_day (id, trading_date) VALUES (643, '2014-12-03');
INSERT INTO   trading_day (id, trading_date) VALUES (644, '2014-12-05');
INSERT INTO   trading_day (id, trading_date) VALUES (645, '2014-12-08');
INSERT INTO   trading_day (id, trading_date) VALUES (646, '2014-12-10');
INSERT INTO   trading_day (id, trading_date) VALUES (647, '2014-12-12');
INSERT INTO   trading_day (id, trading_date) VALUES (648, '2014-12-15');
INSERT INTO   trading_day (id, trading_date) VALUES (649, '2014-12-17');
INSERT INTO   trading_day (id, trading_date) VALUES (650, '2014-12-19');
INSERT INTO   trading_day (id, trading_date) VALUES (651, '2014-12-22');
INSERT INTO   trading_day (id, trading_date) VALUES (652, '2014-12-24');
INSERT INTO   trading_day (id, trading_date) VALUES (653, '2014-12-26');
INSERT INTO   trading_day (id, trading_date) VALUES (654, '2014-12-29');
INSERT INTO   trading_day (id, trading_date) VALUES (655, '2014-12-31');
INSERT INTO   trading_day (id, trading_date) VALUES (656, '2015-01-02');
INSERT INTO   trading_day (id, trading_date) VALUES (657, '2015-01-05');
INSERT INTO   trading_day (id, trading_date) VALUES (658, '2015-01-07');
INSERT INTO   trading_day (id, trading_date) VALUES (659, '2015-01-09');
INSERT INTO   trading_day (id, trading_date) VALUES (660, '2015-01-12');
INSERT INTO   trading_day (id, trading_date) VALUES (661, '2015-01-14');
INSERT INTO   trading_day (id, trading_date) VALUES (662, '2015-01-16');
INSERT INTO   trading_day (id, trading_date) VALUES (663, '2015-01-19');
INSERT INTO   trading_day (id, trading_date) VALUES (664, '2015-01-21');
INSERT INTO   trading_day (id, trading_date) VALUES (665, '2015-01-23');
INSERT INTO   trading_day (id, trading_date) VALUES (666, '2015-01-26');
INSERT INTO   trading_day (id, trading_date) VALUES (667, '2015-01-28');
INSERT INTO   trading_day (id, trading_date) VALUES (668, '2015-01-30');
INSERT INTO   trading_day (id, trading_date) VALUES (669, '2015-02-02');
INSERT INTO   trading_day (id, trading_date) VALUES (670, '2015-02-04');
INSERT INTO   trading_day (id, trading_date) VALUES (671, '2015-02-06');
INSERT INTO   trading_day (id, trading_date) VALUES (672, '2015-02-09');
INSERT INTO   trading_day (id, trading_date) VALUES (673, '2015-02-11');
INSERT INTO   trading_day (id, trading_date) VALUES (674, '2015-02-13');
INSERT INTO   trading_day (id, trading_date) VALUES (675, '2015-02-16');
INSERT INTO   trading_day (id, trading_date) VALUES (676, '2015-02-18');
INSERT INTO   trading_day (id, trading_date) VALUES (677, '2015-02-20');
INSERT INTO   trading_day (id, trading_date) VALUES (678, '2015-02-23');
INSERT INTO   trading_day (id, trading_date) VALUES (679, '2015-02-25');
INSERT INTO   trading_day (id, trading_date) VALUES (680, '2015-02-27');
INSERT INTO   trading_day (id, trading_date) VALUES (681, '2015-03-02');
INSERT INTO   trading_day (id, trading_date) VALUES (682, '2015-03-04');
INSERT INTO   trading_day (id, trading_date) VALUES (683, '2015-03-06');
INSERT INTO   trading_day (id, trading_date) VALUES (684, '2015-03-09');
INSERT INTO   trading_day (id, trading_date) VALUES (685, '2015-03-11');
INSERT INTO   trading_day (id, trading_date) VALUES (686, '2015-03-13');
INSERT INTO   trading_day (id, trading_date) VALUES (687, '2015-03-16');
INSERT INTO   trading_day (id, trading_date) VALUES (688, '2015-03-18');
INSERT INTO   trading_day (id, trading_date) VALUES (689, '2015-03-20');
INSERT INTO   trading_day (id, trading_date) VALUES (690, '2015-03-23');
INSERT INTO   trading_day (id, trading_date) VALUES (691, '2015-03-25');
INSERT INTO   trading_day (id, trading_date) VALUES (692, '2015-03-27');
INSERT INTO   trading_day (id, trading_date) VALUES (693, '2015-03-30');
INSERT INTO   trading_day (id, trading_date) VALUES (694, '2015-04-01');
INSERT INTO   trading_day (id, trading_date) VALUES (695, '2015-04-03');
INSERT INTO   trading_day (id, trading_date) VALUES (696, '2015-04-06');
INSERT INTO   trading_day (id, trading_date) VALUES (697, '2015-04-08');
INSERT INTO   trading_day (id, trading_date) VALUES (698, '2015-04-10');
INSERT INTO   trading_day (id, trading_date) VALUES (699, '2015-04-13');
INSERT INTO   trading_day (id, trading_date) VALUES (700, '2015-04-15');
INSERT INTO   trading_day (id, trading_date) VALUES (701, '2015-04-17');
INSERT INTO   trading_day (id, trading_date) VALUES (702, '2015-04-20');
INSERT INTO   trading_day (id, trading_date) VALUES (703, '2015-04-22');
INSERT INTO   trading_day (id, trading_date) VALUES (704, '2015-04-24');
INSERT INTO   trading_day (id, trading_date) VALUES (705, '2015-04-27');
INSERT INTO   trading_day (id, trading_date) VALUES (706, '2015-04-29');
INSERT INTO   trading_day (id, trading_date) VALUES (707, '2015-05-01');
INSERT INTO   trading_day (id, trading_date) VALUES (708, '2015-05-04');
INSERT INTO   trading_day (id, trading_date) VALUES (709, '2015-05-06');
INSERT INTO   trading_day (id, trading_date) VALUES (710, '2015-05-08');
INSERT INTO   trading_day (id, trading_date) VALUES (711, '2015-05-11');
INSERT INTO   trading_day (id, trading_date) VALUES (712, '2015-05-13');
INSERT INTO   trading_day (id, trading_date) VALUES (713, '2015-05-15');
INSERT INTO   trading_day (id, trading_date) VALUES (714, '2015-05-18');
INSERT INTO   trading_day (id, trading_date) VALUES (715, '2015-05-20');
INSERT INTO   trading_day (id, trading_date) VALUES (716, '2015-05-22');
INSERT INTO   trading_day (id, trading_date) VALUES (717, '2015-05-25');
INSERT INTO   trading_day (id, trading_date) VALUES (718, '2015-05-27');
INSERT INTO   trading_day (id, trading_date) VALUES (719, '2015-05-29');
INSERT INTO   trading_day (id, trading_date) VALUES (720, '2015-06-01');
INSERT INTO   trading_day (id, trading_date) VALUES (721, '2015-06-03');
INSERT INTO   trading_day (id, trading_date) VALUES (722, '2015-06-05');
INSERT INTO   trading_day (id, trading_date) VALUES (723, '2015-06-08');
INSERT INTO   trading_day (id, trading_date) VALUES (724, '2015-06-10');
INSERT INTO   trading_day (id, trading_date) VALUES (725, '2015-06-12');
INSERT INTO   trading_day (id, trading_date) VALUES (726, '2015-06-15');
INSERT INTO   trading_day (id, trading_date) VALUES (727, '2015-06-17');
INSERT INTO   trading_day (id, trading_date) VALUES (728, '2015-06-19');
INSERT INTO   trading_day (id, trading_date) VALUES (729, '2015-06-22');
INSERT INTO   trading_day (id, trading_date) VALUES (730, '2015-06-24');
INSERT INTO   trading_day (id, trading_date) VALUES (731, '2015-06-26');
INSERT INTO   trading_day (id, trading_date) VALUES (732, '2015-06-29');
INSERT INTO   trading_day (id, trading_date) VALUES (733, '2015-07-01');
INSERT INTO   trading_day (id, trading_date) VALUES (734, '2015-07-03');
INSERT INTO   trading_day (id, trading_date) VALUES (735, '2015-07-06');
INSERT INTO   trading_day (id, trading_date) VALUES (736, '2015-07-08');
INSERT INTO   trading_day (id, trading_date) VALUES (737, '2015-07-10');
INSERT INTO   trading_day (id, trading_date) VALUES (738, '2015-07-13');
INSERT INTO   trading_day (id, trading_date) VALUES (739, '2015-07-15');
INSERT INTO   trading_day (id, trading_date) VALUES (740, '2015-07-17');
INSERT INTO   trading_day (id, trading_date) VALUES (741, '2015-07-20');
INSERT INTO   trading_day (id, trading_date) VALUES (742, '2015-07-22');
INSERT INTO   trading_day (id, trading_date) VALUES (743, '2015-07-24');
INSERT INTO   trading_day (id, trading_date) VALUES (744, '2015-07-27');
INSERT INTO   trading_day (id, trading_date) VALUES (745, '2015-07-29');
INSERT INTO   trading_day (id, trading_date) VALUES (746, '2015-07-31');
INSERT INTO   trading_day (id, trading_date) VALUES (747, '2015-08-03');
INSERT INTO   trading_day (id, trading_date) VALUES (748, '2015-08-05');
INSERT INTO   trading_day (id, trading_date) VALUES (749, '2015-08-07');
INSERT INTO   trading_day (id, trading_date) VALUES (750, '2015-08-10');
INSERT INTO   trading_day (id, trading_date) VALUES (751, '2015-08-12');
INSERT INTO   trading_day (id, trading_date) VALUES (752, '2015-08-14');
INSERT INTO   trading_day (id, trading_date) VALUES (753, '2015-08-17');
INSERT INTO   trading_day (id, trading_date) VALUES (754, '2015-08-19');
INSERT INTO   trading_day (id, trading_date) VALUES (755, '2015-08-21');
INSERT INTO   trading_day (id, trading_date) VALUES (756, '2015-08-24');
INSERT INTO   trading_day (id, trading_date) VALUES (757, '2015-08-26');
INSERT INTO   trading_day (id, trading_date) VALUES (758, '2015-08-28');
INSERT INTO   trading_day (id, trading_date) VALUES (759, '2015-08-31');
INSERT INTO   trading_day (id, trading_date) VALUES (760, '2015-09-02');
INSERT INTO   trading_day (id, trading_date) VALUES (761, '2015-09-04');
INSERT INTO   trading_day (id, trading_date) VALUES (762, '2015-09-07');
INSERT INTO   trading_day (id, trading_date) VALUES (763, '2015-09-09');
INSERT INTO   trading_day (id, trading_date) VALUES (764, '2015-09-11');
INSERT INTO   trading_day (id, trading_date) VALUES (765, '2015-09-14');
INSERT INTO   trading_day (id, trading_date) VALUES (766, '2015-09-16');
INSERT INTO   trading_day (id, trading_date) VALUES (767, '2015-09-18');
INSERT INTO   trading_day (id, trading_date) VALUES (768, '2015-09-21');
INSERT INTO   trading_day (id, trading_date) VALUES (769, '2015-09-23');
INSERT INTO   trading_day (id, trading_date) VALUES (770, '2015-09-25');
INSERT INTO   trading_day (id, trading_date) VALUES (771, '2015-09-28');
INSERT INTO   trading_day (id, trading_date) VALUES (772, '2015-09-30');
INSERT INTO   trading_day (id, trading_date) VALUES (773, '2015-10-02');
INSERT INTO   trading_day (id, trading_date) VALUES (774, '2015-10-05');
INSERT INTO   trading_day (id, trading_date) VALUES (775, '2015-10-07');
INSERT INTO   trading_day (id, trading_date) VALUES (776, '2015-10-09');
INSERT INTO   trading_day (id, trading_date) VALUES (777, '2015-10-12');
INSERT INTO   trading_day (id, trading_date) VALUES (778, '2015-10-14');
INSERT INTO   trading_day (id, trading_date) VALUES (779, '2015-10-16');
INSERT INTO   trading_day (id, trading_date) VALUES (780, '2015-10-19');
INSERT INTO   trading_day (id, trading_date) VALUES (781, '2015-10-21');
INSERT INTO   trading_day (id, trading_date) VALUES (782, '2015-10-23');
INSERT INTO   trading_day (id, trading_date) VALUES (783, '2015-10-26');
INSERT INTO   trading_day (id, trading_date) VALUES (784, '2015-10-28');
INSERT INTO   trading_day (id, trading_date) VALUES (785, '2015-10-30');
INSERT INTO   trading_day (id, trading_date) VALUES (786, '2015-11-02');
INSERT INTO   trading_day (id, trading_date) VALUES (787, '2015-11-04');
INSERT INTO   trading_day (id, trading_date) VALUES (788, '2015-11-06');
INSERT INTO   trading_day (id, trading_date) VALUES (789, '2015-11-09');
INSERT INTO   trading_day (id, trading_date) VALUES (790, '2015-11-11');
INSERT INTO   trading_day (id, trading_date) VALUES (791, '2015-11-13');
INSERT INTO   trading_day (id, trading_date) VALUES (792, '2015-11-16');
INSERT INTO   trading_day (id, trading_date) VALUES (793, '2015-11-18');
INSERT INTO   trading_day (id, trading_date) VALUES (794, '2015-11-20');
INSERT INTO   trading_day (id, trading_date) VALUES (795, '2015-11-23');
INSERT INTO   trading_day (id, trading_date) VALUES (796, '2015-11-25');
INSERT INTO   trading_day (id, trading_date) VALUES (797, '2015-11-27');
INSERT INTO   trading_day (id, trading_date) VALUES (798, '2015-11-30');
INSERT INTO   trading_day (id, trading_date) VALUES (799, '2015-12-02');
INSERT INTO   trading_day (id, trading_date) VALUES (800, '2015-12-04');
INSERT INTO   trading_day (id, trading_date) VALUES (801, '2015-12-07');
INSERT INTO   trading_day (id, trading_date) VALUES (802, '2015-12-09');
INSERT INTO   trading_day (id, trading_date) VALUES (803, '2015-12-11');
INSERT INTO   trading_day (id, trading_date) VALUES (804, '2015-12-14');
INSERT INTO   trading_day (id, trading_date) VALUES (805, '2015-12-16');
INSERT INTO   trading_day (id, trading_date) VALUES (806, '2015-12-18');
INSERT INTO   trading_day (id, trading_date) VALUES (807, '2015-12-21');
INSERT INTO   trading_day (id, trading_date) VALUES (808, '2015-12-23');
INSERT INTO   trading_day (id, trading_date) VALUES (809, '2015-12-28');
INSERT INTO   trading_day (id, trading_date) VALUES (810, '2015-12-30');
INSERT INTO   trading_day (id, trading_date) VALUES (811, '2016-01-04');
INSERT INTO   trading_day (id, trading_date) VALUES (812, '2016-01-06');
INSERT INTO   trading_day (id, trading_date) VALUES (813, '2016-01-08');
INSERT INTO   trading_day (id, trading_date) VALUES (814, '2016-01-11');
INSERT INTO   trading_day (id, trading_date) VALUES (815, '2016-01-13');
INSERT INTO   trading_day (id, trading_date) VALUES (816, '2016-01-15');
INSERT INTO   trading_day (id, trading_date) VALUES (817, '2016-01-18');
INSERT INTO   trading_day (id, trading_date) VALUES (818, '2016-01-20');
INSERT INTO   trading_day (id, trading_date) VALUES (819, '2016-01-22');
INSERT INTO   trading_day (id, trading_date) VALUES (820, '2016-01-25');
INSERT INTO   trading_day (id, trading_date) VALUES (821, '2016-01-27');
INSERT INTO   trading_day (id, trading_date) VALUES (822, '2016-01-29');
INSERT INTO   trading_day (id, trading_date) VALUES (823, '2016-02-01');
INSERT INTO   trading_day (id, trading_date) VALUES (824, '2016-02-03');
INSERT INTO   trading_day (id, trading_date) VALUES (825, '2016-02-05');
INSERT INTO   trading_day (id, trading_date) VALUES (826, '2016-02-08');
INSERT INTO   trading_day (id, trading_date) VALUES (827, '2016-02-10');
INSERT INTO   trading_day (id, trading_date) VALUES (828, '2016-02-12');
INSERT INTO   trading_day (id, trading_date) VALUES (829, '2016-02-15');
INSERT INTO   trading_day (id, trading_date) VALUES (830, '2016-02-17');
INSERT INTO   trading_day (id, trading_date) VALUES (831, '2016-02-19');
INSERT INTO   trading_day (id, trading_date) VALUES (832, '2016-02-22');
INSERT INTO   trading_day (id, trading_date) VALUES (833, '2016-02-24');
INSERT INTO   trading_day (id, trading_date) VALUES (834, '2016-02-26');
INSERT INTO   trading_day (id, trading_date) VALUES (835, '2016-02-29');
INSERT INTO   trading_day (id, trading_date) VALUES (836, '2016-03-02');
INSERT INTO   trading_day (id, trading_date) VALUES (837, '2016-03-04');
INSERT INTO   trading_day (id, trading_date) VALUES (838, '2016-03-07');
INSERT INTO   trading_day (id, trading_date) VALUES (839, '2016-03-09');
INSERT INTO   trading_day (id, trading_date) VALUES (840, '2016-03-11');
INSERT INTO   trading_day (id, trading_date) VALUES (841, '2016-03-14');
INSERT INTO   trading_day (id, trading_date) VALUES (842, '2016-03-16');
INSERT INTO   trading_day (id, trading_date) VALUES (843, '2016-03-18');
INSERT INTO   trading_day (id, trading_date) VALUES (844, '2016-03-21');
INSERT INTO   trading_day (id, trading_date) VALUES (845, '2016-03-23');
INSERT INTO   trading_day (id, trading_date) VALUES (846, '2016-03-25');
INSERT INTO   trading_day (id, trading_date) VALUES (847, '2016-03-28');
INSERT INTO   trading_day (id, trading_date) VALUES (848, '2016-03-30');
INSERT INTO   trading_day (id, trading_date) VALUES (849, '2016-04-01');
INSERT INTO   trading_day (id, trading_date) VALUES (850, '2016-04-04');
INSERT INTO   trading_day (id, trading_date) VALUES (851, '2016-04-06');
INSERT INTO   trading_day (id, trading_date) VALUES (852, '2016-04-08');
INSERT INTO   trading_day (id, trading_date) VALUES (853, '2016-04-11');
INSERT INTO   trading_day (id, trading_date) VALUES (854, '2016-04-13');
INSERT INTO   trading_day (id, trading_date) VALUES (855, '2016-04-15');
INSERT INTO   trading_day (id, trading_date) VALUES (856, '2016-04-18');
INSERT INTO   trading_day (id, trading_date) VALUES (857, '2016-04-20');
INSERT INTO   trading_day (id, trading_date) VALUES (858, '2016-04-22');
INSERT INTO   trading_day (id, trading_date) VALUES (859, '2016-04-25');
INSERT INTO   trading_day (id, trading_date) VALUES (860, '2016-04-27');
INSERT INTO   trading_day (id, trading_date) VALUES (861, '2016-04-29');


INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,2,106836,NULL ,NULL);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,3,106836,10,1068360);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,4,103631,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,5,103631,10,1036310);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,6,103631,42,4352502);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,7,103631,4,414524);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,8,106739,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,9,106739,22,2348258);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,10,109941,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,11,113239,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,12,113239,37,4189843);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,13,113239,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,14,113239,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,15,113239,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,16,113239,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,17,113239,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,18,113239,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,19,109842,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,20,109842,30,3295260);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,21,106547,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,22,103351,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,23,100251,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,24,92601,30,2778030);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,25,92601,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,26,95379,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,27,95379,10,953790);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,28,98240,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,29,98240,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,30,98240,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,31,95293,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,32,92435,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,33,92435,18,1663830);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,34,92435,4,369740);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,35,92435,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,36,92435,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,37,92435,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,38,92435,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,39,92435,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,40,95208,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,41,98064,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,42,98064,10,980640);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,43,101005,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,44,101005,10,1010050);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,45,104035,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,46,107156,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,47,107156,11,1178716);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,48,110000,22,2420000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,49,113300,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,50,116699,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,51,120199,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,52,120199,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,53,120199,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,54,120199,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,55,116594,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,56,115000,110,12650000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,57,115000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,58,57500,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,59,59225,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,60,61001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,61,61001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,62,62831,10,628310);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,63,62833,5,314165);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,64,64717,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,65,66658,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,66,68657,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,67,70716,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,68,72837,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,69,75022,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,70,75023,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,71,75023,30,2250690);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,72,77273,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,73,77273,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,74,77274,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,75,77275,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,76,77276,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,77,77276,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,78,77277,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,79,79595,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,80,80001,60,4800060);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,81,82200,6,493200);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,82,79001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,83,81371,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,84,82001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,85,84001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,86,84001,34,2856034);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,87,84001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,88,84101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,89,84101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,90,84101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,91,86624,160,13859840);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,92,86625,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,93,89223,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,94,89223,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,95,90001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,96,91001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,97,93001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,98,93001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,99,93001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,100,93001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,101,93001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,102,93002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,103,93000,30,2790000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,104,95001,40,3800040);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,105,95001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,106,95001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,107,95001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,108,95001,19,1805019);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,109,95001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,110,95001,60,5700060);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,111,95000,1,95000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,112,95001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,113,95001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,114,95001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,115,95001,19,1805019);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,116,95001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,117,95001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,118,95002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,119,95002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,120,95002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,121,95002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,122,95002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,123,95002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,124,95002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,125,95002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,126,97850,70,6849500);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,127,97850,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,128,97850,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,129,100785,45,4535325);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,130,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,131,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,132,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,133,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,134,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,135,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,136,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,137,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,138,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,139,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,140,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,141,100785,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,142,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,143,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,144,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,145,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,146,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,147,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,148,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,149,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,150,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,151,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,152,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,153,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,154,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,155,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,156,100785,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,157,94845,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,158,94845,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,159,94845,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,160,94845,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,161,94845,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,162,94845,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,163,97690,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,164,100001,5,500005);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,165,103001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,166,103002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,167,103002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,168,103002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,169,103002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,170,103000,20,2060000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,171,102999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,172,106002,18,1908036);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,173,106002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,174,106002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,175,106091,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,176,108000,30,3240000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,177,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,178,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,179,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,180,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,181,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,182,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,183,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,184,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,185,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,186,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,187,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,188,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,189,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,190,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,191,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,192,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,193,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,194,108000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,195,110000,7,770000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,196,110000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,197,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,198,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,199,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,200,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,201,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,202,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,203,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,204,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,205,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,206,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,207,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,208,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,209,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,210,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,211,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,212,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,213,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,214,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,215,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,216,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,217,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,218,110001,43,4730043);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,219,113301,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,220,113302,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,221,113302,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,222,113302,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,223,113302,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,224,113302,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,225,113302,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,226,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,227,113302,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,228,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,229,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,230,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,231,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,232,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,233,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,234,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,235,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,236,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,237,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,238,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,239,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,240,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,241,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,242,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,243,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,244,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,245,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,246,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,247,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,248,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,249,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,250,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,251,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,252,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,253,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,254,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,255,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,256,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,257,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,258,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,259,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,260,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,261,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,262,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,263,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,264,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,265,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,266,113305,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,267,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,268,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,269,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,270,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,271,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,272,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,273,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,274,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,275,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,276,113306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,277,113307,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,278,113308,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,279,113308,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,280,113308,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,281,113308,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,282,116707,5,583535);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,283,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,284,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,285,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,286,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,287,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,288,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,289,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,290,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,291,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,292,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,293,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,294,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,295,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,296,116707,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,297,113306,14,1586284);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,298,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,299,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,300,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,301,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,302,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,303,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,304,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,305,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,306,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,307,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,308,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,309,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,310,113206,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,311,116602,26,3031652);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,312,116606,26,3031756);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,313,116602,50,5830100);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,314,116602,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,315,116602,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,316,116602,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,317,116602,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,318,116602,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,319,116200,30,3486000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,320,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,321,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,322,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,323,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,324,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,325,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,326,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,327,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,328,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,329,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,330,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,331,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,332,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,333,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,334,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,335,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,336,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,337,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,338,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,339,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,340,116200,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,341,118001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,342,118001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,343,118001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,344,118001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,345,118001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,346,118001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,347,114999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,348,111550,15,1673250);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,349,114462,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,350,114462,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,351,119001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,352,119001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,353,119001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,354,119001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,355,119001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,356,119001,85,10115085);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,357,118999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,358,118999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,359,118999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,360,118999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,361,118999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,362,118999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,363,115999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,364,115999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,365,115999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,366,115999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,367,115999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,368,115999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,369,115999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,370,114999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,371,114999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,372,111550,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,373,109999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,374,109999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,375,111000,48,5328000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,376,111001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,377,111001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,378,111001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,379,111001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,380,111001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,381,110999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,382,110999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,383,110999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,384,110999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,385,110999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,386,111000,6,666000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,387,111001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,388,111001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,389,111001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,390,111001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,391,114001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,392,114001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,393,114001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,394,119001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,395,119001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,396,119001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,397,119001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,398,119001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,399,119001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,400,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,401,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,402,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,403,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,404,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,405,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,406,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,407,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,408,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,409,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,410,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,411,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,412,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,413,125001,72,9000072);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,414,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,415,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,416,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,417,125000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,418,125000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,419,125000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,420,125000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,421,111001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,422,111001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,423,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,424,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,425,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,426,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,427,125001,150,18750150);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,428,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,429,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,430,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,431,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,432,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,433,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,434,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,435,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,436,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,437,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,438,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,439,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,440,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,441,124999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,442,123037,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,443,123037,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,444,123037,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,445,123037,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,446,123037,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,447,123037,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,448,123035,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,449,123035,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,450,123035,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,451,123035,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,452,123035,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,453,123035,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,454,123035,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,455,123035,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,456,123035,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,457,123034,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,458,123034,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,459,123034,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,460,123034,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,461,123034,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,462,123034,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,463,123034,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,464,123034,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,465,123034,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,466,123034,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,467,123034,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,468,123033,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,469,123033,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,470,123033,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,471,123033,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,472,123033,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,473,119999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,474,125000,104,13000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,475,125000,45,5625000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,476,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,477,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,478,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,479,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,480,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,481,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,482,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,483,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,484,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,485,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,486,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,487,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,488,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,489,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,490,125001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,491,128001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,492,128001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,493,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,494,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,495,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,496,130000,114,14820000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,497,130000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,498,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,499,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,500,130000,100,13000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,501,130000,50,6500000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,502,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,503,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,504,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,505,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,506,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,507,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,508,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,509,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,510,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,511,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,512,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,513,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,514,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,515,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,516,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,517,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,518,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,519,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,520,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,521,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,522,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,523,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,524,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,525,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,526,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,527,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,528,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,529,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,530,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,531,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,532,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,533,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,534,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,535,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,536,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,537,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,538,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,539,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,540,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,541,130001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,542,129999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,543,129999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,544,129999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,545,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,546,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,547,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,548,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,549,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,550,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,551,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,552,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,553,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,554,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,555,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,556,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,557,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,558,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,559,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,560,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,561,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,562,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,563,129998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,564,129997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,565,129997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,566,129997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,567,129997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,581,61854,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,582,61854,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,583,61854,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,584,61854,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,585,61854,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,586,61854,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,587,61854,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,588,61854,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,589,61854,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,590,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,591,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,592,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,593,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,594,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,595,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,596,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,597,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,598,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,599,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,600,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,601,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,602,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,603,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,604,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,605,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,606,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,607,61856,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,608,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,609,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,610,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,611,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,612,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,613,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,614,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,615,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,616,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,617,62001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,618,62001,15,930015);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,619,62000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,620,62000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,621,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,622,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,623,61857,3,185571);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,624,61856,33,2041248);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,625,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,626,61856,6,371136);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,627,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,628,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,629,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,630,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,631,61856,21,1298976);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,632,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,633,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,634,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,635,61856,5,309280);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,636,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,637,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,638,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,639,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,640,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,641,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,642,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,643,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,644,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,645,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,646,61856,9,556704);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,647,61858,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,648,61857,20,1237140);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,649,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,650,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,651,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,652,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,653,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,654,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,655,61856,217,13422752);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,656,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,657,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,658,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,659,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,660,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,661,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,662,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,663,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,664,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,665,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,666,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,667,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,669,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,670,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,671,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,672,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,674,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,675,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,676,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,677,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,678,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,679,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,680,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,681,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,682,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,683,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,684,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,685,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,686,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,687,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,688,61856,29,1793824);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,689,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,690,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,691,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,692,61855,29,1793795);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,693,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,694,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,695,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,696,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,697,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,698,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,699,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,700,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,701,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,702,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,704,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,705,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,706,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,708,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,709,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,710,61857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,711,61856,71,4391776);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,712,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,713,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,714,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,715,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,716,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,717,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,718,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,719,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,720,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,721,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,722,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,723,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,724,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,725,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,726,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,727,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,728,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,730,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,731,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,732,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,733,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,734,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,735,61856,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,736,60999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,737,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,738,61315,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,739,60999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,741,60999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,743,61856,32,1979392);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,744,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,745,61855,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,746,61499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,747,61499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,748,61499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,749,61499,32,1967968);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,750,61499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,751,61499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,752,61499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,753,61499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,754,61499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,755,61499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,756,61499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,757,61499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,758,60999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,759,60999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,760,61856,61,3773216);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,761,62001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,762,62001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,763,63861,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,764,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,765,63501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,768,63501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,769,63501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,770,63499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,771,63499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,772,63501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,773,63501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,774,63501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,775,63499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,776,63501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,777,63501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,778,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,779,63501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,780,63501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,781,64501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,782,64501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,783,64501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,786,64501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,787,65001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,788,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,789,65001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,790,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,791,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,792,65501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,793,65502,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,794,65502,83,5436666);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,795,64000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,796,64000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,797,63999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,798,0,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,799,63899,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,800,63898,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,801,63900,20,1278000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,802,63500,100,6350000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,803,63500,16,1016000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,804,63500,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,805,63499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,806,63499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,807,63499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,808,63499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,809,63499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,810,63498,10,634980);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,811,63498,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,812,63498,100,6349800);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,813,63498,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,814,63498,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,815,63498,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,816,63498,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,817,63498,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,818,63498,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,819,63498,5,317490);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,820,63400,3,190200);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,821,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,822,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,823,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,824,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,825,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,826,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,827,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,828,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,829,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,830,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,831,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,832,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,833,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,834,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,835,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,836,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,837,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,838,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,839,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,840,61999,3,185997);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,841,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,842,61999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,843,63000,100,6300000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,844,62999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,845,62999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,846,null,null,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,847,63000,112,7056000);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,848,63000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,849,63000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,850,63000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,851,63001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,852,63001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,853,64801,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,855,62857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,856,62857,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,859,63001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id,reference_price,total_trade_volume,total_trade_value)
VALUES (400,860,63001,0,0);




INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,2,41531,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,2,41531,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,3,41531,5,207655);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,4,40286,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,5,40286,15,604290);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,6,40286,100,4028600);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,7,39078,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,8,40000,16,640000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,9,39999,8,319992);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,10,39999,100,3999900);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,11,38800,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,12,37636,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,13,36507,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,14,36507,40,1460280);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,15,37602,53,1992906);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,16,38730,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,17,39891,90,3590190);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,18,39891,121,4826811);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,19,39891,30,1196730);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,20,38695,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,21,37535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,22,36999,200,7399800);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,23,35890,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,24,34814,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,25,35858,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,26,36933,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,27,36933,20,738660);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,28,35826,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,29,35826,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,30,35826,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,31,35826,111,3976686);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,32,35826,58,2077908);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,33,36000,98,3528000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,34,36000,52,1872000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,35,31728,79,2506512);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,36,32679,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,37,33659,304,10232336);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,38,33659,44,1480996);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,39,34668,256,8875008);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,40,35000,179,6265000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,41,35000,40,1400000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,42,35000,133,4655000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,43,35000,9,315000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,44,35000,30,1050000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,45,35000,100,3500000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,46,35000,13,455000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,47,35000,30,1050000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,48,35001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,49,35001,155,5425155);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,50,35001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,51,35001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,52,35001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,53,35001,40,1400040);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,54,35001,11,385011);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,55,35001,28,980028);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,56,35000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,57,35000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,58,35000,9,315000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,59,35000,275,9625000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,60,34999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,61,34999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,62,34999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,63,34999,320,11199680);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,64,34998,20,699960);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,65,34998,51,1784898);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,66,34998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,67,34998,50,1749900);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,68,34998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,69,34998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,70,34998,39,1364922);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,71,34998,25,874950);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,72,34998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,73,34998,50,1749900);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,74,34998,177,6194646);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,75,34998,12,419976);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,76,35000,581,20335000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,77,35000,42,1470000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,78,35000,1,41930000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,79,35000,85,2975000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,80,35000,267,9345000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,81,35000,60,2100000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,82,36005,120,4320600);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,83,36005,4,144020);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,84,36006,93,3348558);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,85,37001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,86,37000,57,2109000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,87,34000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,88,34720,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,89,34726,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,90,35767,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,91,36000,342,12312000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,92,36000,159,5724000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,93,36000,50,1800000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,94,36000,60,2160000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,95,36000,175,6300000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,96,36000,10,360000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,97,36000,9,324000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,98,36501,108,3942108);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,99,37001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,100,37000,70,2590000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,101,37000,43,1591000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,102,37000,49,1813000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,103,37000,12,444000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,104,37001,78,2886078);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,105,38000,25,950000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,106,38000,122,4636000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,107,38001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,108,38002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,109,38001,31,1178031);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,110,38002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,111,38003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,112,38004,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,113,38005,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,114,38005,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,115,38000,119,4522000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,116,37999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,117,38000,155,5890000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,118,38001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,119,38001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,120,38001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,121,38001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,122,38001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,123,38001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,124,39000,29,1131000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,125,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,126,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,127,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,128,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,129,39000,21,819000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,130,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,131,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,132,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,133,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,134,39000,15,585000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,135,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,136,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,137,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,138,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,139,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,140,40170,6,241020);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,141,40170,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,142,40170,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,143,40170,13,522210);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,144,40170,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,145,40170,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,146,40170,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,147,40170,35,1405950);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,148,40170,93,3735810);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,149,40170,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,150,40170,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,151,40170,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,152,40170,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,153,40170,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,154,40170,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,155,40170,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,156,41375,29,1199875);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,157,41801,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,158,41801,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,159,41801,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,160,41801,55,2299055);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,161,41801,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,162,41801,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,163,42680,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,164,44346,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,165,45676,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,166,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,167,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,168,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,169,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,170,46001,68,3128068);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,171,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,172,47381,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,173,47382,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,174,47501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,175,48803,15,732045);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,176,48803,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,177,48803,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,178,50000,93,4650000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,179,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,180,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,181,51501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,182,51501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,183,44337,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,184,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,185,46350,30,1390500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,186,47740,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,187,48001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,188,48001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,189,48002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,190,48002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,191,48002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,192,48003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,193,48003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,194,48003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,195,48003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,196,48003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,197,48004,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,198,48004,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,199,49444,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,200,49444,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,201,49444,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,202,49444,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,203,49444,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,204,50927,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,205,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,206,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,207,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,208,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,209,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,210,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,211,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,212,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,213,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,214,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,215,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,216,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,217,51001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,218,51001,10,510010);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,219,52531,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,220,54106,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,221,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,222,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,223,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,224,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,225,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,226,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,227,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,228,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,229,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,230,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,231,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,232,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,233,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,234,54107,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,235,54111,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,236,54111,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,237,54111,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,238,54111,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,239,54201,29,1571829);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,240,54201,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,241,54202,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,242,55829,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,243,57503,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,244,57503,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,245,59228,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,246,61001,261,15921261);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,247,62831,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,248,62831,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,249,64717,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,250,66658,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,251,66659,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,252,66659,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,253,66659,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,254,66659,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,255,66659,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,256,66660,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,257,66660,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,258,66660,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,259,66859,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,260,70001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,261,70001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,262,70000,10,700000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,263,70000,129,9030000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,264,70000,68,4760000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,265,70001,68,4760068);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,266,70001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,267,70001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,268,70001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,269,72001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,270,72001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,271,72001,64,4608064);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,272,72001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,273,72001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,274,72001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,275,72000,73,5256000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,276,71999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,277,72001,68,4896068);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,278,72001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,279,72001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,280,72001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,281,74161,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,282,76385,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,283,78676,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,284,80001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,285,80000,92,7360000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,286,80000,92,7360000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,287,80000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,288,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,289,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,290,80101,10,801010);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,291,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,292,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,293,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,294,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,295,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,296,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,297,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,298,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,299,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,300,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,301,80101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,302,80102,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,303,81000,19,1539000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,304,81000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,305,81000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,306,81000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,307,81000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,308,81101,60,4866060);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,309,81101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,310,81101,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,311,83501,28,2338028);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,312,83502,28,2338056);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,313,74364,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,314,76394,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,315,78891,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,316,81257,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,317,83501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,318,83501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,319,83001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,320,85001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,321,85001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,322,87500,60,5250000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,323,87501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,324,87501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,325,87501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,326,87501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,327,87501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,328,87501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,329,87501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,330,88501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,331,88501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,332,88501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,333,88501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,334,88000,147,12936000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,335,88001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,336,88001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,337,88001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,338,88001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,339,88001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,340,88001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,341,88001,55,4840055);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,342,88001,19,1672019);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,343,88000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,344,89000,20,1780000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,345,88999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,346,86330,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,347,86330,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,348,86330,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,349,86330,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,350,86330,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,351,86330,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,352,86330,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,353,86000,45,3870000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,354,86001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,355,86000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,356,86001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,357,86000,5,430000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,358,86000,80,6880000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,359,86001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,360,88001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,361,89000,22,1958000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,362,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,363,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,364,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,365,89001,10,890010);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,366,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,367,89000,55,4895000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,368,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,369,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,370,89000,20,1780000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,371,89000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,372,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,373,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,374,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,375,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,376,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,377,86331,30,2589930);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,378,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,379,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,380,89000,50,4450000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,381,89000,42,3738000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,382,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,383,89001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,384,89002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,385,89002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,386,89002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,387,89003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,388,89001,4,356004);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,389,89002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,390,89002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,391,91501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,392,90000,38,3420000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,393,90000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,394,90501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,395,90501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,396,90601,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,397,90601,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,398,90601,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,399,90601,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,400,95001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,401,97001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,402,97001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,403,97001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,404,97001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,405,97001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,406,97001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,407,97001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,408,97001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,409,97001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,410,97001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,411,97001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,412,97001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,413,97001,175,16975175);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,414,98001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,415,99001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,416,99001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,417,99500,15,1492500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,418,99500,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,419,100001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,420,100001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,421,89001,4,356004);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,422,89002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,423,100001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,424,100001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,425,100001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,426,100003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,427,100003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,428,100003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,429,100003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,430,100003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,431,100003,225,22500675);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,432,100003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,433,103000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,434,105001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,435,105000,4,420000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,436,105000,9,945000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,437,105000,28,2940000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,438,108001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,439,108000,34,3672000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,440,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,441,110000,42,4620000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,442,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,443,110001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,444,113001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,445,113001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,446,113001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,447,113001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,448,115001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,449,115001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,450,106808,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,451,106808,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,452,110012,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,453,113312,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,454,113313,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,455,113314,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,456,113315,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,457,113315,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,458,113316,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,459,113317,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,460,113317,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,461,113317,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,462,113315,130,14730950);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,463,113315,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,464,113315,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,465,113315,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,466,113315,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,467,113315,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,468,113315,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,469,113315,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,470,113315,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,471,112999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,472,112999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,473,112999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,474,113315,50,5665750);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,475,116001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,476,119001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,477,120001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,478,120000,60,7200000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,479,120001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,480,123001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,481,123001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,482,125001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,483,125001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,484,123000,92,11316000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,485,125001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,486,125001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,487,125001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,488,125001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,489,125001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,490,125001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,491,127001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,492,128000,25,3200000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,493,130001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,494,130001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,495,130001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,496,132001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,497,130001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,498,131000,29,3799000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,499,131000,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,500,131000,100,13100000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,501,131001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,502,131001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,503,131001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,504,131001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,505,132001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,506,132001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,507,132000,274,36168000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,508,132001,26,3432026);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,509,132001,126,16632126);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,510,132005,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,511,133001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,512,133001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,513,133001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,514,134001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,515,134001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,516,134001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,517,134001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,518,134001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,519,135001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,520,135001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,521,135001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,522,135001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,523,135001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,524,135001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,525,135000,6,810000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,526,135001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,527,135001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,528,135003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,529,135003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,530,135003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,531,135003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,532,135003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,533,135003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,534,135003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,535,135003,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,536,135002,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,537,138001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,538,138001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,539,138001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,540,138001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,541,138001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,542,138000,100,13800000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,543,138000,500,69000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,544,138000,50,6900000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,545,138000,65,8970000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,546,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,547,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,548,138000,180,24840000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,549,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,550,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,551,138000,60,8280000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,552,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,553,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,554,137999,15,2069985);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,555,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,556,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,557,137999,5,689995);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,558,137998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,559,137998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,560,138000,15,2070000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,561,137997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,562,137997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,563,137997,10,1379970);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,564,137997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,565,137997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,566,137997,16,2207952);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,567,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,568,138001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,569,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,570,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,571,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,572,138001,92,12696092);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,573,138001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,574,138001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,575,138001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,576,138001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,577,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,578,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,579,137999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,580,138000,175,24150000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,581,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,582,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,583,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,584,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,585,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,586,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,587,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,588,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,589,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,590,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,591,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,592,138000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,593,140001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,594,140001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,595,139999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,596,139999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,597,140000,20,2800000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,598,140000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,599,136774,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,600,140001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,601,140001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,602,140001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,603,140001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,604,140001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,605,140001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,606,140001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,607,46667,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,608,46667,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,609,48067,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,610,46667,195,9100065);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,611,46667,69,3220023);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,612,46668,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,613,48001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,614,48001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,615,48001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,616,49001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,617,49002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,618,49002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,619,49002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,620,49002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,621,49002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,622,49002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,623,49002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,624,49002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,625,49003,40,1960120);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,626,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,627,50001,145,7250145);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,628,50000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,629,50000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,630,50001,80,4000080);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,631,50000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,632,50001,5,250005);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,633,50001,90,4500090);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,634,50000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,635,50000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,636,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,637,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,638,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,639,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,640,50000,75,3750000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,641,49999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,642,49999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,643,49999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,644,50000,10,500000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,645,50000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,646,50000,20,1000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,647,49999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,648,49999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,649,49999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,650,49999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,651,49999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,652,49999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,653,49999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,654,50000,341,17050000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,655,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,656,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,657,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,658,50000,125,6250000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,659,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,660,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,661,50000,63,3150000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,662,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,663,50001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,664,50501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,665,50501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,666,50500,90,4545000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,668,50501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,669,50526,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,670,50526,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,671,50526,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,673,50526,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,674,50525,28,1414700);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,675,50524,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,676,50524,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,677,50524,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,678,50524,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,679,50524,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,680,50524,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,681,50523,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,682,50524,100,5052400);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,683,51000,186,9486000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,684,51000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,685,51000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,686,51000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,687,52530,6,315180);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,688,52530,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,689,52530,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,690,52530,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,691,52530,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,692,52530,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,693,52530,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,695,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,696,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,697,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,698,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,699,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,700,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,701,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,703,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,704,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,705,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,707,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,708,52535,112,5883920);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,709,52534,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,710,52534,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,711,52534,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,712,52535,100,5253500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,713,52535,70,3677450);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,715,52551,118,6201018);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,716,53001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,717,53001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,719,53001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,720,53100,60,3186000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,721,53000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,722,52550,182,9564100);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,725,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,726,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,727,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,729,52535,30,1576050);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,730,53001,70,3710070);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,731,53001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,732,53005,40,2120200);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,733,53005,30,1590150);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,734,53005,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,735,53100,100,5310000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,736,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,737,52535,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,738,53000,100,5300000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,740,53000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,742,52999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,743,52999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,744,52999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,745,52999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,746,52999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,747,52999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,748,51499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,749,51499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,750,51499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,751,51499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,752,51499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,753,51499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,754,51499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,755,51499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,756,51499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,757,50999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,758,49999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,759,49999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,760,49998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,761,49998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,762,49998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,764,49998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,767,50000,37,1850000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,768,50000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,769,49004,63,3087252);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,770,49004,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,771,49004,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,772,49004,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,773,49004,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,774,49004,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,775,47999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,776,47999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,778,47500,45,2137500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,779,46075,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,780,45000,4,180000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,781,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,782,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,785,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,786,45000,17,765000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,788,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,791,44998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,792,44998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,793,44998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,794,44899,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,795,44899,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,796,44859,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,797,0,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,798,44897,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,799,44896,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,800,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,801,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,802,43999,31,1363969);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,803,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,804,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,805,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,806,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,807,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,808,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,809,42998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,810,42998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,811,42998,100,4299800);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,812,42989,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,813,42989,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,814,42989,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,815,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,816,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,817,40740,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,818,39518,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,819,39499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,821,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,822,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,824,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,825,39989,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,826,39989,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,827,39989,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,828,39989,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,830,39990,25,999750);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,831,39988,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,832,39979,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,834,39979,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,835,39988,100,3998800);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,836,39988,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,837,39988,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,839,39988,3,119964);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,840,39949,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,841,39949,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,842,39000,100,3900000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,843,39000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,844,38999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,846,38949,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,847,38499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,848,38499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,849,38499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,850,38479,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,851,38479,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,852,38479,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,854,38478,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,855,38478,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,858,37999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,859,37999,0,0);





INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (401,859,37999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,2,45000,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,3,45000,410,18450000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,4,46350,400,18540000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,5,47000,178,8366000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,6,47000,1,47000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,7,45590,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,8,45000,300,13500000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,9,46350,200,9270000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,10,46000,34,1564000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,11,45000,1068,48060000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,12,45001,5,225005);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,13,45000,222,9990000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,14,46350,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,15,45000,181,8145000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,16,45000,455,20475000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,17,45001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,18,45000,40,1800000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,19,45000,60,2700000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,20,45000,526,23670000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,21,46350,50,2317500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,22,45000,30,1350000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,23,46000,74,3404000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,24,45999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,25,45999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,26,44620,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,27,43453,18,782154);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,28,44620,25,1115500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,29,45000,119,5355000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,30,45000,8,360000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,31,43650,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,32,42341,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,33,41071,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,34,39839,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,35,38644,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,36,38644,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,37,38644,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,38,38644,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,39,39803,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,40,40997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,41,40997,252,10331244);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,42,40997,2,81994);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,43,40997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,44,40997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,45,40997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,46,40997,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,47,40996,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,48,40996,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,49,40996,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,50,40996,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,51,40995,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,52,40994,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,53,40994,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,54,40000,50,2000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,55,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,56,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,57,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,58,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,59,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,60,38800,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,61,37636,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,62,36507,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,63,35412,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,64,34350,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,65,33320,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,66,33319,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,67,32999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,68,32999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,69,32999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,70,33319,24,799656);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,71,34318,103,3534754);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,72,34027,20,680540);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,73,34027,72,2449944);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,74,34025,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,75,34024,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,76,34027,40,1361080);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,77,34026,25,850650);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,78,34026,14,476364);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,79,33999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,80,34000,100,3400000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,81,36000,100,3600000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,82,36070,25,901750);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,83,37152,25,928800);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,84,37152,25,928800);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,85,37152,25,928800);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,86,38266,40,1530640);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,87,39413,30,1182390);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,88,40595,25,1014875);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,89,40594,25,1014850);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,90,40594,50,2029700);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,91,41000,50,2050000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,92,40999,45,1844955);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,93,40999,100,4099900);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,94,40998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,95,42227,59,2491393);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,96,43493,50,2174650);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,97,44796,60,2687760);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,98,45000,280,12600000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,99,45000,25,1125000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,100,45000,50,2250000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,101,45000,100,4500000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,102,45000,25,1125000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,103,45000,23,1035000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,104,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,105,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,106,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,107,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,108,45000,25,1125000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,109,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,110,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,111,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,112,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,113,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,114,45000,22,990000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,115,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,116,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,117,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,118,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,119,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,120,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,121,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,122,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,123,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,124,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,125,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,126,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,127,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,128,44000,21,924000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,129,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,130,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,131,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,132,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,133,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,134,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,135,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,136,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,137,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,138,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,139,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,140,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,141,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,142,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,143,43999,25,1099975);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,144,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,145,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,146,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,147,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,148,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,149,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,150,43055,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,151,42650,100,4265000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,152,42000,391,16422000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,153,42000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,154,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,155,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,156,42000,49,2058000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,157,42000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,158,42000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,159,42000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,160,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,161,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,162,40740,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,163,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,164,40000,25,1000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,165,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,166,41000,186,7626000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,167,42000,64,2688000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,168,42000,27,1134000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,169,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,170,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,171,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,172,41809,130,5435170);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,173,41500,27,1120500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,174,41809,30,1254270);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,175,41810,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,176,41810,1,41810);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,177,41799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,178,41799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,179,42000,30,1260000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,180,40740,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,181,41500,97,4025500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,182,42000,4,168000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,183,42500,79,3357500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,184,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,185,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,186,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,187,43000,25,1075000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,188,43000,100,4300000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,189,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,190,43000,369,15867000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,191,43000,142,6106000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,192,41710,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,193,41709,50,2085450);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,194,41499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,195,41499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,196,40458,25,1011450);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,197,40254,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,198,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,199,40000,25,1000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,200,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,201,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,202,40000,25,1000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,203,40000,180,7200000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,204,40001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,205,40000,50,2000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,206,40000,4,160000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,207,40000,10,400000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,208,40001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,209,40001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,210,40800,100,4080000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,211,40799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,212,40800,25,1020000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,213,40799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,214,41000,113,4633000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,215,41499,20,829980);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,216,42743,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,217,44025,50,2201250);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,218,45000,2,90000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,219,45000,48,2160000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,220,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,221,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,222,45000,50,2250000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,223,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,224,43650,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,225,44959,25,1123975);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,226,45000,50,2250000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,227,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,228,45000,11,495000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,229,45000,112,5040000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,230,45001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,231,45000,22,990000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,232,46000,30,1380000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,233,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,234,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,235,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,236,45000,25,1125000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,237,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,238,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,239,45000,25,1125000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,240,43650,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,241,43650,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,242,42341,50,2117050);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,243,42341,150,6351150);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,244,42342,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,245,42342,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,246,43612,25,1090300);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,247,43612,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,248,44000,220,9680000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,249,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,250,44000,50,2200000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,251,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,252,44000,50,2200000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,253,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,254,45300,100,4530000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,255,45300,110,4983000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,256,45299,50,2264950);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,257,45299,54,2446146);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,258,44999,50,2249950);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,259,44999,50,2249950);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,260,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,261,44000,25,1100000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,262,44000,100,4400000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,263,44000,25,1100000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,264,44000,400,17600000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,265,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,266,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,267,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,268,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,269,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,270,43998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,271,43000,5,215000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,272,44000,455,20020000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,273,44000,455,20020000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,274,44000,25,1100000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,275,44000,25,1100000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,276,44000,30,1320000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,277,44000,419,18436000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,278,44001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,279,44000,30,1320000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,280,45000,25,1125000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,281,45000,335,15075000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,282,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,283,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,284,44000,25,1100000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,285,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,286,44000,30,1320000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,287,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,288,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,289,45000,100,4500000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,290,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,291,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,292,45000,100,4500000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,293,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,294,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,295,44999,30,1349970);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,296,44799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,297,44800,25,1120000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,298,44799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,299,44799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,300,44000,55,2420000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,301,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,302,44000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,303,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,304,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,305,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,306,43650,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,307,43650,25,1091250);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,308,43499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,309,43650,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,310,43499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,311,44000,70,3080000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,312,44000,70,3080000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,313,44000,70,3080000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,314,44001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,315,44001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,316,44001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,317,44000,35,1540000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,318,44000,10,440000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,319,44001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,320,44001,188,8272188);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,321,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,322,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,323,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,324,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,325,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,326,44000,250,11000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,327,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,328,43999,10,439990);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,329,42680,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,330,42680,125,5335000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,331,43260,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,332,43260,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,333,43260,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,334,43499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,335,43499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,336,43499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,337,43499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,338,42195,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,339,42000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,340,43000,146,6278000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,341,43000,10,430000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,342,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,343,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,344,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,345,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,346,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,347,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,348,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,349,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,350,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,351,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,352,40740,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,353,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,354,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,355,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,356,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,357,39998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,358,39998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,359,39998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,360,40000,50,2000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,361,40001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,362,40000,10,400000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,363,41000,6,246000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,364,41001,5,205005);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,365,42230,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,366,43496,10,434960);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,367,44800,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,368,44799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,369,44799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,370,44799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,371,44799,10,447990);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,372,44799,10,447990);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,373,44799,100,4479900);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,374,44799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,375,44799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,376,44800,66,2956800);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,377,44000,20,880000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,378,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,379,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,380,43999,25,1099975);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,381,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,382,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,383,40459,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,384,40459,50,2022950);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,385,39999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,386,40500,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,387,40500,300,12150000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,388,41200,200,8240000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,389,40800,30,1224000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,390,40800,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,391,40800,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,392,40800,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,393,40800,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,394,40800,30,1224000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,395,42000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,396,41000,176,7216000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,397,42230,15,633450);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,398,43000,100,4300000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,399,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,400,43000,16,688000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,401,43000,47,2021000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,402,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,403,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,404,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,405,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,406,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,407,44799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,408,44799,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,409,44800,66,2956800);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,410,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,411,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,412,42899,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,413,43000,80,3440000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,414,43000,15,645000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,415,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,416,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,417,43000,50,2150000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,418,43000,233,10019000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,419,43000,40,1720000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,420,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,421,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,422,44200,100,4420000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,423,44200,100,4420000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,424,44200,60,2652000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,425,43999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,426,44100,27,1190700);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,427,43000,9,387000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,428,43000,10,430000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,429,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,430,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,431,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,432,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,433,43000,20,860000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,434,43000,10,430000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,435,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,436,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,437,43201,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,438,43201,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,439,44100,11,485100);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,440,43200,25,1080000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,441,43201,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,442,42334,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,443,42334,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,444,42334,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,445,43000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,446,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,447,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,448,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,449,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,450,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,451,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,452,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,453,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,454,42999,35,1504965);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,455,41710,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,456,41499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,457,41499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,458,41499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,459,41499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,460,41500,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,461,42000,165,6930000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,462,42000,35,1470000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,463,42000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,464,42001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,465,42000,7,294000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,466,42000,40,1680000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,467,43000,25,1075000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,468,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,469,43000,25,1075000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,470,42000,10,420000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,471,42001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,472,43261,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,473,44558,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,474,45000,1010,45450000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,475,44999,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,476,45001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,477,45001,23,1035023);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,478,45001,422,18990422);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,479,45001,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,480,44999,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,481,45001,30,1350030);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,482,45002,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,483,45001,20,900020);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,484,45001,70,3150070);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,485,45000,67,3015000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,486,44999,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,487,44999,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,488,44999,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,489,45000,100,4500000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,490,46000,100,4600000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,491,45999,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,492,44620,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,493,43999,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,494,43999,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,495,45000,86,3870000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,496,45000,64,2880000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,497,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,498,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,499,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,500,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,501,44999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,502,43650,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,503,42341,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,504,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,505,42000,10,420000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,506,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,507,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,508,43000,10,430000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,509,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,510,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,511,42999,75,3224925);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,512,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,513,45000,100,4500000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,514,43650,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,515,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,516,43000,96,4128000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,517,43000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,518,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,519,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,520,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,521,43501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,522,43500,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,523,43500,80,3480000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,524,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,525,42999,5,214995);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,526,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,527,42999,112,4815888);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,528,43000,700,30100000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,529,42998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,530,42998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,531,43000,150,6450000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,532,43000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,533,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,534,43000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,535,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,536,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,537,42999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,538,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,539,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,540,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,541,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,542,41999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,543,42000,10,420000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,544,42000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,545,42001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,546,42001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,547,42001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,548,42001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,549,42001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,550,42001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,551,43001,214,9202214);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,552,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,553,43001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,554,45001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,555,45001,216,9720216);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,556,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,557,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,558,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,559,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,560,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,561,45000,53,2385000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,562,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,563,45001,500,22500500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,564,45001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,565,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,566,45001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,567,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,568,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,569,45001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,570,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,571,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,572,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,573,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,574,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,575,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,576,45001,300,13500300);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,577,46000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,578,44620,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,579,43999,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,580,45318,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,581,45000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,582,45000,14,630000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,583,45001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,584,46000,50,2300000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,585,46000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,586,46000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,587,47001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,588,47001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,589,45306,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,590,46664,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,591,46000,65,2990000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,592,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,593,46001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,595,15334,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,596,15334,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,597,15794,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,598,16267,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,599,16755,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,600,17250,129,2225250);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,601,17767,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,602,17234,550,9478700);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,603,17000,5,85000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,604,17510,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,605,17511,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,606,17511,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,607,17510,110,1926100);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,608,17509,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,609,17510,175,3064250);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,610,18001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,611,18001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,612,18001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,613,18002,200,3600400);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,614,18002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,615,18002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,616,18002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,617,18002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,618,18002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,619,18002,375,6750750);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,620,18002,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,621,18000,283,5094000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,622,18000,277,4986000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,623,18000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,624,18000,132,2376000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,625,18001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,626,18001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,627,18001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,628,18001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,629,18001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,630,18001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,631,18001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,632,18001,25,450025);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,633,18002,150,2700300);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,634,18001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,635,18002,50,900100);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,636,18501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,637,18501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,638,18050,150,2707500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,639,18051,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,640,18501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,641,18501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,642,18506,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,643,18506,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,644,18506,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,645,18506,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,646,19000,125,2375000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,647,18999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,648,19000,50,950000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,649,19000,386,7334000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,650,19000,10,190000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,651,19001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,652,19501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,653,19501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,654,19501,150,2925150);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,656,19501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,657,19502,120,2340240);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,658,19503,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,659,19503,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,661,19503,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,662,19502,99,1930698);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,663,19502,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,664,19503,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,665,19601,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,666,19601,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,667,19601,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,668,19601,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,669,19605,63,1235115);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,670,20000,300,6000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,671,20001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,672,20000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,673,20001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,674,20001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,675,19701,100,1970100);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,676,20001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,677,20001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,678,20001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,679,20001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,680,20001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,681,20001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,683,20004,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,684,20005,100,2000500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,685,20501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,686,20501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,687,20501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,688,20501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,689,20501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,691,20499,30,614970);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,692,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,693,20498,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,695,20499,150,3074850);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,696,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,697,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,698,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,699,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,700,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,701,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,703,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,704,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,705,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,707,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,708,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,709,21000,28,588000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,710,20999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,713,20999,118,2477882);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,714,21000,21,441000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,715,21025,4,84100);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,717,21026,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,718,21026,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,719,21026,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,720,21026,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,721,21031,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,722,21031,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,723,21031,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,724,21031,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,725,21031,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,726,21030,100,2103000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,728,21000,100,2100000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,730,20899,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,731,20899,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,732,20899,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,733,20900,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,734,20900,22,459800);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,735,20901,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,736,20900,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,737,20500,100,2050000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,738,20895,22,459690);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,739,21001,30,630030);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,740,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,741,21000,27,567000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,742,21001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,743,21000,300,6300000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,744,21630,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,745,22001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,746,22001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,747,22001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,748,22001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,749,22001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,750,22001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,752,22002,30,660060);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,755,22501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,756,22501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,757,22501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,758,22501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,759,21826,277,6045802);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,760,22480,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,761,22500,123,2767500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,762,22500,200,4500000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,763,22000,200,4400000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,764,22500,170,3825000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,766,22479,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,767,21825,1338,29201850);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,768,21825,132,2880900);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,769,21825,30,654750);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,770,21901,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,773,21906,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,774,22000,323,7106000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,776,22000,30,660000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,779,22500,1022,22995000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,780,22500,1215,27337500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,781,22500,137,3082500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,782,22499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,783,22499,45,1012455);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,784,22499,100,2249900);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,785,0,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,786,22000,0,10);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,787,22001,323,7106323);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,788,22001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,789,22001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,790,22001,440,9680440);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,791,22000,25,550000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,792,22001,200,4400200);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,793,22001,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,794,22000,60,1320000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,795,22000,203,4466000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,796,21999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,797,22000,20,440000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,798,21999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,799,21999,50,1099950);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,800,21999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,801,25000,950,23750000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,802,25000,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,803,22500,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,804,21825,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,805,21500,60,1290000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,806,21500,49,1053500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,807,21499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,810,21499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,812,21499,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,813,21489,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,814,21490,46,988540);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,815,21489,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,816,21489,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,818,21501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,819,21501,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,820,21500,15,322500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,822,21500,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,823,21500,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,824,21500,35,752500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,825,21500,9,193500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,827,21500,103,2214500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,828,20999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,829,20999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,830,21000,100,2100000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,831,20999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,832,20999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,834,20999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,835,20999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,836,20999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,837,20999,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,838,20949,50,1047450);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,839,20899,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,840,20899,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,842,20899,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,843,20899,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,846,20998,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (402,847,20998,10,209980);






INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,519,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,520,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,521,100,10,100000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,522,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,523,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,524,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,525,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,526,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,527,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,528,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,529,100,500,5000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,530,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,531,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,532,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,533,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,534,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,535,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,536,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,537,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,538,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,539,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,540,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,541,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,542,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,543,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,544,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,545,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,546,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,547,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,548,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,549,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,550,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,551,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,552,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,553,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,554,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,555,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,556,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,557,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,558,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,559,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,560,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,561,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,562,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,563,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,564,100,1500,15000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,565,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,566,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,567,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,568,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,569,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,570,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,571,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,572,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,573,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,574,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,575,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,576,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,577,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,578,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,579,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,580,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,581,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,582,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,583,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,584,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,585,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,586,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,587,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,588,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,589,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,590,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,591,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,592,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,593,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,594,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,595,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,596,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,597,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,598,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,599,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,600,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,601,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,602,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,603,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,604,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,605,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,606,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,607,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,608,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,609,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,610,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,611,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,612,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,613,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,614,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,615,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,616,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,617,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,618,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,619,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,620,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,621,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,622,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,623,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,624,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,625,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,626,100,290,3041099);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,627,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,628,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,629,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,630,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,631,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,632,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,633,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,634,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,635,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,636,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,637,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,638,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,639,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,640,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,641,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,642,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,643,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,644,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,645,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,646,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,647,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,648,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,649,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,650,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,651,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,652,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,653,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,654,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,655,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,656,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,657,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,658,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,659,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,660,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,661,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,662,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,663,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,664,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,665,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,666,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,667,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,669,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,670,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,671,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,672,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,674,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,675,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,676,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,677,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,678,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,679,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,680,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,681,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,682,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,683,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,684,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,685,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,686,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,687,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,688,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,689,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,690,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,691,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,692,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,693,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,694,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,696,100,400,4064656);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,697,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,698,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,699,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,700,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,701,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,702,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,704,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,705,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,706,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,708,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,709,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,710,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,711,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,712,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,713,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,714,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,716,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,717,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,718,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,720,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,721,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,722,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,723,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,726,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,727,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,728,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,730,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,731,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,732,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,733,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,734,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,735,100,1000,10308740);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,736,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,737,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,738,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,739,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,741,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,743,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,744,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,745,101,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,746,101,20000,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,747,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,748,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,749,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,750,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,751,100,384,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,752,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,753,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,754,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,755,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,756,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,757,100,200,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,758,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,759,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,760,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,761,100,390000,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,762,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,763,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,765,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,768,100,700,7303247);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,769,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,770,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,771,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,772,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,773,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,774,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,775,100,250,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,776,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,777,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,779,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,780,100,500,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,781,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,782,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,783,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,786,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,787,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,789,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,792,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,793,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,794,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,795,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,796,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,799,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,800,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,801,100,500,5000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,802,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,803,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,804,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,805,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,806,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,807,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,808,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,809,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,810,100,550,4127002);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,811,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,812,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,813,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,814,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,815,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,816,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,817,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,818,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,819,100,1320,9941606);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,820,100,300,2260548);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,822,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,823,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,825,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,826,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,827,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,828,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,829,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,831,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,832,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,833,100,496,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,835,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,836,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,837,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,838,100,400,4000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,840,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,841,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,842,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,843,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,844,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,845,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,847,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,848,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,849,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,850,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,851,100,1333,10160725);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,852,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,853,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,855,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,856,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,859,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (501,860,100,0,0);




INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,528,100,10,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,529,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,530,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,531,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,532,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,533,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,534,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,535,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,536,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,537,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,538,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,539,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,540,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,541,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,542,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,543,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,544,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,545,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,546,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,547,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,548,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,549,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,550,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,551,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,552,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,553,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,554,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,555,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,556,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,557,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,558,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,559,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,560,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,561,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,562,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,563,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,564,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,565,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,566,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,567,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,568,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,569,100,10,100000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,570,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,571,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,572,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,573,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,574,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,575,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,576,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,577,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,578,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,579,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,580,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,581,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,582,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,583,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,584,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,585,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,586,100,1000,10000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,587,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,588,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,589,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,590,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,591,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,592,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,593,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,594,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,595,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,596,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,597,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,598,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,599,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,600,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,601,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,602,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,603,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,604,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,605,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,606,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,607,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,608,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,609,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,610,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,611,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,612,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,613,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,614,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,615,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,616,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,617,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,618,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,619,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,620,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,621,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,622,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,623,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,624,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,625,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,626,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,627,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,628,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,629,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,630,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,631,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,632,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,633,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,634,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,635,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,636,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,637,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,638,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,639,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,640,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,641,100,1250,10000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,642,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,643,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,644,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,645,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,646,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,647,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,648,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,649,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,650,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,651,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,652,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,653,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,654,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,655,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,656,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,657,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,658,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,659,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,660,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,661,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,662,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,663,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,664,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,665,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,666,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,667,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,669,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,670,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,671,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,672,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,674,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,675,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,676,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,677,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,678,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,679,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,680,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,681,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,682,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,683,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,684,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,685,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,686,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,687,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,688,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,689,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,690,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,691,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,692,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,693,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,694,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,696,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,697,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,698,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,699,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,700,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,701,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,702,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,704,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,705,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,706,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,708,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,709,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,710,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,711,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,712,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,713,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,714,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,716,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,717,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,718,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,720,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,721,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,722,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,723,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,726,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,727,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,728,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,730,100,12500,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,731,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,732,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,733,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,734,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,735,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,736,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,737,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,738,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,739,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,741,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,743,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,744,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,745,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,746,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,747,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,748,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,749,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,750,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,751,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,752,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,753,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,754,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,755,100,2500,20884375);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,756,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,757,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,758,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,759,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,760,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,761,100,625,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,762,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,763,100,625,5236713);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,765,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,768,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,769,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,770,100,625,5000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,771,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,772,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,773,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,774,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,775,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,776,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,777,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,779,100,51,429797);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,780,100,1186,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,781,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,782,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,783,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,786,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,787,100,6250,52827375);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,789,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,792,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,793,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,794,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,795,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,796,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,799,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,800,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,801,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,802,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,803,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,804,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,805,100,10000,60207100);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,806,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,807,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,808,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,809,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,810,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,811,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,812,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,813,100,50996,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,814,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,815,100,3290,19899006);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,816,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,817,100,3284,19878906);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,818,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,819,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,820,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,822,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,823,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,825,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,826,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,827,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,828,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,829,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,831,100,2500,15212050);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,832,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,833,100,54896,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,835,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,836,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,837,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,838,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,840,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,841,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,842,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,843,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,844,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,845,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,847,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,848,100,334,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,849,100,5518,33804647);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,850,100,12000,73550520);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,851,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,852,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,853,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,855,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,856,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,859,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (503,860,100,0,0);




INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,69,100,47,4700);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,70,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,71,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,72,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,73,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,74,100,300,30003);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,75,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,76,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,77,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,78,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,79,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,80,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,81,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,82,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,83,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,84,99,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,85,99,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,86,99,300,29700);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,87,99,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,88,99,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,89,99,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,90,99,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,91,99,400,39596);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,92,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,93,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,94,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,95,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,96,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,97,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,98,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,99,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,100,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,101,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,102,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,103,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,104,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,105,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,106,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,107,97,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,122,100,5,500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,123,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,124,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,125,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,126,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,127,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,128,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,129,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,130,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,132,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,133,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,134,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,135,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,136,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,137,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,138,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,139,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,140,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,141,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,142,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,143,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,144,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,145,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,146,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,147,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,148,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,149,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,150,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,151,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,152,100,null,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,153,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,154,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,155,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,156,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,157,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,158,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,159,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,160,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,161,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,162,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,163,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,164,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,165,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,166,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,167,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,168,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,169,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,170,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,171,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,172,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,173,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,174,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,175,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,176,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,177,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,178,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,179,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,180,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,181,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,182,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,183,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,184,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,185,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,186,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,187,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,188,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,189,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,190,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,191,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,192,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,193,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,194,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,195,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,196,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,197,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,198,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,199,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,200,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,201,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,202,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,203,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,204,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,205,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,206,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,207,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,208,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,209,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,210,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,211,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,212,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,213,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,214,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,215,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,216,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,217,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,218,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,219,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,220,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,221,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,222,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,223,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,224,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,225,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,226,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,227,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,228,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,229,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,230,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,231,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,232,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,233,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,234,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,235,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,236,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,237,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,238,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,239,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,240,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,241,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,242,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,243,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,244,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,245,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,246,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,247,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,248,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,249,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,250,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,251,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,252,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,253,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,254,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,255,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,256,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,257,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,258,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,259,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,260,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,261,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,262,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,263,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,264,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,265,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,266,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,267,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,268,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,269,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,270,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,271,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,272,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,273,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,274,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,275,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,276,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,277,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,278,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,279,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,280,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,281,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,282,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,283,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,284,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,285,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,287,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,288,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,289,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,290,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,291,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,292,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,293,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,294,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,295,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,296,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,297,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,298,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,299,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,300,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,301,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,302,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,305,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,306,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,307,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,308,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,309,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,310,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,311,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,312,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,313,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,314,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,315,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,316,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,317,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,318,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,319,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,320,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,321,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,322,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,323,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,324,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,326,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,327,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,328,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,329,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,330,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,331,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,332,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,333,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,334,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,335,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,336,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,337,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,338,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,339,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,340,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,341,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,342,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,343,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,344,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,345,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,346,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,347,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,348,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,349,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,350,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,351,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,352,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,353,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,354,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,355,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,356,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,357,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,358,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,359,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,360,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,361,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,362,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,363,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,364,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,365,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,366,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,367,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,368,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,369,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,370,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,371,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,507,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,508,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,509,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,510,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,511,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,512,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,513,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,514,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,515,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,516,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,517,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,518,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,519,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,520,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,521,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,522,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,523,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,524,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,525,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,526,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,527,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,528,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,529,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,530,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,531,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,532,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,533,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,534,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,535,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,536,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,537,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,538,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,539,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,540,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,541,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,542,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,543,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,544,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,545,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,546,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,547,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,548,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,549,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,550,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,551,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,552,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,553,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,554,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,555,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,556,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,557,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,558,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,559,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,560,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,561,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,562,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,563,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,564,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,565,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,566,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,567,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,568,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,569,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,570,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,571,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,572,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,573,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,574,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,575,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,576,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,577,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,578,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,579,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,580,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,581,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,582,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,583,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,584,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,585,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,586,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,587,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,588,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,589,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,590,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,591,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,592,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,593,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,594,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,595,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,596,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,597,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,598,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,599,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,600,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,601,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,602,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,603,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,604,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,605,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,606,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,607,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,608,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,609,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,610,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,611,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,612,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,613,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,614,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,615,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,616,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,617,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,618,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,619,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,620,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,621,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,622,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,623,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,624,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,625,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,626,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,627,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,628,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,629,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,630,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,631,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,632,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,633,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,634,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,635,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,636,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,637,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,638,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,639,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,640,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,641,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,642,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,643,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,644,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,645,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,646,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,647,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,648,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,649,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,650,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,651,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,652,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,653,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,654,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,655,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,656,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,657,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,658,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,659,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,660,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,661,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,662,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,663,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,664,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,665,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,666,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,667,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,669,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,670,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,671,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,672,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,674,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,675,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,676,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,677,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,678,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,679,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,680,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,681,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,682,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,683,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,684,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,685,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,686,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,687,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,688,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,689,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,690,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,691,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,692,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,693,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,694,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,696,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,697,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,698,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,699,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,700,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,701,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,702,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,704,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,705,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,706,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,708,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,709,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,710,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,711,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,712,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,713,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,714,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,716,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,717,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,718,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,720,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,721,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,722,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,723,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,726,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,727,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,728,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,730,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,731,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,732,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,733,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,734,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,735,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,736,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,737,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,738,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,739,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,741,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,743,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,744,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,745,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,746,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,747,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,748,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,749,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,750,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,751,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,752,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,753,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,754,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,755,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,756,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,757,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,758,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,759,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,760,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,761,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,762,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,763,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,765,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,768,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,769,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,770,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,771,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,772,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,773,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,774,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,775,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,776,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,777,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,779,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,780,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,781,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,782,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,783,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,786,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,787,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,789,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,792,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,793,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,794,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,795,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,796,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,799,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,800,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,801,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,802,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,803,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,804,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,805,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,806,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,807,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,808,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,809,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,810,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,811,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,812,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,813,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,814,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,815,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,816,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,817,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,818,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,819,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,820,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,822,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,823,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,825,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,826,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,827,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,828,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,829,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,831,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,832,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,833,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,835,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,836,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,837,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,838,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,840,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,841,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,842,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,843,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,844,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,845,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,847,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,848,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,849,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,850,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,851,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,852,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,853,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,855,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,856,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,859,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (500,860,100,0,0);




INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,678,100,500,5044450);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,679,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,680,100,2150,21704099);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,681,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,682,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,683,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,684,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,685,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,686,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,687,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,688,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,689,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,690,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,691,100,75020,760260392);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,692,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,693,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,694,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,696,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,697,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,698,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,699,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,700,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,701,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,702,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,704,100,2000,20358640);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,705,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,706,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,708,100,25000,250859000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,709,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,710,100,55000,561022550);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,711,100,1000,10204930);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,712,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,713,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,714,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,716,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,717,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,718,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,720,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,721,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,722,100,4545,46552617);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,723,103,4131,41310000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,726,100,1000,10000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,727,100,976,10014424);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,728,103,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,730,100,40348,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,731,100,5200,52000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,732,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,733,100,500,5000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,734,100,100,1000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,735,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,736,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,737,100,7400,24708816);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,738,100,950,9784867);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,739,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,741,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,743,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,744,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,745,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,746,100,23600,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,747,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,748,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,749,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,750,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,751,100,65000,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,752,100,70000,724365600);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,753,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,754,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,755,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,756,100,5000,51815750);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,757,100,700,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,758,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,759,100,50000,518635000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,760,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,761,100,50000,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,762,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,763,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,765,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,768,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,769,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,770,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,771,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,772,100,2500,26047250);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,773,100,4000,41687680);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,774,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,775,100,6000,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,776,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,777,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,779,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,780,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,781,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,782,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,783,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,786,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,787,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,789,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,792,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,793,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,794,100,2000,20991500);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,795,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,796,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,799,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,800,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,801,100,900,9000000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,802,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,803,100,900,9474660);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,804,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,805,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,806,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,807,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,808,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,809,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,810,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,811,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,812,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,813,100,790,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,814,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,815,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,816,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,817,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,818,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,819,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,820,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,822,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,823,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,825,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,826,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,827,100,1256,12647066);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,828,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,829,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,831,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,832,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,833,100,40,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,835,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,836,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,837,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,838,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,840,100,85,859734);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,841,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,842,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,843,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,844,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,845,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,847,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,848,100,300,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,849,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,850,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,851,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,852,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,853,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,855,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,856,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,859,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,860,100,0,0);





INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (502,678,100,500,5044450);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,649,100,30,300000);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,650,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,651,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,652,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,653,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,654,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,655,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,656,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,657,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,658,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,659,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,660,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,661,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,662,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,663,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,664,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,665,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,666,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,667,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,669,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,670,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,671,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,672,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,674,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,675,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,676,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,677,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,678,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,679,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,680,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,681,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,682,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,683,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,684,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,685,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,686,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,687,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,688,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,689,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,690,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,691,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,692,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,693,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,694,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,696,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,697,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,698,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,699,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,700,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,701,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,702,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,704,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,705,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,706,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,708,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,709,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,710,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,711,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,712,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,713,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,714,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,716,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,717,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,718,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,720,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,721,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,722,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,723,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,726,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,727,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,728,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,730,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,731,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,732,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,733,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,734,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,735,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,736,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,737,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,738,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,739,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,741,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,743,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,744,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,745,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,746,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,747,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,748,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,749,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,750,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,751,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,752,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,753,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,754,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,755,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,756,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,757,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,758,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,759,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,760,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,761,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,762,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,763,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,765,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,768,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,769,100,0,null);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,770,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,771,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,772,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,773,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,774,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,775,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,776,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,777,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,779,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,780,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,781,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,782,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,783,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,786,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,787,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,789,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,792,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,793,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,794,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,795,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,796,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,799,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,800,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,801,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,802,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,803,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,804,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,805,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,806,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,807,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,808,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,809,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,810,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,811,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,812,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,813,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,814,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,815,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,816,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,817,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,818,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,819,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,820,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,822,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,823,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,825,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,826,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,827,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,828,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,829,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,831,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,832,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,833,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,835,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,836,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,837,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,838,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,840,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,841,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,842,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,843,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,844,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,845,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,847,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,848,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,849,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,850,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,851,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,852,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,853,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,855,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,856,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,859,100,0,0);
INSERT INTO daily_security (financial_asset_id, trading_day_id, reference_price, total_trade_volume, total_trade_value) VALUES (504,860,100,0,0);
