package kr.co.goodee39.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@GetMapping("/admin")
	public String main() {

		return "admin/main";
	}
	
	@GetMapping("/user")
	public String user() {

		return "admin/user";
	}
	
	
}
