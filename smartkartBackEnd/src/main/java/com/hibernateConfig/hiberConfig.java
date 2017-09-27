package com.hibernateConfig;
import com.Daolmpl.*;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.Dao.*;
import com.model.*;
@Configuration
@EnableTransactionManagement
@ComponentScan("com")
public class hiberConfig {
	@Autowired
	@Bean(name="datasource")
	public DataSource getH2Data()
	{
		System.out.println("Hibernate initiated...");
		DriverManagerDataSource dsource=new DriverManagerDataSource();
		dsource.setDriverClassName("org.h2.Driver");
		dsource.setUrl("jdbc:h2:tcp://localhost/~/sk");
		dsource.setUsername("sa");
		dsource.setPassword("");
		System.out.println("H2 connected");
		return dsource;
	}
	private Properties getHiberProps()
	{
		Properties p=new Properties();
		p.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		p.put("hibernate.hbm2ddl.auto", "update");
		p.put("hibernate.show_sql", "true");
		System.out.println("Data table is created in H2");
		
		return p;
	}
	
	@Autowired
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFac(DataSource datasource)
	{
		LocalSessionFactoryBuilder sb=new LocalSessionFactoryBuilder(datasource);
		sb.addProperties(getHiberProps());
		sb.addAnnotatedClass(User.class);
		return sb.buildSessionFactory();
	}
	@Autowired
	@Bean(name="UserDaoImpl")
	public UserDaoImpl getUserData(SessionFactory sessionFac)
	{
		return new UserDaoImpl(sessionFac);
				
	}
	
	@Autowired
	@Bean(name="transactionManager")
	public HibernateTransactionManager getTransaction(SessionFactory sessionFac)
	{
		HibernateTransactionManager tm=new HibernateTransactionManager(sessionFac);
		return tm;
	}
}
