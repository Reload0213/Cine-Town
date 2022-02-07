package kr.co.goodee39.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.goodee39.cart.vo.CartVO;
import kr.co.goodee39.goods.service.goodsService;
import kr.co.goodee39.goods.vo.GoodsVO;
import kr.co.goodee39.goodsReview.service.goodsReviewService;
import kr.co.goodee39.goodsReview.vo.goodsReviewVO;
import kr.co.goodee39.productWishlist.vo.productWishlistVO;

/*
 * 컨트롤러 담당: 김용현 
 * a링크로 컨트롤러를 타는지 확인 / 페이지 디자인 안 깨지도록 확인하기 위해 만든 컨트롤러 입니다
 */
@Controller
@RequestMapping("/goods")
public class goodsController {
	@Autowired
	goodsService goodsService;
	
//	굿즈 각 제품에 대한 리뷰 갯수, 별점 평점을 위해 사용하는 서비스 
	@Autowired
	goodsReviewService goodsReviewService;

	//goodsDetail페이지로 이동
	@GetMapping("/goodsDetail")
	public String goDetail() {
		System.out.println("goodsDetail 컨트롤러 메소드 실행--------------------------------------------------");
		System.out.println("goodsDetail 컨트롤러 메소드 종료--------------------------------------------------");// 해당 컨트롤러를 타는지 확인
		return "goods/goodsDetail"; // 폴더명/페이지명으로 경로를 탄다
	}
	
	//goodsMain페이지로 이동
	@GetMapping("/goodsMain")
	public String goMain(Model model, @ModelAttribute("cartVO")CartVO vo, @ModelAttribute("productWishlistVO")productWishlistVO pvo) {
		System.out.println("goMain 컨트롤러 메소드 실행--------------------------------------------------");
		List<GoodsVO> goodsList = goodsService.showGoodsList();
		model.addAttribute("goodsList", goodsList);
		System.out.println("goMain 컨트롤러 메소드 종료--------------------------------------------------");
		return "goods/goodsMain";
	}
	
	//goodsManu페이지로 이동
	@GetMapping("/goodsMenu")
	public String goMenu(Model model, @ModelAttribute("cartVO")CartVO vo, @ModelAttribute("productWishlistVO")productWishlistVO pvo, @ModelAttribute("goodsReviewVO")goodsReviewVO rvo) {
		System.out.println("goMenu 컨트롤러 메소드 실행--------------------------------------------------");
		List<GoodsVO> goodsList = goodsService.showGoodsList();
		model.addAttribute("goodsList", goodsList);
	
		List<goodsReviewVO> grList = goodsReviewService.showGrCountList();
		model.addAttribute("grList", grList);
		
		int countGoods = goodsService.showGoodsCount(); //굿즈 상품의 갯수를 담아주는 부분
		System.out.println("countGoods:"+countGoods);
		
		model.addAttribute("countGoods", countGoods);
	
		System.out.println("goMenu 컨트롤러 메소드 종료--------------------------------------------------");
		return "goods/goodsMenu";
	}
	
	//gdsNum = 1인 상품 상세 페이지 
	@GetMapping("/{id}")
	public String goGoods1(@PathVariable int id, Model model, GoodsVO vo , @ModelAttribute("cartVO") CartVO cvo, @ModelAttribute("productWishlistVO")productWishlistVO pvo, @ModelAttribute("goodsReviewVO")goodsReviewVO rvo) {
		System.out.println("goGoods1 컨트롤러 메소드 실행--------------------------------------------------");
	    vo.setGdsNum(id);
	    goodsService.showGoodsItem(vo);
	    int grCount = goodsReviewService.showGrCount(id); // 제품별 별점
	    int grReviewCount = goodsReviewService.showGrNumCount(id); // 제품별 댓글 갯수
	   
	    goodsReviewVO rvo1 = new goodsReviewVO();
	    goodsReviewVO rvo2 = new goodsReviewVO();
	    rvo1.setGrCount(grCount);
	    rvo2.setGrCount(grReviewCount);
	    System.out.println("id:"+id);
	    System.out.println("gdsNum:"+vo.getGdsName());
	    System.out.println("grCount:"+grCount);
	    System.out.println("gdsNum"+id+" / "+"count(grNum):"+rvo2.getGrCount());
	    model.addAttribute("rvo", rvo1);
	    model.addAttribute("rvo2", rvo2);
	    model.addAttribute("goods", vo);
	    
//	    연관 상품들, 최근 본 상품들을 뿌려주기 위해 사용
		List<GoodsVO> goodsList = goodsService.showGoodsList();
		model.addAttribute("goodsList", goodsList);
		

	    
		System.out.println("goGoods1 컨트롤러 메소드 종료--------------------------------------------------");
		return "goods/goodsDetail";
	}
	
	


}
