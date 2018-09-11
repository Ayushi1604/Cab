package com.example.CabBooking.Cab.Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="driver_table")
public class DriverBean {
	
	@Column(name="driver_id")
	private String driverId;
	@Column(name="driver_name")
	private String driverName;
	@Column(name="driver_contact_number")
	private String driverContactNumber;
	@Id
	@Column(name="vehicle_number")
	private String vehicleNumber;
	
	public DriverBean() {
		
	}

	public String getDriverId() {
		return driverId;
	}

	public void setDriverId(String driverId) {
		this.driverId = driverId;
	}

	public String getDriverName() {
		return driverName;
	}

	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}

	

	public String getDriverContactNumber() {
		return driverContactNumber;
	}

	public void setDriverContactNumber(String driverContactNumber) {
		this.driverContactNumber = driverContactNumber;
	}

	public String getVehicleNumber() {
		return vehicleNumber;
	}

	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}

}
