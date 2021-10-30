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
	@Autowired
	UserService service;
	
	@RequestMapping("testUser.me")
	public String testUser() {
		UserVO vo = new UserVO();
		//vo.setUserid("hong");
		
		System.out.println("UserService 작동 테스트");
		service.addService(vo);
		service.updateService(vo);
		service.deleteService(vo);
		service.getUserService(vo);
		service.getUserListService(vo);
		service.addPetService();
		service.deletePetService();
		service.addFollowService();
		service.updatePwService(vo);
		service.deleteFollowService();
		
		return "testUser";
	}
	
	//----------------------- 계정 처리  -------------------
		// 계정 추가 [ok]
		@RequestMapping("/addUser.do")//,method=RequestMethod.POST)
		public String AddUser(UserVO vo) { // 회원가입 후 세션에 로그인 정보 등록한 후에 홈페이지로 redirect 작업
			
			// System.out.println("실행 완료."); 
			// service.addService(vo);
			// System.out.println("실행 완료.");
			 
			return "testUser";
		}
		
		// 계정 수정 [ok]
		@RequestMapping("/updateUser.do")
		public String UpdateUser(UserVO vo) {
			System.out.println("실행.");
			//service.updateService(vo);
			return "home";
		}
		
		// 계정 삭제 [ok]
		 @RequestMapping("/deleteUser.do") 
		  public String DeleteUser(HttpSession session) {
			 //UserVO search = new UserVO();
			 //search.setId((String)session.getAttribute("id"));
			 //UserVO user = service.getUserService(search);
			 //service.deleteService(user);
			 System.out.println("실행.");
			  return "home"; //회원 탈퇴 후 홈페이지로 이동.
		 }
		  
		//----------------------- 찾기 처리  -------------------
		
		//아이디 찾기 폼 [ok]
		@RequestMapping("/searchId.me")
		public String SearchIdForm() {
			return "/search/searchID";
		}
		
		// 아이디 찾기 처리 구동 [ok]
		@RequestMapping(value = "/searchId.do" ) //method = RequestMethod.POST)
		public String SearchId(UserVO vo,HttpSession session) {
		//	String id = service.getUserService(vo).getId();
		//	if((id !=null)&&(vo.getId()==id)) {
		//		session.setAttribute("id", id); // 일치하는 ID가 있을 때 그 값을 js를 통해 전달.
		//		return "redirect:searchIdPass";
		//	}else {
		//		return "searchMissID"; // 일치하는 ID 가 없을 때 js를 통해 알람창을 띄운 뒤 다시 history.go(-1); 작업.
		//	}
			System.out.println("실행.");
			return null;
		}
		
		//비밀번호 찾기 폼 [ok]
		@RequestMapping("/searchPw.me")
		public String SearchPwForm() {
			System.out.println("실행.");
			return "/search/searchPw";
		}
		
		//비밀번호 찾기 처리 [ok]
		@RequestMapping(value = "/searchPw.do", method = RequestMethod.POST)
		public String SearchPw(UserVO vo,HttpSession session) { // 아이디와 이름을 통해 정보 확인.
			
			String name = service.getUserService(vo).getName(); //
			String id = service.getUserService(vo).getId();
			

			if((name==null)||(name=="")||(id==null)||(id=="")) {
				return "searchMiss";
			}else if(name.equals(vo.getName())&&(id.equals(vo.getId()))){
				session.setAttribute("id", id);
				return "/myMenu/createPw";
			}
			return "/search/searchPw";
		}
		
		// 비밀번호 찾기 처리 완료후 새로운 비밀번호 등록. [ok]
		@RequestMapping(value = "/createPw.do" )//, method = RequestMethod.POST)
		public String CreatePw(UserVO vo) { //비밀번호 입력양식 name에 반드시 pw 매칭시켜야 할 것!

			//service.updatePwService(vo);

			return "redirect:views/home.jsp"; 
		}
		
		// 비밀번호 수정 페이지에서 새로운 비밀번호 등록. [ok]
		@RequestMapping(value = "/updatePw.do") //, method = RequestMethod.POST)
		public String UpdatePw(UserVO vo) {
			service.updatePwService(vo);
			return "redirect:views/myMenu/updatePW.jsp";
		}
	
}