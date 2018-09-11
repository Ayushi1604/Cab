package com.example.CabBooking.Cab.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.CabBooking.Cab.Bean.RouteBean;
import com.example.CabBooking.Cab.service.RouteService;

@RestController
public class RouteController {

	@Autowired
	private RouteService routeService;

	@RequestMapping(value="/getAllRoutes",method=RequestMethod.GET)
	public ModelAndView getAllRoutes() {
		List<RouteBean> routes=new ArrayList<RouteBean>();
		ModelAndView mav=new ModelAndView("getAllRoutes");
		routes=routeService.getAllRoutes();
		mav.addObject("message", routes);
			return mav;
	}  
	
	@RequestMapping(value="/getRoute",method=RequestMethod.GET)
	public ModelAndView getRoute(@RequestParam Map<String,String> map) {
		Object route=routeService.getRoute(map.get("routeId"));
		if(route==null) {
			ModelAndView mav=new ModelAndView("getRoute");
			mav.addObject("message","Requested route is not present");
			return mav;
		}
		else {
			ModelAndView mav=new ModelAndView("getRoute");
			mav.addObject("message", route);
			return mav;
		}
		
	}  
}
