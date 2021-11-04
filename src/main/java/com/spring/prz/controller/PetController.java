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

		return "pet/insertPet";
	}
	
	@RequestMapping(value = "insertPet.do", method = RequestMethod.POST)
	public String insertPetProc(PetVO vo, MultipartHttpServletRequest request ,
			HttpSession session) throws Exception {
		
		MultipartFile file = request.getFile("uploadFile");
		
		if(!file.isEmpty()) {
			String uploadDir = session.getServletContext().getRealPath("/upload/profile_pet/");
			String uploadFileName = vo.getMasterId() + Integer.toString(vo.getSeq()) + "." + FilenameUtils.getExtension(file.getOriginalFilename());
			
			file.transferTo(new File(uploadDir + uploadFileName));
			vo.setUploadPetFile(uploadFileName);
		}
		
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
	public String updatePetProc(PetVO vo, MultipartHttpServletRequest request ,
			HttpSession session) throws Exception {
		
		MultipartFile file = request.getFile("uploadFile");

		if(!file.isEmpty()) {
			PetVO dbVO = service.selectOne(vo);

			File dbfile = new File(session.getServletContext().getRealPath("/upload/profile_pet/") + dbVO.getUploadPetFile());
			
			// 파일 삭제 명령을 위한거니 지우지 마세요
			String msg = dbfile.exists() ? dbfile.delete() ? "기존 파일삭제 성공" : "기존 파일삭제 실패" : "기존 파일이 존재하지 않습니다.";
			System.out.println(msg); // msg 안쓰면 null로 설정하세요
			
			String uploadDir = session.getServletContext().getRealPath("/upload/profile_pet/");
			String uploadFileName = vo.getMasterId() + Integer.toString(vo.getSeq()) + "." + FilenameUtils.getExtension(file.getOriginalFilename());

			file.transferTo(new File(uploadDir + uploadFileName));
			vo.setUploadPetFile(uploadFileName);
		}

		service.update(vo);
		return "redirect:getPetList.do";
	}
	
	@RequestMapping("deletePet.do")
	public String deletePet(PetVO vo, HttpSession session) {
		PetVO dbVO = service.selectOne(vo);
		
		File file = new File(session.getServletContext().getRealPath("/upload/profile_pet/") + dbVO.getUploadPetFile());
		String msg = file.exists() ? file.delete() ? "파일삭제 성공" : "파일삭제 실패" : "파일이 존재하지 않습니다.";
		// 파일 삭제 명령을 위한거니 지우지 마세요
		
		System.out.println(msg); // msg 안쓰면 null로 설정하세요
		
		service.delete(vo);
		return "redirect:getPetList.do";
	}
}