package com.demo.model;

import java.util.Set;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;




@Entity
@Table(name="cart_items")
public class CartItems {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private int id;	
	
@Column
private String item_name;

@Column
private int item_price;

@Column
private int item_count;

@ManyToOne(fetch = FetchType.EAGER)
@Fetch(FetchMode.SELECT)
@JoinColumn(name = "userId")
private User user;


public CartItems()
{
	
}
public CartItems(String item_name, int item_price, int count,User user) {
	super();
	this.item_name = item_name;
	this.item_price = item_price;
	this.item_count = count;
	this.user = user;
	
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}



public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
}

public String getItem_name() {
	return item_name;
}

public void setItem_name(String item_name) {
	this.item_name = item_name;
}

public int getItem_price() {
	return item_price;
}

public void setItem_price(int item_price) {
	this.item_price = item_price;
}
public int getItem_count() {
	return item_count;
}
public void setItem_count(int item_count) {
	this.item_count = item_count;
}







}
