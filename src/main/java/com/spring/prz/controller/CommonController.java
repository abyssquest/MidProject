package com.spring.prz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	@RequestMapping("index.do")
	public String index() {
		return "toIndex";
	}
	
	@RequestMapping("hotel.do")
	public String hotel() {
		return "map/map-hotel";
	}
}