package kr.co.goodee39.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")



public class userController {
	@GetMapping("/myPage")
	public String getTest() {

		return "member/myPage";
	}
	
	@GetMapping("/signin")
	public String isSingin() {

		return "member/signin";
	}
}
