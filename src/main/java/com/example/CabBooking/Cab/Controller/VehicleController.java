package com.example.CabBooking.Cab.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.CabBooking.Cab.Bean.VehicleBean;
import com.example.CabBooking.Cab.Repository.VehicleRepository;
import com.example.CabBooking.Cab.service.VehicleService;

@RestController
public class VehicleController {
	
	@Autowired  
    private VehicleService vehicleService; 
	
	@Autowired
	private VehicleRepository repository;
   
	@RequestMapping(value="/home",method = RequestMethod.GET)
	   public ModelAndView home() {
		   ModelAndView mav = new ModelAndView("Admin");
			return mav;
	   }
	
	@RequestMapping(value="/AddVehicle", method=RequestMethod.GET)
	public ModelAndView AddVehicle() {
		ModelAndView mav=new ModelAndView("AddVehicle");
		return mav;
	}
@RequestMapping(value="/vehicleMain", method=RequestMethod.POST)
public ModelAndView vehicleMain(@RequestParam Map<String,String> map) {
	VehicleBean vehicleBean=new VehicleBean();
	vehicleBean.setVehicleNumber(map.get("vehicleNumber"));
	vehicleBean.setVehicleName(map.get("vehicleName"));
	vehicleBean.setVehicleType(map.get("vehicleType"));
	String result=vehicleService.AddVehicle(vehicleBean);
	if(result.equals("SUCCESS")) {
		ModelAndView mav = new ModelAndView("Admin");
		 mav.addObject("message", "Vehicle's Details Successfully Added");
			return mav;
			
	}
	else {
			ModelAndView mav=new ModelAndView("AddVehicle");
			mav.addObject("warning", "Please fill the complete details");
			return mav;	
	}
}

@RequestMapping(value="/updateVehicle",method = RequestMethod.GET)
   public ModelAndView updateVehicle(@RequestParam String id,ModelMap model) {
	   VehicleBean vehicle = repository.findById(id).get();
	   model.put("vehicle",vehicle);
	   ModelAndView mav = new ModelAndView("updateVehicle");
		return mav;
   }



@RequestMapping(value="/updateVehicle", method=RequestMethod.POST)
public ModelAndView driverFinalUpdate(ModelMap model, @Valid VehicleBean vehicle,BindingResult result) {
	
	if(result.hasErrors()){
		ModelAndView mav = new ModelAndView("updateVehicle");
		return mav;
	}
	vehicle.setVehicleNumber(vehicle.getVehicleNumber());
	repository.save(vehicle);
	ModelAndView mav=new ModelAndView("redirect:/getAllVehicles");
	return mav;
}

@RequestMapping(value="/deleteVehicle",method=RequestMethod.GET)
public ModelAndView deleteDriver(@RequestParam String id) {
	repository.deleteById(id);
	ModelAndView mav=new ModelAndView("redirect:/getAllVehicles");
	return mav;
}


@RequestMapping(value="/getAllVehicles",method=RequestMethod.GET)
public ModelAndView getAllVehicles() {
	List<VehicleBean> vehicles=new ArrayList<VehicleBean>();
	ModelAndView mav=new ModelAndView("getAllVehicles");
	vehicles=vehicleService.getAllVehicles();
	mav.addObject("listOfVehicles", vehicles);
		return mav;
}
}
