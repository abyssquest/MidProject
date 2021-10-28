package com.spring.prz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.biz.pet.service.PetService;
import com.spring.biz.pet.vo.PetVO;

@Controller
public class PetController {
	@Autowired
	PetService service;
	
	@RequestMapping("testPet.me")
	public String testPet() {
		PetVO vo = new PetVO();
		vo.setSeq(10);
		
		System.out.println("PetService 작동 테스트");
		service.insert(vo);
		service.selectList(vo);
		service.selectOne(vo);
		service.update(vo);
		service.delete(vo);
		
		return "testPet";
	}
}
