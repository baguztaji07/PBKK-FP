package com.vicky.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class homeController {	
	@RequestMapping("/")
	public String homePage() {
		String page = "homepage";
		
		return page;
	}

	@RequestMapping("/login")
	public String dosenPage() {
		String page = "loginDosen";
		
		return page;
	}

	@RequestMapping("/loginMhs")
	public String MhsPage() {
		String page = "loginMahasiswa";
		
		return page;
	}
}