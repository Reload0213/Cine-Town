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
	
	@GetMapping("/signin")
	public String getSingin() {

		return "user/signin";
	}
}
