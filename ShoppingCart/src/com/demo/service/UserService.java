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

import com.demo.model.CartItems;
import com.demo.model.User;

public class UserService {
static SessionFactory factory;
static User user1;
private static int count=1;

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
			//Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			session.persist(user);
			t.commit();
			
			 
			
		} 
		
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return 1;
	}
	public String login(User user) {
		//Session session = factory.openSession();
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
		  user1 = (User)queryResult;
		 // session.getTransaction().commit();
		
		  
		  
			 return user1.getUsername();
		  
	}
	
	public static int getUserId()
	{
		return user1.getUserId();
		
	}
	public static void addCartItems(String item,int price)
	{
	try
	{
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		String queryString = "from CartItems as c where c.item_name = :name and c.user = :usr";
		
		  Query query = session.createQuery(queryString);
		 
          query.setString("name", item);
         
		  query.setParameter("usr", user1);
		  Object queryResult = query.uniqueResult();
		  CartItems cartitem  = (CartItems)queryResult;
		  
		 if(queryResult==null)
		 {
		CartItems e=new CartItems(item,price,count,user1);
		session.persist(e);
		t.commit();
		 }
		 else
		 {
			 String queryString1 = "update CartItems set item_count = :ct" + " where item_name = :it";
			 Query query1 = session.createQuery(queryString1);
			 query1.setString("it", item);
			  query1.setInteger("ct", cartitem.getItem_count()+1);
			  int result = query1.executeUpdate();
			 t.commit();
		 }
		 //session.close();
		
	} 
		
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}
}
