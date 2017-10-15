package com.suat.blogWork;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class IncController {
	
	
	@RequestMapping(value="/header", method=RequestMethod.GET)
	public String header() {
		return "inc/header";
	}
	@RequestMapping(value="/headercss", method=RequestMethod.GET)
	public String headercss() {
		return "inc/headercss";
	}
	
	@RequestMapping(value="/footerjs", method=RequestMethod.GET)
	public String footerjs() {
		return "inc/footerjs";
	}
}
