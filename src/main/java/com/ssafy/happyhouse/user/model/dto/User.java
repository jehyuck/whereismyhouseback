package com.ssafy.happyhouse.user.model.dto;

import java.io.Serializable;

public class User implements Serializable{
	private String id;
	private String pass;
	private String name;
	private String address;
	private String phone;
	
	public User() {}
	
	public User(String id, String pass, String name, String address, String phone) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.address = address;
		this.phone = phone;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", pass=" + pass + ", name=" + name + ", address=" + address + ", phone=" + phone
				+ "]";
	}


	
}
