package com.example.CabBooking.Cab.Bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="BOOKING_TABLE")
public class BookingHistoryBean {
	@Id
	@GeneratedValue
	int id;
	String name;
	Date date;
	String email;
	
	public BookingHistoryBean(){
		
	}

	public BookingHistoryBean(int id, String name, Date date, String email) {
		super();
		this.id = id;
		this.name = name;
		this.date = date;
		this.email = email;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
