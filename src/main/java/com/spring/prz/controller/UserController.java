package com.spring.prz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value = "insertUser.do", method = RequestMethod.GET)
	public String insertUserForm() {
		System.out.println("컨트롤러 맵핑 insertUserForm 확인");
		return "user/insertUserForm";
	}
	
	@RequestMapping(value = "insertUser.do", method = RequestMethod.POST)
	public String insertUserProc(/*UserVO vo*/) {
		System.out.println("컨트롤러 맵핑 insertUserProc 확인");
		
		UserVO vo = new UserVO(); 
		vo.setUserid("test"); // 테스트용
		
		service.insert(vo);
		return "redirect:getUserList.do";		
	}
	
	@RequestMapping("getUserList.do")
	public String getUserList() {
		System.out.println("컨트롤러 맵핑 getUserList 확인");
		
		UserVO vo = new UserVO();
		vo.setUserid("test"); // 테스트용
		
		service.selectList(vo);
		return "user/getUserList";
	}
	
	@RequestMapping("getUser.do")
	public String getUser() {
		System.out.println("컨트롤러 맵핑 getUser 확인");
		
		UserVO vo = new UserVO();
		vo.setUserid("test2"); // 테스트용
		
		service.selectOne(vo);
		return "user/getUser";
	}
	
	@RequestMapping(value = "updateUser.do", method = RequestMethod.GET)
	public String updateUserForm() {
		System.out.println("컨트롤러 맵핑 updateUserForm 확인");
		return "user/updateUserForm";
	}
	
	@RequestMapping(value = "updateUser.do", method = RequestMethod.POST)
	public String updateUserProc() {
		System.out.println("컨트롤러 맵핑 updateUserProc 확인");
		
		UserVO vo = new UserVO();
		vo.setUserid("test3"); // 테스트용
		
		service.update(vo);
		return "redirect:getUserList.do";
	}
	
	@RequestMapping("deleteUser.do")
	public String deleteUser() {
		System.out.println("컨트롤러 맵핑 deleteUser 확인");
		
		UserVO vo = new UserVO();
		vo.setUserid("test3"); // 테스트용
		
		service.delete(vo);
		return "redirect:getUserList.do";
	}
}