package com.spring.prz.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.imgscalr.Scalr;
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
		//System.out.println("컨트롤러 맵핑 insertImageForm 확인");
		return "image/insertImage";
	}
	
	@RequestMapping(value = "insertImage.do", method = RequestMethod.POST)
	public String insertImageProc(ImageVO vo, HttpSession session,
								MultipartHttpServletRequest request) throws Exception {
		//System.out.println("컨트롤러 맵핑 insertImageProc 확인");
		
		MultipartFile file = request.getFile("uploadFile");
		
		if(!file.isEmpty()) {
			String uploadDir = session.getServletContext().getRealPath("/save_file/");
			String uploadThumb = session.getServletContext().getRealPath("/save_thumb/");
			String uploadFileExt = FilenameUtils.getExtension(file.getOriginalFilename());
			String uploadFileName = (String)session.getAttribute("id") + "-"
					+ new SimpleDateFormat("yyyyMMdd-HHmmss").format(new Date()) + "." + uploadFileExt;
			
			//System.out.println(uploadDir + uploadName);
			file.transferTo(new File(uploadDir + uploadFileName));
			
			makeThumbnail(uploadDir + uploadFileName, uploadThumb + uploadFileName, uploadFileExt);
			vo.setUploadFileName(uploadFileName);
		}
		
		service.insert(vo);
		return "redirect:getImageList.do";		
	}
	
	@RequestMapping("getImageList.do")
	public String getImageList(Model model, ImageVO vo/* , HttpSession session */) {
		//System.out.println("컨트롤러 맵핑 getImageList 확인");
		
		//vo.setMasterId((String)session.getAttribute("id"));
		
		List<ImageVO> list = service.selectList(vo);
		model.addAttribute("imageList",list);
		
		return "image/getImageList";
	}
	
	@RequestMapping("getImage.do")
	public String getImage(Model model, ImageVO vo, HttpSession session) {
		//System.out.println("컨트롤러 맵핑 getImage 확인");
		
		ImageVO image = service.selectOne(vo);
		model.addAttribute("image", image);
		
		return "image/getImage";
	}
	
	@RequestMapping("deleteImage.do")
	public String deleteImage(ImageVO vo, HttpSession session) {
		//System.out.println("컨트롤러 맵핑 deleteImage 확인");
		ImageVO dbVO = service.selectOne(vo);
		
		File file1 = new File(session.getServletContext().getRealPath("/save_file/") + dbVO.getUploadFileName());
		File file2 = new File(session.getServletContext().getRealPath("/save_thumb/") + dbVO.getUploadFileName());
		
		String msg1 = file1.exists() ? file1.delete() ? "파일삭제 성공" : "파일삭제 실패" : "파일이 존재하지 않습니다.";
		String msg2 = file2.exists() ? file2.delete() ? "파일삭제 성공" : "파일삭제 실패" : "파일이 존재하지 않습니다.";
		
		System.out.println(msg1);
		System.out.println(msg2);
		
		service.delete(vo);
		
		return "redirect:getImageList.do";
	}
	
	private void makeThumbnail(String inputFile, String outputFile, String fileExt) throws Exception {
		BufferedImage srcImg = ImageIO.read(new File(inputFile));
		int dw = 300, dh = 300;
		int ow = srcImg.getWidth();
		int oh = srcImg.getHeight();
		
		int nw = ow;
		int nh = (ow * dh) / dw;
		
		if(nh > oh) {
			nh = (oh * dw) / dh;
			nh = oh;
		}
		
		BufferedImage cropImg = Scalr.crop(srcImg, (ow - nw) / 2, (oh - nh) / 2, nw, nh);
		BufferedImage destImg = Scalr.resize(cropImg, dw, dh);
		
		File thumbFile = new File(outputFile);
		ImageIO.write(destImg, fileExt.toUpperCase(), thumbFile);
	}
}