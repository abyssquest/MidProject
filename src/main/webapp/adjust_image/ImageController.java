package com.springproject.biz.image.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.springproject.biz.image.dao.ImageVO;
import com.springproject.biz.image.service.ImageService;
import com.springproject.biz.image.util.ImageUtils;

@Controller
@RequestMapping("/image/*")
public class ImageController {
	
	private static final Logger logger = LoggerFactory.getLogger(ImageController.class);
	
	@Inject
	public ImageService service;
	
	//private static final String uploadPath = 사진 경로
	//private static final thumbnailPath = 썸네일 경로
	
	private static ArrayList<ImageVO> uploadList = new ArrayList<ImageVO>();
	
	
	private ModelAndView thumbnailView(HttpServletResponse response) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		//mv.addObject("list", service.selectList());
		mv.setViewName("image/list");
		
		return mv;
	}
	
	@RequestMapping(value= "/write", method = RequestMethod.GET)
	public String write() throws Exception {
	 	
		return "image/write";
	}
	
	@ResponseBody
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public ArrayList<ImageVO> uploadAjax(@RequestParam MultipartFile[] uploadFile) throws Exception {
		
		//File uploadFolder = ImageUtils.makeFolder(uploadPath);
		
		for (MultipartFile multipartFile : uploadFile) {
			String fileName = multipartFile.getOriginalFilename();
			
			logger.info("name " + fileName + " size " + multipartFile.getSize());
			
			File saveFile = new File(uploadFolder, fileName);
			
			ImageVO vo = new ImageVO(fileName, uploadFolder.toString() true);
			
			if (ImageUtils.checkImage(saveFile)) {
				uploadList.add(vo);
				multipartFile.transferTo(saveFile);
			}
			if(saveFile.getName().equals(uploadList.get(0).getFileName())) {
				String thumbnailName="thumbnail_"+uploadList.get(0).getFileName();
				File thumbnailFile = new File(thumbnailPath, thumbnailName);
				Thumbnails.of(saveFile).size(250,250).toFile(thumbnailFile);
			}
		}
		
		return uploadList;
	}
	
	public String send(HttpServletRequest request) throws Exception {
		
		ImageVO uploadVO = new ImageVO();
		
		uploadVO.setFileName(uploadList.get(0).getFileName());
		uploadVO.setUploadPath(uploadList.get(0).getUploadPath);
		
		logger.info("-------------send success-------------");
		String title = (String) request.getParameter("title");
		String content = (String) request.getParameter("content");
		
		uploadVO.setTitle(title);
		uploadVO.setContent(content);
		uploadVO.setWriter("글쓴이");
		
		logger.info(title + content + uploadList.toString());
		
		service.insert(uploadVO);
		
		return "redirect:/image/list";
	}
	
}