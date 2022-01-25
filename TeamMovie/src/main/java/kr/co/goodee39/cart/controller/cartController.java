package kr.co.goodee39.cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	
//	goodsDetail페이지에서 장바구니로 담는 컨트롤러
	@PostMapping("/insertCartItem")
	public String insertCartItem(@ModelAttribute("cartVO") CartVO vo, HttpSession session, UserVO uvo) {
		System.out.println("insertCartItem 장바구니 삽입 컨트롤러 메소드 실행");
		UserVO uvo1 = (UserVO)session.getAttribute("account");
		System.out.println("uvo1확인:"+uvo1.getUserNum());
		vo.setUserNum(uvo1.getUserNum());
		cartService.insertCartItem(vo);
		System.out.println("굿즈번호 확인:(컨트롤러)"+vo.getGdsNum());
		System.out.println("굿즈수량 확인:(컨트롤러)"+vo.getCartAmount()); 
		return "redirect:/cart/cart"; //경로를 메인 인덱스로 타도록 우선 지정해놓음
	}
	
//	goodsDetail페이지에서 담은 장바구니 목록을 cart페이지에 보여주는 컨트롤러
	@GetMapping("/showCartList")
	public ModelAndView showCartList(UserVO uvo, HttpSession session, ModelAndView mav ) {
		UserVO uvo1 = (UserVO)session.getAttribute("account");
		int userNum = uvo1.getUserNum();
		List<CartVO> list = cartService.showCartList(userNum);
		Map<String, Object> map = new HashMap<String, Object>();
		int totalMoney = cartService.sumCartItem(userNum);
		int fee = totalMoney >= 100000 ? 0 : 2500;
		map.put("total", totalMoney + fee); //total: 물건수량*총액 + 배송비 
		map.put("fee", fee); //배송비
		map.put("totalMoney", totalMoney); //물건수량*가격
		map.put("list",list); // 장바구니 품목을 담은 list 
		map.put("count", list.size()); // 장바구니 품목이 없으면 비어있음을 표시하기 위해 사용 
		mav.setViewName("cart/cart");
		mav.addObject("map",map);
		System.out.println("showCartList 장바구니 조회 컨트롤러 메소드 실행");
		System.out.println("showCartList 장바구니 조회 컨트롤러 메소드 사이즈:"+list.size());
		return mav;
		
				
	}
	
	

}
