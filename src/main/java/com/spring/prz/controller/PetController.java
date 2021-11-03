package com.spring.prz.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.biz.pet.service.PetService;
import com.spring.biz.pet.vo.PetVO;

@Controller
public class PetController {
	@Autowired
	PetService service;
	
	@RequestMapping(value = "insertPet.do", method = RequestMethod.GET)
	public String insertPetForm() {
		//System.out.println("컨트롤러 맵핑 insertPetForm 확인");
		return "pet/insertPet";
	}
	
	@RequestMapping(value = "insertPet.do", method = RequestMethod.POST)
	public String insertPetProc(PetVO vo, MultipartHttpServletRequest request ,
			HttpSession session) throws Exception {
		//System.out.println("컨트롤러 맵핑 insertPetProc 확인");
		
		MultipartFile file = request.getFile("uploadFile");
		
		if(!file.isEmpty()) {
			String uploadDir = session.getServletContext().getRealPath("/save_PetImage/");
			
			//String uploadFileExt = FilenameUtils.getExtension(file.getOriginalFilename());
			//String uploadFileExt = FilenameUtils.getName(file.getOriginalFilename());
			String uploadFileName = FilenameUtils.getName(file.getOriginalFilename()); // 파일 경로를 직접 저장.
			
			System.out.println(uploadFileName);
			file.transferTo(new File(uploadDir + uploadFileName));
			vo.setUploadPetFile(uploadFileName); //이미지 불러올 때 /biz/save_PetImage/ 사용
		}
		
		service.insert(vo);
		return "redirect:getPetList.do";
	}
	
	@RequestMapping("getPetList.do")
	public String getPetList(Model model, PetVO vo, HttpSession session) {
		//System.out.println("컨트롤러 맵핑 getPetList 확인");
		
		vo.setMasterId((String)session.getAttribute("id"));
		
		List<PetVO> list = service.selectList(vo);
		model.addAttribute("petList", list);
		
		return "pet/getPetList";
	}
	
	@RequestMapping("getPet.do")
	public String getPet(Model model, PetVO vo) {
		//System.out.println("컨트롤러 맵핑 getPet 확인");
		
		PetVO pet = service.selectOne(vo);
		model.addAttribute("pet", pet);
		
		return "pet/getPet";
	}
	
	@RequestMapping(value = "updatePet.do", method = RequestMethod.GET)
	public String updatePetForm(Model model, PetVO vo) {
		//System.out.println("컨트롤러 맵핑 updatePetForm 확인");
		
		model.addAttribute("pet", vo);
		return "pet/updatePet";
	}
	
	@RequestMapping(value = "updatePet.do", method = RequestMethod.POST)
	public String updatePetProc(PetVO vo) {
		//System.out.println("컨트롤러 맵핑 updatePetProc 확인");
		
		service.update(vo);
		return "redirect:getPetList.do";
	}
	
	@RequestMapping("deletePet.do")
	public String deletePet(PetVO vo) {
		//System.out.println("컨트롤러 맵핑 deletePet 확인");
		
		service.delete(vo);
		return "redirect:getPetList.do";
	}
}