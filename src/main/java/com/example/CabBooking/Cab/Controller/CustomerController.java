package com.example.CabBooking.Cab.Controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.CabBooking.Cab.Repository.BookingRepository;
import com.example.CabBooking.Cab.Bean.BookingHistoryBean;
import com.example.CabBooking.Cab.Bean.LoginBean;
import com.example.CabBooking.Cab.Bean.VehicleBean;
import com.example.CabBooking.Cab.Repository.LoginRepository;
import com.example.CabBooking.Cab.Repository.VehicleRepository;

@RestController
public class CustomerController {

	static int id = 0;
	
	@Autowired
	LoginRepository loginRepo;
	
	@Autowired
	BookingRepository bookingRepo;
	
	@Autowired
	VehicleRepository vehicleRepo;
	
	@RequestMapping(value="/CustomerHomePage",method = RequestMethod.GET)
	   public ModelAndView CustomerHomePage() {
		   ModelAndView mav = new ModelAndView("Customer");
			return mav;
	   }
	
	@RequestMapping(value="/BookCabNow",method = RequestMethod.GET)
	   public ModelAndView bookCabNow() {
		ArrayList<ArrayList<String>> data = new ArrayList<ArrayList<String>>();
		 ArrayList<String> destination = new ArrayList<>();
		 destination.add("New Delhi station");
		 destination.add("Uttam Nagar");
		 destination.add("Shahdara");
		 destination.add("Saket");
		 destination.add("Rohini");
		 data.add(destination);
		 ArrayList<String> source = new ArrayList<>();
		 source.add("Janak Puri");
		 source.add("Lakshmi Nagar");
		 source.add("Faridabad");
		 source.add("Dilshad Garden");
		 source.add("Nehru Place");
		 data.add(source);
		  ModelAndView mav = new ModelAndView("BookCabNow");
		  mav.addObject("sourceDestination",data);

			return mav;
	   }

	@RequestMapping(value="/search",method=RequestMethod.POST)
	public ModelAndView search(@RequestParam String vehicleName,@RequestParam String vehicleType ){
		
		List<VehicleBean> vehicles =vehicleRepo.findByVehicleNameAndVehicleType(vehicleName,vehicleType);
		for(VehicleBean vehicle:vehicles){
			System.out.println(vehicle.getVehicleName());
		}
		ModelAndView mav = new ModelAndView("BookNow");
		mav.addObject("vehicles", vehicles);
		return mav;
	}
	
	@RequestMapping(value="/confirmBooking" , method=RequestMethod.GET)
	public ModelAndView confirmBooking(HttpSession session){
		LoginBean user = loginRepo.findByEmail(session.getAttribute("user").toString());
		BookingHistoryBean bookingHistory = new BookingHistoryBean();
		bookingHistory.setEmail(user.getEmail());
		bookingHistory.setName(user.getUserName());
		bookingHistory.setDate(new Date());
		bookingRepo.save(bookingHistory);
		ModelAndView mav = new ModelAndView("welcome");
		return mav;
	}
	
	@RequestMapping(value="/bookingHistory",method = RequestMethod.GET)
	public ModelAndView bookingHistory(HttpSession session){
		
		List<BookingHistoryBean> history = bookingRepo.findByEmail(session.getAttribute("user").toString());
		ModelAndView mav = new ModelAndView("BookingHistory");
		mav.addObject("history", history);
		return mav;
	}
	   
	@RequestMapping(value="/viewProfile",method=RequestMethod.GET)
	public ModelAndView profile(HttpSession httpSession) {
		String id = httpSession.getAttribute("user").toString();
		LoginBean customer = loginRepo.findByEmail(id);
		ModelAndView mav = new ModelAndView("viewProfile");
		mav.addObject("customer", customer);
		return mav;
	}
	
	@RequestMapping(value="/editProfile",method=RequestMethod.GET)
    public ModelAndView editProfile(@RequestParam long loginid,ModelMap model) {
		LoginBean loginBean = new LoginBean();
		loginBean = loginRepo.findById(loginid).get();
		System.out.println(loginid);
		ModelAndView mav = new ModelAndView("editProfile");
		model.put("loginBean", loginBean);
		return mav;
	}
	
	@RequestMapping(value="/editProfile",method=RequestMethod.POST)
    public ModelAndView editProfil(ModelMap model,@Valid LoginBean loginBean,BindingResult result) {
		if(result.hasErrors()) {
			ModelAndView mav = new ModelAndView("editProfile");
			return mav;
		}
		loginBean.setEmail(loginBean.getEmail());
		loginRepo.save(loginBean);
		ModelAndView mav = new ModelAndView("redirect:/viewProfile");
		return mav;
	}
}
