package com.demo.model;

import java.util.ArrayList;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import antlr.collections.List;


@Entity
@Table(name="login_cred")
public class User {
	


@Id
@GeneratedValue(strategy = GenerationType.AUTO)
@Column(name = "userId")
private int userId;


@Column(unique = true,nullable = false)
private String username;

@Column(unique = true,nullable = false)
private String password;

@OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
private Set<CartItems> cartItems;

@OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
private Set<Profile> profiles;



public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public Set<CartItems> getLawyer() {
	return cartItems;
}
public void setLawyer(Set<CartItems> lawyer) {
	this.cartItems = cartItems;
}




}
