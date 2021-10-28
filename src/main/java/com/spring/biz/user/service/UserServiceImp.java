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
	public void insert(UserVO vo) {
		System.out.println("확인 - service.insert");
		dao.insert(vo);
	}

	@Override
	public List<UserVO> selectList(UserVO vo) {
		System.out.println("확인 - service.selectList");
		return dao.selectList(vo);
	}

	@Override
	public UserVO selectOne(UserVO vo) {
		System.out.println("확인 - service.selectOne");
		return dao.selectOne(vo);
	}

	@Override
	public void update(UserVO vo) {
		System.out.println("확인 - service.update");
		dao.update(vo);
	}

	@Override
	public void delete(UserVO vo) {
		System.out.println("확인 - service.delete");
		dao.delete(vo);
	}
}