package com.spring.prz.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.biz.file.service.FileService;
import com.spring.biz.image.service.ImageService;
import com.spring.biz.image.vo.ImageVO;

@Controller
public class ImageController {
	@Autowired
	ImageService service;
	
	@Autowired
	FileService fileService;

	@RequestMapping(value = "insertImage.do", method = RequestMethod.GET)
	public String insertImageForm() {
		return "image/insertImage";
	}

	@RequestMapping(value = "insertImage.do", method = RequestMethod.POST)
	public String insertImageProc(ImageVO vo, MultipartHttpServletRequest request)
			throws Exception {

		vo.setFileName(fileService.insertImage(vo, request));

		service.insert(vo);
		return "redirect:getImageList.do";
	}

	@RequestMapping("getImageList.do")
	public String getImageList(Model model, ImageVO vo, HttpServletRequest request) {
		List<ImageVO> list = service.selectList(vo);
		model.addAttribute("imageList", list);
		
		if(request.getParameter("page") == null) {
			model.addAttribute("page", 1);
		}
		
		return "image/getImageList";
	}

	@RequestMapping("getImage.do")
	public String getImage(Model model, ImageVO vo, HttpSession session) {
		ImageVO image = service.selectOne(vo);
		model.addAttribute("image", image);

		return "image/getImage";
	}

	@RequestMapping("deleteImage.do")
	public String deleteImage(ImageVO vo, HttpServletRequest request) {
		System.out.println(fileService.deleteImage(vo, request));
		service.delete(vo);
		return "redirect:getImageList.do";
	}
}