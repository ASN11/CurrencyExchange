INSERT INTO currencies (code, fullname, sign) VALUES ('USD', 'United States dollar', '$');
INSERT INTO currencies (code, fullname, sign) VALUES ('EUR', 'Euro', '€');
INSERT INTO currencies (code, fullname, sign) VALUES ('RUB', 'Russian Ruble', '₽');
INSERT INTO currencies (code, fullname, sign) VALUES ('JPY', 'Yen', '¥');
INSERT INTO currencies (code, fullname, sign) VALUES ('CNY', 'Yuan Renminbi', 'Ұ');

INSERT INTO exchangerates (basecurrencyid, targetcurrencyid, rate) VALUES (1, 2, 0.89);
INSERT INTO exchangerates (basecurrencyid, targetcurrencyid, rate) VALUES (1, 3, 90.63);
INSERT INTO exchangerates (basecurrencyid, targetcurrencyid, rate) VALUES (1, 4, 138.96);
INSERT INTO exchangerates (basecurrencyid, targetcurrencyid, rate) VALUES (1, 5, 7.17);
INSERT INTO exchangerates (basecurrencyid, targetcurrencyid, rate) VALUES (2, 3, 101.80);
INSERT INTO exchangerates (basecurrencyid, targetcurrencyid, rate) VALUES (2, 4, 156.10);
INSERT INTO exchangerates (basecurrencyid, targetcurrencyid, rate) VALUES (2, 5, 8.06);
INSERT INTO exchangerates (basecurrencyid, targetcurrencyid, rate) VALUES (3, 4, 1.53);
INSERT INTO exchangerates (basecurrencyid, targetcurrencyid, rate) VALUES (3, 5, 0.079);
INSERT INTO exchangerates (basecurrencyid, targetcurrencyid, rate) VALUES (4, 5, 0.052);