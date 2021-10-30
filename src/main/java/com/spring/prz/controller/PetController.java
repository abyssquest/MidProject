package com.spring.prz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.biz.pet.service.PetService;
import com.spring.biz.pet.vo.PetVO;

@Controller
public class PetController {
	@Autowired
	PetService service;
	
	@RequestMapping("testPet.me")
	public String testPet() {
		PetVO vo = new PetVO();
		vo.setName("Navi");
		
		System.out.println("PetService 작동 테스트");
		service.insert(vo);
		service.selectList(vo);
		service.selectOne(vo);
		service.update(vo);
		service.delete(vo);
		
		return "testFolder/testPet";
	}
	
	@RequestMapping(value = "insertPet.do", method = RequestMethod.GET)
	public String insertPetForm() {
		System.out.println("컨트롤러 맵핑 insertPetForm 확인");
		return "pet/insertPet";
	}
	
	@RequestMapping(value = "insertPet.do", method = RequestMethod.POST)
	public String insertPetProc(/*PetVO vo*/) {
		System.out.println("컨트롤러 맵핑 insertPetProc 확인");
		
		PetVO vo = new PetVO(); 
		vo.setName("Navi"); // 테스트용
		
		service.insert(vo);
		return "redirect:getPetList.do";		
	}
	
	@RequestMapping("getPetList.do")
	public String getPetList() {
		System.out.println("컨트롤러 맵핑 getPetList 확인");
		
		PetVO vo = new PetVO();
		vo.setName("Navi"); // 테스트용
		
		service.selectList(vo);
		return "pet/getPetList";
	}
	
	@RequestMapping("getPet.do")
	public String getPet() {
		System.out.println("컨트롤러 맵핑 getPet 확인");
		
		PetVO vo = new PetVO();
		vo.setName("Navi"); // 테스트용
		
		service.selectOne(vo);
		return "pet/getPet";
	}
	
	@RequestMapping(value = "updatePet.do", method = RequestMethod.GET)
	public String updatePetForm() {
		System.out.println("컨트롤러 맵핑 updatePetForm 확인");
		return "pet/updatePet";
	}
	
	@RequestMapping(value = "updatePet.do", method = RequestMethod.POST)
	public String updatePetProc() {
		System.out.println("컨트롤러 맵핑 updatePetProc 확인");
		
		PetVO vo = new PetVO();
		vo.setName("Navi"); // 테스트용
		
		service.update(vo);
		return "redirect:getPetList.do";
	}
	
	@RequestMapping("deletePet.do")
	public String deletePet() {
		System.out.println("컨트롤러 맵핑 deletePet 확인");
		
		PetVO vo = new PetVO();
		vo.setName("Navi"); // 테스트용
		
		service.delete(vo);
		return "redirect:getPetList.do";
	}
}