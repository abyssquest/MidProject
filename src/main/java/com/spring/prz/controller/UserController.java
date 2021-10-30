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
		
		return "testFolder/testUser";
	}
	
	// 계정 추가 페이지 : 회원 가입 페이지
	@RequestMapping(value = "insertUser.do", method = RequestMethod.GET)
	public String insertUserForm() {
		System.out.println("컨트롤러 맵핑 insertUserForm 확인");
		return "user/insertUser";
	}
	
	// 계정 추가 자바 작업
	@RequestMapping(value = "insertUser.do", method = RequestMethod.POST)
	public String insertUserProc(UserVO vo) {
		System.out.println("컨트롤러 맵핑 insertUserProc 확인");
		
		service.insert(vo);
		return "toIndex";
	}
	
	
	// 계정 리스트 조회 : 쓸일 있나?
	@RequestMapping("getUserList.do")
	public String getUserList() {
		System.out.println("컨트롤러 맵핑 getUserList 확인");
		
		UserVO vo = new UserVO();
		vo.setId("test"); // 테스트용
		
		service.selectList(vo);
		return "user/getUserList";
	}
	
	// 계정 조회 : 회원 정보 조회
	@RequestMapping("getUser.do")
	public String getUser() {
		System.out.println("컨트롤러 맵핑 getUser 확인");
		
		UserVO vo = new UserVO();
		vo.setId("test2"); // 테스트용
		
		service.selectOne(vo);
		return "user/getUser";
	}
	
	// 계정 수정 폼 페이지
	@RequestMapping(value = "updateUser.do", method = RequestMethod.GET)
	public String updateUserForm() {
		System.out.println("컨트롤러 맵핑 updateUserForm 확인");
		return "user/updateUser";
	}
	
	// 계정 수정 자바 작업
	@RequestMapping(value = "updateUser.do", method = RequestMethod.POST)
	public String updateUserProc(UserVO vo) {
		System.out.println("컨트롤러 맵핑 updateUserProc 확인");
		
		service.update(vo);
		return "toIndex";
	}
	
	// 계정 삭제 : 회원 탈퇴
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
	
	// 로그인 폼
	@RequestMapping(value = "/login.do" , method = RequestMethod.GET)
	public String logInForm() {
		System.out.println("컨트롤러 맵핑 logInForm 확인");
		return "user/login";
	}
	
	// 로그인 처리
	@RequestMapping(value = "/login.do" , method = RequestMethod.POST)
	public String logInProc(UserVO vo , HttpSession session) {
		System.out.println("컨트롤러 맵핑 logInProc 확인");
		
		if(vo.getId() == null || vo.getId().equals("")) {
			System.out.println("아이디를 반드시 입력해야 합니다");
			// throw new IllegalArgumentException("아이디를 반드시 입력해야 합니다.");
			// 아직 예외 창 안만들어서 유보
			vo.setId("test"); // 아이디 입력 안할경우 테스트용
		}
		
		// UserVO savedUser = service.selectOne(vo); 입력된 id에 맞는 유저 정보 불러오기 DB에 연결시 해제
		
		if ((vo.getPassword() != null) && (vo.getPassword().equals("test"/* savedUser.getPassword() */))) {
			// 테스트용 비번 test 입력
			System.out.println("로그인 성공");
			session.setAttribute("id", vo.getId());
			
			System.out.println(session.getAttribute("id")); // 테스트용
			System.out.println("세션 저장 확인"); // 테스트용
		} else {
			System.out.println("로그인 실패");
		}
		
		return "toIndex";
	}
	
	// 로그아웃
	@RequestMapping("logout.do")
	public String logOut(HttpSession session) {
		System.out.println("컨트롤러 맵핑 logOut 확인");
		
		// 테스트용
		System.out.println((session.getAttribute("id") != null) ?
			session.getAttribute("id") + " 로그아웃 실행" : "로그인 상태가 아닙니다");

		session.invalidate();
		// id속성 하나만 없앨 수 있으면 좋겠다
		// 바쁘니 미루고 할거 없음 하자
		
		return "toIndex"; 
	}
}