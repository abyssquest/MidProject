package com.spring.prz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.biz.vo.VO;

@Controller
public class LogIn {
	
	@GetMapping("login.html")
	public String logInForm(VO vo) {
		return null;
	}
	
	@PostMapping("login.html")
	public String logInProc(VO vo) {
		
		return null;
	}
}
