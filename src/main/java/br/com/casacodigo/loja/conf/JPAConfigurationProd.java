package br.com.casacodigo.loja.conf;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Profile;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Profile("prod")
public class JPAConfigurationProd {
	
	@Autowired
	private Environment enviroment;

	@Bean
	public Properties aditionalProperties() {
		Properties props = new Properties();
		props.setProperty("hibernate.dialect", "org.hibernate.dialect.PostgreSQLDialect");
		props.setProperty("hibernate.show_sql", "true");
		props.setProperty("hibernate.hbm2ddl.auto", "update");
		return props;
	}

	@Bean
	public DataSource dataSource() throws URISyntaxException {
		DriverManagerDataSource driveManager = new DriverManagerDataSource();
		driveManager.setDriverClassName("org.postgresql.Driver");
		
		URI dbUri = new URI(enviroment.getProperty("DATABASE_URL"));
		
		driveManager.setUsername(dbUri.getUserInfo().split(":")[0]);
		driveManager.setPassword(dbUri.getUserInfo().split(":")[1]);
		
		driveManager.setUrl("jdbc:postgresql://"+
				dbUri.getHost()+
				":"+
				dbUri.getPort()+
				dbUri.getPath());
		
		return driveManager;
	}

}
