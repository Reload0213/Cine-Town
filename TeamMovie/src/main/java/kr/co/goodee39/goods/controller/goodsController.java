package kr.co.goodee39.goods.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * 컨트롤러 담당: 김용현 
 * a링크로 컨트롤러를 타는지 확인 / 페이지 디자인 안 깨지도록 확인하기 위해 만든 컨트롤러 입니다
 */
@Controller
@RequestMapping("/goods")
public class goodsController {
	
	@GetMapping("/goodsDetail")
	public String goDetail() {
		System.out.println("goodsDetail여기로 타나-------------------------------"); //해당 컨트롤러를 타는지 확인
		return "goods/goodsDetail"; //폴더명/페이지명으로 경로를 탄다
	}
	
	@GetMapping("/goodsMain")
	public String goMain() {
		System.out.println("goodsMain여기로 타나-------------------------------");
		return "goods/goodsMain";
	}
	
	@GetMapping("/goodsMenu")
	public String goMenu() {
		System.out.println("goodsMenu여기로 타나-------------------------------");
		return "goods/goodsMenu";
	}
	
	//정민
	@GetMapping("/cart")
	public String getCart() {
		return "goods/cart";
	}
	@GetMapping("/goodsCheckout")
	public String getGoodsCheckout() {
		return "goods/goodsCheckout";
	}
	@GetMapping("/orderFinish")
	public String getOrderFinish() {
		return "goods/orderFinish";
	}
	@GetMapping("/wishlist")
	public String getWishList() {
		return "goods/wishlist";
	}

}