package com.vicky.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vicky.service.DosenInterfaceService;
import com.vicky.service.MahasiswaInterfaceService;
import com.vicky.service.PesanInterfaceService;
import com.vicky.model.Dosen;
import com.vicky.model.Mahasiswa;
import com.vicky.model.Pesan;
@Controller
public class MahasiswaController {
	@Autowired
	private DosenInterfaceService dosenService;
	@Autowired
	private PesanInterfaceService pesanService;
	@Autowired
	private MahasiswaInterfaceService mahasiswaService;
	
	@GetMapping("/")
	public String showLogin(String error,Model model) {
		
		Mahasiswa mahasiswa = new Mahasiswa();
		model.addAttribute("Mahasiswa", mahasiswa);
		model.addAttribute("error", error);
		
		String page = "loginMahasiswa";
		return page;
	}
	
	@PostMapping("/checkMahasiswa")
	public String checkMahasiswa(Mahasiswa mahasiswa,HttpSession httpSession,Model model) {
		String page = "redirect:homeMahasiswa";
		
		Mahasiswa result = mahasiswaService.getMahasiswa(mahasiswa);
		
		if (result == null) {
			model.addAttribute("error", "akun tidak ditemukan");
			return "redirect:/";
		}
		
		httpSession.setAttribute("user", result);
		
		
		return page;
	}
	
	@GetMapping("/homeMahasiswa")
	public String HomeMahasiswa(Model model,HttpSession httpSession) {
		String page = "homeMahasiswa";
		
		
		Mahasiswa user = (Mahasiswa) httpSession.getAttribute("user");
		
		if (user == null) {
			model.addAttribute("error", "login terlebih dahulu untuk mengakses halaman");
			return "redirect:/";
		}
		
		List<Dosen> allDosen = dosenService.getAllDosen();
		
		model.addAttribute("user", user);
		model.addAttribute("dosens", allDosen);
		Pesan pesan = new Pesan();
		model.addAttribute("Pesan", pesan);
		
		
		
		return page;
	}
	
	
	@PostMapping("/messageSend")
	public String messageSend(Pesan pesan) {
		pesanService.sendPesan(pesan);
		
		String controller = "redirect:homeMahasiswa";
		return controller;
	}
	
	@GetMapping("/inboxMahasiswa")
	public String InboxMahasiswa(Model model,HttpSession httpSession) {
		String page = "inboxMahasiswa";
		
		
		Mahasiswa user = (Mahasiswa) httpSession.getAttribute("user");
		
		if (user == null) {
			model.addAttribute("error", "login terlebih dahulu untuk mengakses halaman");
			return "redirect:/";
		}
		
		List<Object[]> pesan = pesanService.getAllPesan(user);
		if(pesan.isEmpty()) {
			model.addAttribute("message", "Kotak Pesan Kosong");
		}
		
		model.addAttribute("user", user);
		model.addAttribute("pesans", pesan);
		
		
		return page;
	}
	
	@GetMapping("/signOut")
	public String signOut(HttpSession httpSession) {
		httpSession.setAttribute("user", null);
		
		return "redirect:/";
	}
	
	@RequestMapping("/profil")
	public String ProfilDosen() {
		String profil = "profilDosen";
		
		return profil;
	}
}