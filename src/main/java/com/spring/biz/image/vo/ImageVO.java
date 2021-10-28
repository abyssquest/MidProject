package com.spring.biz.image.vo;

import org.springframework.web.multipart.MultipartFile;

public class ImageVO {
	private String fileName;
	private int seq;
	private String writer;
	private MultipartFile uploadImage;
	private String uploadPath;
	private String title;
	private String content;
	
	public ImageVO() {}
	
	public ImageVO(String fileName, String uploadPath) {
		
		super();
		this.fileName = fileName;
		this.uploadPath = uploadPath;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public MultipartFile getUploadImage() {
		return uploadImage;
	}
	public void setUploadImage(MultipartFile uploadImage) {
		this.uploadImage = uploadImage;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		String value = "ImageVO[fileName="+fileName+", seq="+seq+", title="+title+", writer="+writer+", uploadPath="+uploadPath+"]";
		
		return value;
	}
}