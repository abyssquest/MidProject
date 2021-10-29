package com.spring.prz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.biz.user.service.UserService;
import com.spring.biz.user.vo.UserVO;

@Controller
public class UserController {
	@Autowired
	UserService service;
	
	@RequestMapping("testUser.me")
	public String testUser() {
		UserVO vo = new UserVO();
		vo.setUserid("hong");
		
		System.out.println("UserService 작동 테스트");
		service.insert(vo);
		service.selectList(vo);
		service.selectOne(vo);
		service.update(vo);
		service.delete(vo);
		
		return "testFolder/testUser";
	}
}