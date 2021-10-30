package com.spring.prz.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.biz.user.service.UserService;
import com.spring.biz.user.vo.UserVO;

@Controller
public class UserController {
	@Autowired UserService service;
	
	@RequestMapping("testUser.me")
	public String testUser() {
		UserVO vo = new UserVO();
		vo.setId("hong"); // 테스트용
		
		System.out.println("UserService 작동 테스트");
		service.insert(vo);
		service.selectList(vo);
		service.selectOne(vo);
		service.update(vo);
		service.delete(vo);
		
		return "testUser";
	}
	
	// 회원가입 : 계정 추가
	@RequestMapping(value = "insertUser.do", method = RequestMethod.GET)
	public String insertUserForm() {
		System.out.println("컨트롤러 맵핑 insertUserForm 확인");
		return "user/insertUser";
	}
	
	// 계정 추가 과정
	@RequestMapping(value = "insertUser.do", method = RequestMethod.POST)
	public String insertUserProc(UserVO vo) {
		System.out.println("컨트롤러 맵핑 insertUserProc 확인");
		
		service.insert(vo);
		return "redirect:getUserList.do";		
	}
	
	@RequestMapping("getUserList.do")
	public String getUserList() {
		System.out.println("컨트롤러 맵핑 getUserList 확인");
		
		UserVO vo = new UserVO();
		vo.setId("test"); // 테스트용
		
		service.selectList(vo);
		return "user/getUserList";
	}
	
	@RequestMapping("getUser.do")
	public String getUser() {
		System.out.println("컨트롤러 맵핑 getUser 확인");
		
		UserVO vo = new UserVO();
		vo.setId("test2"); // 테스트용
		
		service.selectOne(vo);
		return "user/getUser";
	}
	
	// 계정 수정 페이지
	@RequestMapping(value = "updateUser.do", method = RequestMethod.GET)
	public String updateUserForm() {
		System.out.println("컨트롤러 맵핑 updateUserForm 확인");
		return "user/updateUser";
	}
	
	// 계정 수정 과정
	@RequestMapping(value = "updateUser.do", method = RequestMethod.POST)
	public String updateUserProc(UserVO vo) {
		System.out.println("컨트롤러 맵핑 updateUserProc 확인");
		
		service.update(vo);
		return "toIndex";
	}
	
	// 회원 탈퇴
	@RequestMapping("deleteUser.do")
	public String deleteUser(HttpSession session) {
		System.out.println("컨트롤러 맵핑 deleteUser 확인");
		
		if(session.getAttribute("id") != null) {
			UserVO vo = new UserVO();
			vo.setId((String)session.getAttribute("id"));
			service.delete(vo);
			System.out.println("계정 탈퇴 성공");
		} else {
			System.out.println("로그인 하세요");
		}
		
		return "toIndex";
	}
}