package kr.co.goodee39.cart.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodee39.cart.service.cartService;
import kr.co.goodee39.cart.vo.CartVO;
import kr.co.goodee39.user.vo.UserVO;


@Controller
@RequestMapping("/cart")
public class cartController {
	@Autowired
	cartService cartService;
	
	
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
	
	
	@PostMapping("/insertCartItem")
	public String insertCartItem(@ModelAttribute("cartVO") CartVO vo, HttpSession session, UserVO uvo) {
		System.out.println("insertCartItem 장바구니 삽입 컨트롤러 메소드 실행");
		UserVO uvo1 = (UserVO)session.getAttribute("account");
		System.out.println("uvo1확인:"+uvo1.getUserNum());
		vo.setUserNum(uvo1.getUserNum());
		cartService.insertCartItem(vo);
		System.out.println("굿즈번호 확인:(컨트롤러)"+vo.getGdsNum());
		System.out.println("굿즈수량 확인:(컨트롤러)"+vo.getCartAmount()); 
		return "redirect:/"; //경로를 메인 인덱스로 타도록 우선 지정해놓음
	}
	
	

}
