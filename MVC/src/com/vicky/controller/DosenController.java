package com.vicky.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vicky.model.Dosen;
import com.vicky.model.Mahasiswa;
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
			model.addAttribute("error", "login terlebih dahulu untuk mengakses halaman");
			return "redirect:/login";
		}
		
		List<Object[]> pesan = pesanService.getAllPesanDosen(user);
		
		model.addAttribute("user", user);
		model.addAttribute("string", "");
		model.addAttribute("pesans", pesan);
//		Pesan pesan = new Pesan();
//		model.addAttribute("Pesan", pesan);

		return page;
	}
	
	@GetMapping("/changeStats")
	public String changeStats(@RequestParam("shehe") String hay) {
		System.out.println(hay);
		pesanService.gantiStatus(hay);
		
		String controller = "redirect:homeDosen";
		return controller;
	}
	
	@GetMapping("/changeKetersediaan")
	public String changeKetersediaan(@RequestParam("ketersediaan") String ketersediaan,HttpSession httpSession) {
		dosenService.gantiKetersediaan(ketersediaan);
		System.out.println(ketersediaan);
		httpSession.setAttribute("tmp",(Dosen) httpSession.getAttribute("user"));
		httpSession.setAttribute("user",null);
		String controller = "redirect:sliwer";

		return controller;
	}
	
	@GetMapping("/sliwer")
	public String sliwer(Model model,HttpSession httpSession) {
		Dosen user = (Dosen) httpSession.getAttribute("user");
		System.out.println(user.getStatus());
		Dosen result = dosenService.getDosen(user);
		httpSession.setAttribute("user", user);
		String controller = "redirect:homeDosen";
		return controller;
	}
}