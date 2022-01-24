package kr.co.goodee39.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@GetMapping("/aboutUsMain")
	public String aboutUsMain(Model model) {
		model.addAttribute("testKey", "testVal");
		return "/aboutUs/aboutUsMain";
	}
	
	@GetMapping("/faqMain")
	public String faqMain(Model model) {
		model.addAttribute("testKey", "testVal");
		return "/faq/faqMain";
	}
	
}
