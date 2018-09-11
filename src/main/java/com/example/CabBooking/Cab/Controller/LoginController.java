package com.example.CabBooking.Cab.Controller;

import java.util.Map;

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

import com.example.CabBooking.Cab.Bean.LoginBean;
import com.example.CabBooking.Cab.Repository.LoginRepository;

@RestController
public class LoginController {

	
	@Autowired
	LoginRepository loginRepo;
	
	 @RequestMapping(value="/",method = RequestMethod.GET)
	   public ModelAndView Login() {
		   ModelAndView mav = new ModelAndView("index");
			return mav;
	   }
	 
	
	@RequestMapping(value="/login" , method=RequestMethod.POST)
	public ModelAndView login( HttpSession httpSession, @RequestParam Map<String,String> map1,@RequestParam Map<String,String> map2) {
		 
		 String email = map1.get("email");
		 String password = map2.get("password");
		 httpSession.setAttribute("user", email);
		 if((email == null) || password == null){
			 ModelAndView mav = new ModelAndView("index");
			 mav.addObject("message", "Please check your credantial");
		 }
		 else if(email.equals("admin@123") && password.equals("password")){
			 ModelAndView mav = new ModelAndView("Admin");
			 mav.addObject("admin", email);
			 return mav;
		 }
		 else if( loginRepo.existsByEmail(email)){
			 LoginBean user = loginRepo.findByEmail(email);
			 if(user.getEmail().equals(email) && user.getPassword().equals(password)){
				 ModelAndView mav = new ModelAndView("Customer");
				 return mav;
			 }
		 }
		 
		 ModelAndView mav = new ModelAndView("index");
		 mav.addObject("message", "Please check loginid or password");
		 
	   return mav;
	}
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public ModelAndView register(ModelMap model) {
		model.put("loginBean", new LoginBean());
		ModelAndView mav=new ModelAndView("register");
		return mav;
	}
	
	@RequestMapping(value="/registerPage",method=RequestMethod.POST)
	public ModelAndView registerPage(ModelMap model,@Valid LoginBean loginBean,BindingResult result) {
		System.out.println(loginRepo.existsByEmail(loginBean.getEmail()) + loginBean.getEmail());
		if(result.hasErrors()){
			ModelAndView mav = new ModelAndView("register");
			return mav;
		}
		loginRepo.save(loginBean);
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public ModelAndView logout(HttpSession httpSession) {
		httpSession.invalidate();
		ModelAndView mav=new ModelAndView("index");
		mav.addObject("message","Logged out successfully");
		return mav;
	}

}