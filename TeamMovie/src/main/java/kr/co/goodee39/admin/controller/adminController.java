package kr.co.goodee39.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class adminController {
	@GetMapping("/main")
	public String main() {

		return "admin/main";
	}
	
	@GetMapping("/user")
	public String user() {

		return "admin/user";
	}
	
	@GetMapping("/mail")
	public String mail() {

		return "admin/mail";
	}
	
	
	@GetMapping("/order")
	public String order() {

		return "admin/order";
	}
	
	
	
}
