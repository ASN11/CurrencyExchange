DROP TABLE currencies, exchangeRates;

CREATE TABLE IF NOT EXISTS currencies
(
    id serial primary key,
    code varchar,
    fullName varchar,
    sign varchar
);

CREATE TABLE IF NOT EXISTS exchangeRates
(
    id serial primary key,
    baseCurrencyId int REFERENCES currencies(id),
    targetCurrencyId int REFERENCES currencies(id),
    rate double precision
);

CREATE INDEX currencies_id_idx ON currencies (id);
CREATE UNIQUE INDEX currencies_code_idx ON currencies (code);

CREATE INDEX exchangeRates_id_idx ON exchangeRates (id);
CREATE UNIQUE INDEX exchangeRates_currency_pair_idx ON exchangeRates (BaseCurrencyId, TargetCurrencyId);

