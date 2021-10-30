package com.spring.biz.user.vo;

import java.util.Date;
import java.util.List;

import com.spring.biz.pet.vo.PetVO;

public class UserVO {
	private String id;
	private String password;
	private String name;
	private String profileImageKey;
	private String address;
	private List<PetVO> managePetList;
	private List<PetVO> followPetList;
	private String email;
	private Date join_date;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProfileImageKey() {
		return profileImageKey;
	}
	public void setProfileImageKey(String profileImageKey) {
		this.profileImageKey = profileImageKey;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public List<PetVO> getManagePetList() {
		return managePetList;
	}
	public void setManagePetList(List<PetVO> managePetList) {
		this.managePetList = managePetList;
	}
	public List<PetVO> getFollowPetList() {
		return followPetList;
	}
	public void setFollowPetList(List<PetVO> followPetList) {
		this.followPetList = followPetList;
	}
	
	public String toString() {
		return "UserDTO [userid=" + id + ", passwd=" + password + ", name=" + name + ", email=" + email
				+ ", join_date=" + join_date + "]";
	}
}