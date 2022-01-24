package kr.co.goodee39.cart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/cart")
public class cartController {
	
	//정민
	
	//장바구니
	@GetMapping("/cart")
	public String getCart() {
		return "cart/cart";
	}
	
	// 찜
	@GetMapping("/wishlist")
	public String getWishList() {
		return "cart/wishlist";
	}

}
