package com.vicky.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vicky.service.DosenInterfaceService;
import com.vicky.service.PesanInterfaceService;
import com.vicky.model.Dosen;
import com.vicky.model.Pesan;
@Controller
public class MahasiswaController {
	@Autowired
	private DosenInterfaceService dosenService;
	@Autowired
	private PesanInterfaceService pesanService;
	
	@RequestMapping("/")
	public String showLogin() {
		String page = "loginMahasiswa";
		return page;
	}
	
	@GetMapping("/homeMahasiswa")
	public String HomeMahasiswa(Model model) {
		List<Dosen> allDosen = dosenService.getDosen();
		
		model.addAttribute("dosens", allDosen);
		Pesan pesan = new Pesan();
		model.addAttribute("Pesan", pesan);
		
		String page = "homeMahasiswa";
		
		return page;
	}
	
	
	@PostMapping("/messageSend")
	public String messageSend(Model model,Pesan pesan) {
		pesanService.sendPesan(pesan);
		
		String controller = "redirect:homeMahasiswa";
		return controller;
	}
	
	@RequestMapping("/profil")
	public String ProfilDosen() {
		String profil = "profilDosen";
		
		return profil;
	}
}