package com.spring.biz.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.user.dao.UserDAO;
import com.spring.biz.user.vo.UserVO;

@Service
public class UserServiceImp implements UserService {
	@Autowired
	UserDAO dao;
	
	@Override
	public void addService(UserVO vo) {
		System.out.println("확인 - service.addService");
		dao.insert(vo);
	}

	@Override
	public List<UserVO> getUserListService(UserVO vo) {
		System.out.println("확인 - service.getUserListService");
		return dao.selectList(vo);
	}

	@Override
	public UserVO getUserService(UserVO vo) {
		System.out.println("확인 - service.getService");
		return dao.selectOne(vo);
	}

	@Override
	public void updateService(UserVO vo) {
		System.out.println("확인 - service.updateService");
		dao.update(vo);
	}
	
	@Override
	public void updatePwService(UserVO vo) {
		System.out.println("확인 - service.updatePwService");
	}

	@Override
	public void addFollowService() {
		System.out.println("확인 - service.addFollowService");
	}

	@Override
	public void deleteFollowService() {
		System.out.println("확인 - service.deleteFollowService");
	}

	@Override
	public void addPetService() {
		System.out.println("확인 - service.addPetService");
	}

	@Override
	public void deletePetService() {
		System.out.println("확인 - service.deletePetService");
	}

	@Override
	public void deleteService(UserVO vo) {
		System.out.println("확인 - service.deleteService");
		dao.delete(vo);
	}
	
}