package com.spring.prz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.biz.service.Service;
import com.spring.biz.vo.VO;

@Controller
public class ControllerTemplate {
	@Autowired Service service;
	
	@GetMapping("a.html")
	public String aForm(VO vo) {
		return null;
	}
	
	@PostMapping("a.html")
	public String aProc(VO vo) {
		
		return null;
	}
}
