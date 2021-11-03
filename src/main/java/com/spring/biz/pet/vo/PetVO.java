package com.spring.biz.pet.vo;

import java.sql.Date;

public class PetVO {
	private int seq;
	private String name;
	private String masterId;
	private Date birthDate;
	private String uploadPetFile;

	
	public String getUploadPetFile() {
		return uploadPetFile;
	}

	public void setUploadPetFile(String uploadPetFile) {
		this.uploadPetFile = uploadPetFile;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMasterId() {
		return masterId;
	}

	public void setMasterId(String masterId) {
		this.masterId = masterId;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
}