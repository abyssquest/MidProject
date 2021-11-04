package com.spring.biz.pet.vo;

import java.sql.Date;

public class PetVO {
	private int petKey;
	private String masterId;
	private String name;
	private String petImage;
	private Date birthDate;

	public int getPetKey() {
		return petKey;
	}

	public void setPetKey(int petKey) {
		this.petKey = petKey;
	}

	public String getMasterId() {
		return masterId;
	}

	public void setMasterId(String masterId) {
		this.masterId = masterId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getPetImage() {
		return petImage;
	}

	public void setPetImage(String petImage) {
		this.petImage = petImage;
	}
}