package com.example.CabBooking.Cab.Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="login_table")
public class UserBean {
	
	@Id
	private String loginid;
	@Column(name="user_name")
	private String userName;
	@Column(name="user_address")
	private String userAddress;
	@Column(name="user_contact_number")
	private String userContactNumber;
	
	public UserBean() {
		super();
	}

	public UserBean(String loginid, String userName, String userAddress, String userContactNumber) {
		super();
		this.loginid = loginid;
		this.userName = userName;
		this.userAddress = userAddress;
		this.userContactNumber = userContactNumber;
	}

	public String getLoginid() {
		return loginid;
	}

	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserContactNumber() {
		return userContactNumber;
	}

	public void setUserContactNumber(String userContactNumber) {
		this.userContactNumber = userContactNumber;
	}
	

}
