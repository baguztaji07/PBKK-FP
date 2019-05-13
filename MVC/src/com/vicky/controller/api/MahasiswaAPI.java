package com.vicky.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.vicky.model.Dosen;
import com.vicky.model.Pesan;
import com.vicky.service.DosenInterfaceService;
import com.vicky.service.PesanInterfaceService;

@RestController
public class MahasiswaAPI {
	@Autowired
	private PesanInterfaceService pesanService;
	@Autowired
	private DosenInterfaceService dosenService;
	
	
	@PostMapping("/api/sendMessage")
	@ResponseBody
	public String messageSend(Pesan pesan) {
		pesanService.sendPesan(pesan);
		return "berhasil";
	}
	
	@GetMapping("/api/getAllDosen")
	public List<Dosen> getAllDosen() {
		return dosenService.getAllDosen();
	}
}
