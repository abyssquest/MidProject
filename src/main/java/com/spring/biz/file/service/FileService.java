package com.spring.biz.file.service;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.imgscalr.Scalr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.biz.image.service.ImageService;
import com.spring.biz.image.vo.ImageVO;
import com.spring.biz.pet.service.PetService;
import com.spring.biz.pet.vo.PetVO;
import com.spring.biz.user.service.UserService;
import com.spring.biz.user.vo.UserVO;

@Service
public class FileService {
	@Autowired
	UserService userService;
	
	@Autowired
	PetService petService;
	
	@Autowired
	ImageService imageService;

	public String getDir(UserVO vo, HttpSession session) {
		return session.getServletContext().getRealPath("/upload/profile_user/");
	}

	public String getDir(PetVO vo, HttpSession session) {
		return session.getServletContext().getRealPath("/upload/profile_pet/");
	}

	public String getDir(HttpSession session) {
		return session.getServletContext().getRealPath("/upload/image_main/");
	}

	public String getThumb(HttpSession session) {
		return session.getServletContext().getRealPath("/upload/image_thumb/");
	}

	public String getExt(MultipartFile file) {
		return FilenameUtils.getExtension(file.getOriginalFilename());
	}
	
	public String insertImage(UserVO vo, MultipartHttpServletRequest request) throws Exception {
		String fileName = null;
		
		MultipartFile file = request.getFile("uploadFile");
		HttpSession session = request.getSession();
		
		if(!file.isEmpty()) {
			fileName = vo.getId() + "." + getExt(file);
			file.transferTo(new File(getDir(vo, session) + fileName));
		}
		
		return fileName;
	}

	public String insertImage(PetVO vo, MultipartHttpServletRequest request) throws Exception {
		String fileName = null;
		
		MultipartFile file = request.getFile("uploadFile");
		HttpSession session = request.getSession();
		
		if(!file.isEmpty()) {
			fileName = vo.getMasterId() + "-" + Integer.toString(vo.getPetKey()) + "." + getExt(file);
			file.transferTo(new File(getDir(vo, session) + fileName));
		}
		
		return fileName;
	}

	public String insertImage(ImageVO vo, MultipartHttpServletRequest request) throws Exception {
		String fileName = null;
		
		MultipartFile file = request.getFile("uploadFile");
		HttpSession session = request.getSession();
		
		if(!file.isEmpty()) {
			fileName = vo.getMasterId() + "-"
					+ new SimpleDateFormat("yyyyMMdd-HHmmss").format(new Date())
					+ "." + getExt(file);
			file.transferTo(new File(getDir(session) + fileName));
			makeThumbnail(getDir(session) + fileName, getThumb(session) + fileName, getExt(file));
		}

		return fileName;
	}

	public String deleteImage(UserVO vo, HttpServletRequest request) {
		String result = null;
		
		HttpSession session = request.getSession();
		UserVO dbVO = userService.selectOne(vo);
		
		String fileName = dbVO.getProfileImage();
		
		if (fileName != null || fileName != "") {
			File dbfile = new File(getDir(vo, session) + fileName);
			result = fileName + (dbfile.delete() ? "삭제 성공" : "삭제 실패");
		}
		
		return result;
	}

	public String deleteImage(PetVO vo, HttpServletRequest request) {
		String result = null;
		
		HttpSession session = request.getSession();
		PetVO dbVO = petService.selectOne(vo);
		
		String fileName = dbVO.getPetImage();
		
		if (fileName != null || fileName != "") {
			File dbfile = new File(getDir(vo, session) + fileName);
			result = fileName + (dbfile.delete() ? "삭제 성공" : "삭제 실패");
		}
		
		return result; 
	}

	public String deleteImage(ImageVO vo, HttpServletRequest request) {
		String result = null;
		
		HttpSession session = request.getSession();
		ImageVO dbVO = imageService.selectOne(vo);
		
		String fileName = dbVO.getFileName();

		if (fileName != null || fileName != "") {
			File dbfile1 = new File(getDir(session) + fileName);
			File dbfile2 = new File(getThumb(session) + fileName);
			
			String msg1 = fileName + (dbfile1.delete() ? "삭제 성공" : "삭제 실패");
			String msg2 = fileName + "썸네일" + (dbfile2.delete() ? "삭제 성공" : "삭제 실패");
			
			result = msg1 + "\n" + msg2;
		}

		return result;
	}

	private void makeThumbnail(String inputFile, String outputFile, String fileExt) throws Exception {

		BufferedImage srcImg = ImageIO.read(new File(inputFile));

		int dw = 250, dh = 250;
		int ow = srcImg.getWidth();
		int oh = srcImg.getHeight();

		int nw = ow;
		int nh = (ow * dh) / dw;

		if (nh > oh) {
			nh = (oh * dw) / dh;
			nh = oh;
		}

		BufferedImage cropImg = Scalr.crop(srcImg, (ow - nw) / 2, (oh - nh) / 2, nw, nh);
		BufferedImage destImg = Scalr.resize(cropImg, dw, dh);

		File thumbFile = new File(outputFile);
		ImageIO.write(destImg, fileExt.toUpperCase(), thumbFile);
	}
}