package com.demo.service;

import java.sql.Connection;


import java.sql.DriverManager;


import java.sql.SQLException;
import java.sql.Statement;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.exception.ConstraintViolationException;
import org.hibernate.mapping.List;

import com.demo.model.Items;
import com.demo.model.User;

public class UserService {
SessionFactory factory;
	
	public UserService() {
		try {
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			
			//Adding items to cart_items table
			/*Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			Items i1=new Items("watch",350);
			session.persist(i1);
			t.commit();
			 session.close();*/
			
		} 
		
		catch(Exception e) {
			e.printStackTrace();
			
		}
	}
	
	public int insertUser(User user) {
		
		try {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			session.persist(user);
			t.commit();
			 session.close();
			
		} 
		
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return 1;
	}
	public String login(User user) {
		Session session = factory.openSession();
		  session.beginTransaction();
		  
		  String queryString = "from User where password = :pwd and username = :name";
		  Query query = session.createQuery(queryString);
;
		  query.setString("name", user.getUsername());
		  query.setString("pwd", user.getPassword());
		  
		  Object queryResult = query.uniqueResult();
		  System.out.println(queryResult);
		  if(queryResult==null)
			  return null;
		  User user1 = (User)queryResult;
		 // session.getTransaction().commit();
		
		  
		  
			 return user1.getUsername();
		  
	}
}
