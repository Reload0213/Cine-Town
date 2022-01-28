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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.goodee39.cart.service.cartService;
import kr.co.goodee39.cart.vo.CartVO;
import kr.co.goodee39.user.vo.UserVO;

@Controller
@RequestMapping("/cart")
public class cartController {
	@Autowired
	cartService cartService;

	// 정민

	// 장바구니
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
		UserVO uvo1 = (UserVO) session.getAttribute("account");
		int userNum = uvo1.getUserNum();
		int count = cartService.countCartItem(userNum, vo.getGdsNum());
		System.out.println("count값 확인:"+count+"--------------------------------------------------");
		System.out.println("gdsNum값 확인:"+vo.getGdsNum());
		
		if(count == 0) {
			cartService.insertCartItem(vo);
		} else {
			cartService.sumAmountCartItem(vo);
		}
		
		return "redirect:/cart/showCartList";
		
	}

//	goodsDetail페이지에서 담은 장바구니 목록을 cart페이지에 보여주는 컨트롤러
	@GetMapping("/showCartList")
	public ModelAndView showCartList(UserVO uvo, HttpSession session, ModelAndView mav,
			@ModelAttribute("cartVO") CartVO vo) {
		UserVO uvo1 = (UserVO) session.getAttribute("account");
		int userNum = uvo1.getUserNum();
		List<CartVO> list = cartService.showCartList(userNum);
		Map<String, Object> map = new HashMap<String, Object>();
		int totalMoney = cartService.sumCartItem(userNum);
		int fee = totalMoney >= 100000 ? 0 : 2500;
		map.put("total", totalMoney + fee); // total: 물건수량*총액 + 배송비
		map.put("fee", fee); // 배송비
		map.put("totalMoney", totalMoney); // 물건수량*가격
		map.put("list", list); // 장바구니 품목을 담은 list
		map.put("count", list.size()); // 장바구니 품목이 없으면 비어있음을 표시하기 위해 사용
		mav.setViewName("cart/cart");
		mav.addObject("map", map);
		System.out.println("showCartList 장바구니 조회 컨트롤러 메소드 실행");
		System.out.println("showCartList 장바구니 조회 컨트롤러 메소드 사이즈:" + list.size());
		return mav;

	}

//	장바구니 아이템 삭제 컨트롤러 메소드
	/*
	 * @GetMapping("/deleteCartItem") public String
	 * deleteCartItem(@ModelAttribute("cartVO")CartVO vo) {
	 * System.out.println("deleteCartItem 컨트롤러 메소드 실행 / vo.cartNum:"+vo.getCartNum()
	 * ); // cartService.deleteCartItem(0); return "redirect:/cart/showCartList"; }
	 */

	@GetMapping("/deleteCartItem")
	public String deleteCartItem(@RequestParam int cartNum) {
		System.out.println("deleteCartItem 컨트롤러 메소드 실행 / vo.cartNum:"+cartNum);
		cartService.deleteCartItem(cartNum);
		return "redirect:/cart/showCartList";
	}
	
	@PostMapping("/updateCartItem")
	public String updateCartItem(@ModelAttribute("cartVO")CartVO vo, HttpSession session, @RequestParam int[] cartAmount, @RequestParam int[] cartNum) {
		System.out.println("updateCartItem 컨트롤러 메소드 실행");
		UserVO uvo = (UserVO)session.getAttribute("account");
		for(int i = 0; i < cartAmount.length; i++) {
			CartVO cvo = new CartVO();
			cvo.setCartNum(cartNum[i]);
			cvo.setCartAmount(cartAmount[i]);
			cartService.updateCartItem(cvo);
			System.out.println("updateCartItem--------------------------------------------------------");
			System.out.println("업데이트하는 장바구니 번호:"+cartNum[i]);
			System.out.println("업데이트하는 장바구니 수량:"+cartAmount[i]);
			System.out.println(cartNum[i]+"번째 장바구니 수정 완료---------------------------------------------------");
		}
		
		return "redirect:/cart/showCartList";
	}

}
