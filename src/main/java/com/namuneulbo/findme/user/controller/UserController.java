package com.namuneulbo.findme.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.namuneulbo.findme.user.domain.User;
import com.namuneulbo.findme.user.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService mService;
	
	
	@RequestMapping(value="/user/login.do", method=RequestMethod.GET )
	public String loginView() {
		return "user/login";
		//로그인 페이지 출력
	}

	//로그인
	@ResponseBody
	@RequestMapping(value="/login/check.do", method=RequestMethod.POST)
	//로그인 jsp에 form action="/login/form.do"으로 작동했었음
	public String login(HttpServletRequest request
			, @ModelAttribute User user
			, @RequestParam("user_Id") String user_Id
			, @RequestParam("user_Pwd") String user_Pwd) {
	
			User loginUser = mService.loginUser(user);
			
			if(loginUser != null) {
				//loginUser가 null이 아니면 세션에 담기
				//회원탈퇴, 로그아웃할때 세션을 깨는데 사용
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", loginUser);
				
				return "success";
				//return "redirect:/home.do";
			}else {
				//request.setAttribute();
				//return "user/error";
				return "fail";
			}
	}
	
	//로그아웃
	@RequestMapping(value="/user/logout.do", method=RequestMethod.GET )
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
			if(session != null) {
				session.invalidate();
				return "redirect:/home.do";
				//메인페이지로
			}else {
				request.setAttribute("logoutError", "로그아웃 실패");
				return "user/error";
				
			}
	}
	
	//아이디/비밀번호 찾기
		@RequestMapping(value="/user/find.do", method=RequestMethod.GET)
		public String findView() {
			return "/user/find";
		}
		
		//아이디 찾기
		@ResponseBody
		@RequestMapping(value="/user/findId.do", method=RequestMethod.POST)
		public String findId(Model model
				,@ModelAttribute User user
				,@RequestParam("user_Name") String user_Name
				,@RequestParam("user_Email") String user_Email
				) {
				
			
				User findId = mService.findId(user);
				if(findId != null) {
					return findId.getUser_Id();
				}else {
					return "fail";
				}
		}
		
		//비밀번호 찾기
		@ResponseBody
		@RequestMapping(value="/user/findPw.do", method=RequestMethod.POST)
		public String findId(Model model
				,@ModelAttribute User user) {
				
			User findPw = mService.findPw(user);
			if(findPw != null) {
				model.addAttribute("findPw", findPw);
				return findPw.getUser_Pwd();
			}else {
				return "fail";
			}
	}
		
		
	
	//가입페이지 보기
	@RequestMapping(value="/user/join.do", method=RequestMethod.GET)
	public String joinView() {
		return "user/join";
	}
	
	//가입시 중복된 아이디가 있는경우 표시해줌
	@ResponseBody
	@RequestMapping(value="/join/id.do", method=RequestMethod.GET)
	public String idCheck(@RequestParam("user_Id") String userId) {
		int result = mService.idCheck(userId);
		return String.valueOf(result);
	}
	
	//가입 하기
	@ResponseBody
	@RequestMapping(value="/join/check.do", method=RequestMethod.POST)
	public String join(HttpServletRequest request
			,@ModelAttribute User user
			,@RequestParam("user_Name") String user_Name
			,@RequestParam("user_Id") String user_Id
			,@RequestParam("user_Pwd") String user_Pwd
			,@RequestParam("user_Email") String user_Email
			,@RequestParam("user_Phone") String user_Phone
			,@RequestParam("user_Address") String user_Address) {
		
		
		 
			int result = mService.joinUser(user);
			
			if(result>0) {
				return "success";
			}else {
				
				return "fail";
			}
	}
	//수정페이지 보기
	@RequestMapping(value="/mypage/edit.do", method=RequestMethod.GET)
	public String modifiyView() {
		return "user/modify";
	}
	
	//수정페이지에서 패스워드 체크
	@ResponseBody
	@RequestMapping(value="/modify/pw.do", method=RequestMethod.GET)
	public String pwCheck(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		String pwCheck = ((User)session.getAttribute("loginUser")).getUser_Pwd();

		if(pwCheck != null) {
			return pwCheck;
		}else {
			return "fail";
		}
}
	

	//수정
	@ResponseBody
	@RequestMapping(value="/user/edit.do", method=RequestMethod.POST)
	public String modifiy(
			HttpServletRequest request,
			Model model
			,@ModelAttribute User user) {
		
			HttpSession session = request.getSession();
			
			//세션에서 아이디가져오기
			String user_Id = ((User)session.getAttribute("loginUser")).getUser_Id();
			user.setUser_Id(user_Id);
			
		
				int result = mService.modifyUser(user);
				if(result > 0) {
					session.setAttribute("loginUser", user);
					return "success";
				}else {
					request.setAttribute("Error","정보수정 실패");
					return "fail";
				}
		}
	
	
	//삭제
	@RequestMapping(value="/mypage/withdraw.do", method=RequestMethod.GET)
	public String removeView() {
					return "/user/withdraw";}
	
	//삭제
	@ResponseBody
	@RequestMapping(value="/remove/check.do", method=RequestMethod.GET)
		public String remove(HttpServletRequest request
				, @RequestParam("user_Id") String userId) {
			int result = mService.removeUser(userId);
			HttpSession session = request.getSession();
			if(result >0) {
				session.invalidate();
				return "success";
			}else {
				return "fail";
			}
		}		
}
