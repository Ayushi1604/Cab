package com.example.CabBooking.Cab.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.CabBooking.Cab.Repository.DriverRepository;

import com.example.CabBooking.Cab.Bean.DriverBean;

@Service
public class DriverService {

	 @Autowired  
	 private DriverRepository driverRepository;  
	 
	 public List<DriverBean> getAllDrivers(){  
	        List<DriverBean> drivers = new ArrayList<>();  
	        drivers = driverRepository.findAll();  
	        return drivers;  
	    }  
	 
	  public Object getDriver(String driverId){  
	       Optional<DriverBean> driverBean= driverRepository.findById(driverId); 
	       if(driverBean==null)
	    	   return null;
	       else
	    	   return driverBean;
	    }
	  
	    public String addDriver(DriverBean driver){  
	       driverRepository.save(driver);
	       return "SUCCESS";
	    }
	    
	    public String deleteDriver(DriverBean driverBean){  
	        driverRepository.delete(driverBean);
	        return "SUCCESS";
	    }
	    
	    public String updateDriver(DriverBean driver) {
	    	driverRepository.save(driver);
	    	return "SUCCESS";
	    }

}
