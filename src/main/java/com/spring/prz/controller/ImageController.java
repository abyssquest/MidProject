package com.spring.prz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
		service.update(vo);
		service.delete(vo);
		
		return null;
	}
}
