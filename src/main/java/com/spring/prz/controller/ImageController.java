package com.spring.prz.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.spring.biz.image.service.ImageService;
import com.spring.biz.image.vo.ImageVO;

@Controller
public class ImageController {
	@Autowired
	ImageService service;
	
	@RequestMapping(value = "insertImage.do", method = RequestMethod.GET)
	public String insertImageForm() {
		System.out.println("컨트롤러 맵핑 insertImageForm 확인");
		return "image/insertImage";
	}
	
	@RequestMapping(value = "insertImage.do", method = RequestMethod.POST)
	public String insertImageProc(ImageVO vo, HttpSession session,
								MultipartHttpServletRequest request) throws Exception {
		System.out.println("컨트롤러 맵핑 insertImageProc 확인");
		
		MultipartFile file = request.getFile("uploadFile");
		
		if(!file.isEmpty()) {
			String uploadDir = session.getServletContext().getRealPath("/save_File/");
			String uploadFileName = (String)session.getAttribute("id") + "-"
					+ new SimpleDateFormat("yyyyMMdd-HHmmss").format(new Date())
					+ "." + FilenameUtils.getExtension(file.getOriginalFilename());
			
			//System.out.println(uploadDir + uploadName);
			file.transferTo(new File(uploadDir + uploadFileName));
			
			vo.setUploadFileName(uploadFileName);
		}
		
		service.insert(vo);
		return "redirect:getImageList.do";		
	}
	
	@RequestMapping("getImageList.do")
	public String getImageList(Model model, ImageVO vo, HttpSession session) {
		System.out.println("컨트롤러 맵핑 getImageList 확인");
		
		vo.setMasterId((String)session.getAttribute("id"));
		
		List<ImageVO> list = service.selectList(vo);
		model.addAttribute("imageList",list);
		
		return "image/getImageList";
	}
	
	@RequestMapping("getImage.do")
	public String getImage(Model model, ImageVO vo, HttpSession session) {
		System.out.println("컨트롤러 맵핑 getImage 확인");
		
		ImageVO image = service.selectOne(vo);
		
		if ( image.getUploadFileName() !=null || image.getUploadFileName() != "") {
			String uploadDir = session.getServletContext().getRealPath("/save_File/");
			model.addAttribute("dir", uploadDir);
		}
		
		model.addAttribute("image", image);
		
		return "image/getImage";
	}
	
	@RequestMapping("deleteImage.do")
	public String deleteImage(ImageVO vo, HttpSession session) {
		System.out.println("컨트롤러 맵핑 deleteImage 확인");
		ImageVO dbVO = service.selectOne(vo);
		
		if(dbVO.getMasterId() == (String)session.getAttribute("id")) {
			service.delete(vo);
		} else {
			System.out.println("작성자와 삭제자가 일치하지 않습니다.");
		}
		
		return "redirect:getImageList.do";
	}
}