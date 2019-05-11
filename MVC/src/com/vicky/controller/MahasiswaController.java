package com.vicky.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vicky.service.DosenInterfaceService;
import com.vicky.model.Dosen;
@Controller
public class MahasiswaController {
	@Autowired
	private DosenInterfaceService dosenService;
	
	@RequestMapping("/")
	public String showLogin() {
		String page = "loginMahasiswa";
		
		return page;
	}
	
	@GetMapping("/homeMahasiswa")
	public String Dosen(Model model) {
		List<Dosen> allDosen = dosenService.getDosen();
		
		model.addAttribute("dosens", allDosen);
		
		String page = "homeMahasiswa";
		
		return page;
	}
	
	@RequestMapping("/profil")
	public String ProfilDosen() {
		String profil = "profilDosen";
		
		return profil;
	}
}