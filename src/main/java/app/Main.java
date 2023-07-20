package app;


import DAO.CurrencyDAO;
import config.ApplicationConfig;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(ApplicationConfig.class);
        CurrencyDAO currencyDAO = context.getBean("currencyDAO", CurrencyDAO.class);

        System.out.println(currencyDAO.getAllCurrencies());
    }
}
