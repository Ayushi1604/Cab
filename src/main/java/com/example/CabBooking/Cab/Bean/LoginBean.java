package com.example.CabBooking.Cab.Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity(name="login_table")
public class LoginBean {
	
	@Id
	@GeneratedValue
	private long loginid;
	@Email
	private String email;
	
	@NotNull
	@Size(min=5,message="Enter atleast 5 character")
	private String password;
	
	@NotNull
	private String userType;
	
	@NotNull(message="Please enter your name")
	@Column(name="user_name")
	private String userName;
	
	@NotNull(message="Please enter your address ")
	@Column(name="user_address")
	private String userAddress;
	
	@Size(min=10,max=10,message="contact number should be of 10 digit")
	@Column(name="user_contact_number")
	private String userContactNumber; 
	
	public LoginBean() {
		
	}

	public LoginBean(long loginid, @Email String email,
			@NotNull @Size(min = 5, message = "Enter atleast 5 character") String password, @NotNull String userType,
			@NotNull(message = "Please enter your name") String userName,
			@NotNull(message = "Please enter your address ") String userAddress,
			@Size(min = 10, max = 10, message = "contact number should be of 10 digit") String userContactNumber) {
		super();
		this.loginid = loginid;
		this.email = email;
		this.password = password;
		this.userType = userType;
		this.userName = userName;
		this.userAddress = userAddress;
		this.userContactNumber = userContactNumber;
	}

	public long getLoginid() {
		return loginid;
	}

	public void setLoginid(long loginid) {
		this.loginid = loginid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
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
