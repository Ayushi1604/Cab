package com.example.CabBooking.Cab.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.CabBooking.Cab.Bean.DriverBean;
import com.example.CabBooking.Cab.Bean.VehicleBean;
import com.example.CabBooking.Cab.Repository.VehicleRepository;

@Service
public class VehicleService {

	 @Autowired  
	 private VehicleRepository vehicleRepository;  
	 
	 public List<VehicleBean> getAllVehicles(){  
	        List<VehicleBean> vehicles = new ArrayList<>();  
	        vehicles = vehicleRepository.findAll();  
	        return vehicles;  
	    }
	 
	 public Object getVehicle(String vehicleNumber){  
	        Optional<VehicleBean> vehicleBean =  vehicleRepository.findById(vehicleNumber); 
	       if(vehicleBean==null)
	    	   return null;
	       else
	    	   return vehicleBean;
	    }
	  
	 public String AddVehicle(VehicleBean vehicle){  
	       vehicleRepository.save(vehicle);
	       return "SUCCESS";
	    }
	    
	 public String deleteVehicle(VehicleBean vehicleBean){  
	        vehicleRepository.delete(vehicleBean);
	        return "SUCCESS";
	    }  
	 
	 public String updateVehicle(VehicleBean vehicle) {
	    	vehicleRepository.save(vehicle);
	    	return "SUCCESS";
	    }
}
