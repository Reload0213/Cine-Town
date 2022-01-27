package kr.co.goodee39.productWishlist.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.goodee39.productWishlist.service.productWishlistService;
import kr.co.goodee39.productWishlist.vo.productWishlistVO;
import kr.co.goodee39.user.vo.UserVO;

@Controller
@RequestMapping("/productWishlist")
public class productWishlistController {
	@Autowired
	productWishlistService productWishService;
	@PostMapping("/insertProductWishlist")
	public String insertProductWishlist(@ModelAttribute("productWishlistVO")productWishlistVO vo) {
		System.out.println("insertProductWishlist 컨트롤러 메소드 실행 / gdsNum, userNum:"+vo.getGdsNum()+","+vo.getUserNum());
		
		int count = productWishService.countProductWishlist(vo.getUserNum(), vo.getGdsNum());
		System.out.println("count값 확인:"+count+"--------------------------------------------------");
		if(count == 0) { //확인 결과 조회된 위시리스트가 없다면
			productWishService.insertProductWishlist(vo); //해당 물건을 위시리스트에 삽입
		} 
		else { //확인 결과 조회된 위시리스트가 있다면
			productWishService.showProductWishlist(vo.getUserNum()); //위시리스트에 담긴 물건을 체이지에 뿌려줌
		}

		return "redirect:/productWishlist/productWishlist";
	}
	
	@GetMapping("/productWishlist")
	public String productWishlist(@ModelAttribute("productWishlistVO")productWishlistVO vo, UserVO uvo, HttpSession session, Model model) {
		System.out.println("productWishlist 컨트롤러 메소드 실행");
		UserVO uvo1 = (UserVO)session.getAttribute("account");
		int userNum = uvo1.getUserNum();
		System.out.println("userNum값 확인:"+userNum+"--------------------------------------------------");
		List<productWishlistVO> list = productWishService.showProductWishlist(userNum);
		Map<String, Object> map = new HashMap<String, Object>();
		/* map.put("list", list); */
		model.addAttribute("list", list);
		
		return "productWishlist/wishlist";
	}
	
	@GetMapping("/deleteProductWishlistItem")
	public String deleteProductWishlistItem(@RequestParam int pwishNum) {
		System.out.println("deleteProductWishlistItem 컨트롤러 메소드 실행 / pwishNum :"+pwishNum);
		productWishService.deleteProductWishlistItem(pwishNum);
		
		return "redirect:/productWishlist/productWishlist";
	}

}
