package com.vicky.controller.api;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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
	
	
	private ObjectMapper objectMapper = new ObjectMapper();
	
	@GetMapping("/api/sendMessage")
	@ResponseBody
	public String messageSend(@RequestBody String pesan) {
		System.out.println(pesan);
		Pesan pesanObj = new Pesan();
		
		try {
			pesanObj = objectMapper.readValue(pesan, Pesan.class);
			
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(NullPointerException e) {
			e.printStackTrace();
		}
		
		pesanService.sendPesan(pesanObj);
		return "berhasil";
	}
	
	@GetMapping("/api/getAllDosen")
	@ResponseBody
	public String getAllDosen() {
		
		String jsonStr="cannot transfer data";
	try {
			jsonStr = objectMapper.writeValueAsString(dosenService.getAllDosen());
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return jsonStr;
	}
}
