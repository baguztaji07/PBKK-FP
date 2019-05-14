package com.vicky.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vicky.model.Dosen;
import com.vicky.model.Dosen;
import com.vicky.model.Pesan;
import com.vicky.service.DosenInterfaceService;
import com.vicky.service.DosenInterfaceService;
import com.vicky.service.PesanInterfaceService;

@Controller
public class DosenController {
	@Autowired
	private DosenInterfaceService dosenService;
	@Autowired
	private PesanInterfaceService pesanService;
	
	@GetMapping("/login")
	public String showLogin(Model model) {
		
		Dosen dosen = new Dosen();
		model.addAttribute("Dosen", dosen);
		
		String page = "loginDosen";
		return page;
	}
	
	@PostMapping("/checkDosen")
	public String checkDosen(Dosen dosen,HttpSession httpSession) {
		String page = "redirect:homeDosen";
		
		Dosen result = dosenService.getDosen(dosen);
		
		if (result == null) {
			return "redirect:/";
		}
		
		httpSession.setAttribute("user", result);
		
		
		return page;
	}
	
	@GetMapping("/homeDosen")
	public String HomeDosen(Model model,HttpSession httpSession) {
		String page = "homeDosen";
		
		
		Dosen user = (Dosen) httpSession.getAttribute("user");
		
		if (user == null) {
			return "redirect:/";
		}
		
		//List<Pesan> allPesan = pesanService.getAllPesan();
		
		model.addAttribute("user", user);
		model.addAttribute("pesans", allPesan);
		Pesan pesan = new Pesan();
		model.addAttribute("Pesan", pesan);
		
		
		
		return page;
	}
	
	
	
	
//	@RequestMapping("/profil")
//	public String ProfilDosen() {
//		String profil = "profilDosen";
//		
//		return profil;
//	}
//	
//	
//	@RequestMapping("/login")
//	public String showLogin() {
//		String page = "loginDosen";
//		return page;
//	}
//	
//	@RequestMapping("/dosen")
//	public String showHome() {
//		String page = "dosen";
//		return page;
//	}
//	
//	@RequestMapping("/profilDosen")
//	public String showProfil() {
//		String page = "profilFosen";
//		return page;
//	}
	
}
