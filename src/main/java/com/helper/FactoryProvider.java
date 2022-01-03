package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	public static SessionFactory factory;
	
	//to not create object for FactoryProvider we are declaring getFactory as static
	public static SessionFactory getFactory() {
		if(factory == null) {
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		return factory;
	}
	public void closeFactory() {
		if(factory.isOpen()) {
			factory.close();
		}
	}
}
