package com.spring.prz.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.biz.file.service.FileService;
import com.spring.biz.pet.service.PetService;
import com.spring.biz.pet.vo.PetVO;

@Controller
public class PetController {
	@Autowired
	PetService service;
	
	@Autowired
	FileService fileService;

	@RequestMapping(value = "insertPet.do", method = RequestMethod.GET)
	public String insertPetForm() {
		return "pet/insertPet";
	}

	@RequestMapping(value = "insertPet.do", method = RequestMethod.POST)
	public String insertPetProc(PetVO vo, MultipartHttpServletRequest request)
			throws Exception {
		vo.setPetImage(fileService.insertImage(vo, request));
		service.insert(vo);
		return "redirect:getPetList.do";
	}

	@RequestMapping("getPetList.do")
	public String getPetList(Model model, PetVO vo, HttpSession session) {
		vo.setMasterId((String)session.getAttribute("id"));
		List<PetVO> list = service.selectList(vo);
		model.addAttribute("petList", list);
		return "pet/getPetList";
	}
	
	@RequestMapping("getPet.do")
	public String getPet(Model model, PetVO vo) {
		PetVO pet = service.selectOne(vo);
		model.addAttribute("pet", pet);
		return "pet/getPet";
	}
	
	@RequestMapping(value = "updatePet.do", method = RequestMethod.GET)
	public String updatePetForm(Model model, PetVO vo) {
		PetVO dbVO = service.selectOne(vo);
		model.addAttribute("pet", dbVO);
		return "pet/updatePet";
	}
	
	@RequestMapping(value = "updatePet.do", method = RequestMethod.POST)
	public String updatePetProc(PetVO vo, MultipartHttpServletRequest request)
			throws Exception {
		
		System.out.println(fileService.deleteImage(vo, request));
		vo.setPetImage(fileService.insertImage(vo, request));
		service.update(vo);
		return "redirect:getPetList.do";
	}
	
	@RequestMapping("deletePet.do")
	public String deletePet(PetVO vo, HttpServletRequest request) {
		System.out.println(fileService.deleteImage(vo, request));
		service.delete(vo);
		return "redirect:getPetList.do";
	}
}