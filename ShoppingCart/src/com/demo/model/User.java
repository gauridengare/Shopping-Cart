package com.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="login_cred")
public class User {
	


@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;

@Column(unique = true,nullable = false)
private String username;

@Column(unique = true,nullable = false)
private String password;

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


}