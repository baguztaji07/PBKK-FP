package com.vicky.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlayerController {
	
	@RequestMapping("/")
	public String showLogin() {
		String page = "loginMahasiswa";
		
		return page;
	}
	
	@RequestMapping("/homeMahasiswa")
	public String Dosen() {
		String page = "homeMahasiswa";
		
		return page;
	}
	
	@RequestMapping("/profil")
	public String ProfilDosen() {
		String profil = "playerview";
		
		return profil;
	}
}