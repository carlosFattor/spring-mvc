package br.com.casacodigo.loja.conf;

import java.util.Properties;


import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.Database;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement(proxyTargetClass=true)
@Configuration
public class JPAConfiguration {

	@Bean
	public JpaTransactionManager transactionManager(EntityManagerFactory emf) {
		return new JpaTransactionManager(emf);
	}

	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory(DataSource dataSource, Properties aditionalProperties) {

		LocalContainerEntityManagerFactoryBean factoryBean = new LocalContainerEntityManagerFactoryBean();
		JpaVendorAdapter jpaVendorAdapter = new HibernateJpaVendorAdapter();
		
		factoryBean.setJpaVendorAdapter(jpaVendorAdapter);
		factoryBean.setDataSource(dataSource);
		factoryBean.setJpaProperties(aditionalProperties);
		
		factoryBean.setPackagesToScan("br.com.casacodigo.loja.models");

		return factoryBean;
	}

	@Bean
	@Profile("dev")
	public Properties aditionalProperties() {
		Properties props = new Properties();
		props.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
		props.setProperty("hibernate.show_sql", "true");
		props.setProperty("hibernate.hbm2ddl.auto", "update");
		return props;
	}
	
	@Bean
	@Profile("dev")
	public DataSource dataSource() {
		DriverManagerDataSource driveManager = new DriverManagerDataSource();
		driveManager.setUsername("root");
		driveManager.setPassword("root");
		driveManager.setUrl("jdbc:mysql://localhost:3306/casacodigo");
		driveManager.setDriverClassName("com.mysql.jdbc.Driver");
		return driveManager;
	}

	@Bean
	public JpaVendorAdapter jpaVendorAdapter() {
		HibernateJpaVendorAdapter bean = new HibernateJpaVendorAdapter();

		bean.setDatabase(Database.SQL_SERVER);
		bean.setGenerateDdl(true);
		bean.setShowSql(true);

		return bean;
	}

}
