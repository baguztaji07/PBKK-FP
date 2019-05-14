package com.vicky.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DosenController {
	@RequestMapping("/login")
	public String showLogin() {
		String page = "loginMahasiswa";
		return page;
	}
	
	@RequestMapping("/dosen")
	public String showHome() {
		String page = "dosen";
		return page;
	}
	
	@RequestMapping("/profilDosen")
	public String showProfil() {
		String page = "profilFosen";
		return page;
	}
}
