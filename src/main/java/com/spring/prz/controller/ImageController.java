package com.spring.prz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.biz.image.service.ImageService;
import com.spring.biz.image.vo.ImageVO;

@Controller
public class ImageController {
	@Autowired
	ImageService service;
	
	@RequestMapping("testImage.do")
	public String testImage() {
		ImageVO vo = new ImageVO();
		vo.setSeq(10);
		
		System.out.println("ImageService 작동 테스트");
		service.insert(vo);
		service.selectList(vo);
		service.selectOne(vo);
		service.delete(vo);
		
		return "testFolder/testImage";
	}
	
	@RequestMapping(value = "insertImage.do", method = RequestMethod.GET)
	public String insertImageForm() {
		System.out.println("컨트롤러 맵핑 insertImageForm 확인");
		return "image/insertImageForm";
	}
	
	@RequestMapping(value = "insertImage.do", method = RequestMethod.POST)
	public String insertImageProc(/*ImageVO vo*/) {
		System.out.println("컨트롤러 맵핑 insertImageProc 확인");
		
		ImageVO vo = new ImageVO(); 
		vo.setSeq(10); // 테스트용
		
		service.insert(vo);
		return "redirect:getImageList.do";		
	}
	
	@RequestMapping("getImageList.do")
	public String getImageList() {
		System.out.println("컨트롤러 맵핑 getImageList 확인");
		
		ImageVO vo = new ImageVO();
		vo.setSeq(10); // 테스트용
		
		service.selectList(vo);
		return "image/getImageList";
	}
	
	@RequestMapping("getImage.do")
	public String getImage() {
		System.out.println("컨트롤러 맵핑 getImage 확인");
		
		ImageVO vo = new ImageVO();
		vo.setSeq(10); // 테스트용
		
		service.selectOne(vo);
		return "image/getImage";
	}
	
	@RequestMapping("deleteImage.do")
	public String deleteImage() {
		System.out.println("컨트롤러 맵핑 deleteImage 확인");
		
		ImageVO vo = new ImageVO();
		vo.setSeq(10); // 테스트용
		
		service.delete(vo);
		return "redirect:getImageList.do";
	}
}