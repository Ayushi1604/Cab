package com.example.CabBooking.Cab.Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="vehicle_table")
public class VehicleBean {
	
	@Id
	@Column(name="vehicle_number")
	private String vehicleNumber;
	@Column(name="vehicle_name")
	private String vehicleName;
	@Column(name="vehicle_type")
	private String vehicleType;
	
	public VehicleBean() {
		
	}

	public VehicleBean(String vehicleNumber, String vehicleName, String vehicleType) {
		super();
		this.vehicleNumber = vehicleNumber;
		this.vehicleName = vehicleName;
		this.vehicleType = vehicleType;
	}

	public String getVehicleNumber() {
		return vehicleNumber;
	}

	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}

	public String getVehicleName() {
		return vehicleName;
	}

	public void setVehicleName(String vehicleName) {
		this.vehicleName = vehicleName;
	}

	public String getVehicleType() {
		return vehicleType;
	}

	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}
	
}
