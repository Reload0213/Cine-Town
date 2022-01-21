package kr.co.goodee39.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/goods")
public class goodsController {
	
	@GetMapping("/goodsDetail")
	public String goDetail() {
		System.out.println("여기로 타나");
		return "goods/goodsDetail"; //폴더명/페이지명으로 경로를 탄다
	}

}
