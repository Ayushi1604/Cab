package com.example.CabBooking.Cab.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.CabBooking.Cab.Bean.DriverBean;
import com.example.CabBooking.Cab.Bean.RouteBean;
import com.example.CabBooking.Cab.Repository.RouteRepository;

@Service
public class RouteService {

	@Autowired
	private RouteRepository routeRepository;
	
	public List<RouteBean> getAllRoutes(){  
        List<RouteBean> routes = new ArrayList<>();  
        routeRepository.findAll().forEach(routes::add);  
        return routes;  
    }  
	
	  public Object getRoute(String routeId){  
	       Optional<RouteBean> routeBean= routeRepository.findById(routeId); 
	       if(routeBean==null)
	    	   return null;
	       else
	    	   return routeBean;
	    }
	  
}
