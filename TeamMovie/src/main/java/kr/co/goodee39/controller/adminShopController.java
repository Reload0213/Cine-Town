package kr.co.goodee39.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
/*
 * 컨트롤러 담당: 김용현 
 * a링크로 컨트롤러를 타는지 확인 / 페이지 디자인 안 깨지도록 확인하기 위해 만든 컨트롤러 입니다
 */
@Controller
@RequestMapping("/adminShop")
public class adminShopController {
	
	@GetMapping("/adminShopCreatePage")
	public String goAdminShopCreatePage() {
		System.out.println("adminShopCreatePage여기로 타나 ------------------------");
		return "admin/adminShopCreatePage";
	}
	
	@GetMapping("/adminShopCRUDPage")
	public String goadminShopCRUDPage() {
		System.out.println("adminShopCRUDPage 여기로 타나 ------------------------");
		return "admin/adminShopCRUDPage";
	}
	

}
