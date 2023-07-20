package DAO;

import models.Currency;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.List;

@Component
public class CurrencyDAO {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public CurrencyDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Currency> getAllCurrencies() {
        return jdbcTemplate.query("SELECT * FROM currencies", new BeanPropertyRowMapper<>(Currency.class));
    }

    public Currency getCurrencyByCode(String code) {
        return (jdbcTemplate.query("SELECT * FROM currencies WHERE code = ?", new BeanPropertyRowMapper<>(Currency.class), code)
                .stream().findAny().orElse(new Currency()));
    }

    public void insertCurrency(Currency currency) {
        jdbcTemplate.update("INSERT INTO currencies (code, fullName, sign) VALUES (?, ?, ?)",
                currency.getCode(), currency.getFullName(), currency.getSign());
    }

    public void updateCurrency(Currency currency) {
        jdbcTemplate.update("UPDATE currencies SET fullName = ?, sign = ? WHERE code = ?",
                currency.getFullName(), currency.getSign(), currency.getCode());
    }

    public void deleteCurrency(Currency currency) {
        jdbcTemplate.update("DELETE FROM currencies WHERE code = ?", currency.getCode());
    }


}
