package com.spring.biz.pet.vo;

public class PetVO {
	private int petKey;
	private String name;
	private String masterId;
	private String profileImageKey;
	private boolean lost;
	
	
	public int getPetKey() {
		return petKey;
	}
	public void setPetKey(int petKey) {
		this.petKey = petKey;
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
	public String getProfileImageKey() {
		return profileImageKey;
	}
	public void setProfileImageKey(String profileImageKey) {
		this.profileImageKey = profileImageKey;
	}
	public boolean isLost() {
		return lost;
	}
	public void setLost(boolean lost) {
		this.lost = lost;
	}
	
}