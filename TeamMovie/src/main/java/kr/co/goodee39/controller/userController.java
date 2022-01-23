package kr.co.goodee39.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")


public class userController {
	@GetMapping("/myPage")
	public String getTest() {

		return "user/myPage";
	}
	
	//김정민 작업 중
	//로그인 페이지로 이동
	@GetMapping("/signin")
	public String getSingin() {

		return "user/signin";
	}
	
	//회원가입 페이지로 이동
	@GetMapping("/signup")
	public String getSingup() {

		return "user/signup";
	}
	
	//회원가입 성공 시 보여질 페이지. 회원가입 성공했으니 다시 로그인 하라고 하기
	//post로 바꿔야함.
	@GetMapping("/signupSuccess")
	public String getSingupSuccess() {

		return "user/signupSuccess";
	}
	
	
	//아이디/비번찾기 페이지로 이동
	@GetMapping("/findUser")
	public String getFinduser() {

		return "user/findUser";
	}
	
	//아이디/비번찾기 페이지로 이동
	//데이터 넣어서 post로 바꿔야 함
	@GetMapping("/findUserSuccess")
	public String getFindUserSuccess() {

		return "user/findUserSuccess";
	}

//	// 로그인 post
//	@PostMapping("/signin")
//	public String postSignin(UserVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
//
//		UserVO login = service.signin(vo); // MemverVO형 변수 login에 로그인 정보를 저장
//		HttpSession session = req.getSession(); // 현재 세션 정보를 가져옴
//
//		if (login != null) { // id가 null이 아니면
//			session.setAttribute("user", login);  // user 세션에 로그인 정보를 부여
//
//		} else { // 아이디가 존재하지 않고, 비밀번호가 틀리면
//			session.setAttribute("user", null); // user 세션에 null 부여
//			System.out.println("user : " + session.getAttribute("user"));
//			rttr.addFlashAttribute("msg", false); // 1회성인 변수인 msg에 false 부여
//			return "redirect:/user/signin"; // 로그인 화면 유지
//		}
//
//		return "redirect:/"; // 홈으로 이동
//	}
//
//	// 회원 가입 post
//	@PostMapping("/signup")
//	public String postSignup(userVO vo) throws Exception {
//
//		String inputPass = vo.getUserPass(); //
//		
//		vo.setUserPass(inputPass);
//		service.signup(vo);
//
//		return "user/signupSuccess"; 
//	}
//
//
//	// 로그아웃
//	@GetMapping("/signout")
//	public String signout(HttpSession session) throws Exception {
//		service.signout(session); // 세션 정보를 제거
//
//		return "redirect:/";
//	}
}
