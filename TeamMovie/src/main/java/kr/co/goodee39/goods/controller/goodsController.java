package kr.co.goodee39.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.goodee39.cart.vo.CartVO;
import kr.co.goodee39.goods.service.goodsService;
import kr.co.goodee39.goods.vo.GoodsVO;

/*
 * 컨트롤러 담당: 김용현 
 * a링크로 컨트롤러를 타는지 확인 / 페이지 디자인 안 깨지도록 확인하기 위해 만든 컨트롤러 입니다
 */
@Controller
@RequestMapping("/goods")
public class goodsController {
	@Autowired
	goodsService goodsService;

	//goodsDetail페이지로 이동
	@GetMapping("/goodsDetail")
	public String goDetail() {
		System.out.println("goodsDetail 페이지로 이동"); // 해당 컨트롤러를 타는지 확인
		return "goods/goodsDetail"; // 폴더명/페이지명으로 경로를 탄다
	}
	
	//goodsMain페이지로 이동
	@GetMapping("/goodsMain")
	public String goMain(Model model) {
		System.out.println("goodsMain 페이지로 이동");
		List<GoodsVO> goodsList = goodsService.showGoodsList();
		model.addAttribute("goodsList", goodsList);

		return "goods/goodsMain";
	}
	
	//goodsManu페이지로 이동
	@GetMapping("/goodsMenu")
	public String goMenu(Model model) {
		System.out.println("goodsMenu 페이지로 이동");
		List<GoodsVO> goodsList = goodsService.showGoodsList();
		model.addAttribute("goodsList", goodsList);
		return "goods/goodsMenu";
	}
	
	//gdsNum = 1인 상품 상세 페이지 
	@GetMapping("/1")
	public String goGoods1(@RequestParam int id, Model model, GoodsVO vo , @ModelAttribute("cartVO") CartVO cvo) {
		System.out.println("goGoods1/id="+id+"실행");
	    vo.setGdsNum(id);
	    goodsService.showGoodsItem(vo);
	    System.out.println("vo잘 가져오는지 확인:"+vo.getGdsName());
	    model.addAttribute("goods", vo);
	
		return "goods/goodsDetail";
	}
	
	//gdsNum = 2인 상품 상세 페이지
	@GetMapping("/2")
	public String goGoods2(@RequestParam int id, Model model, GoodsVO vo , @ModelAttribute("cartVO") CartVO cvo) {
		System.out.println("goGoods1/id="+id+"실행");
	    vo.setGdsNum(id);
	    goodsService.showGoodsItem(vo);
	    System.out.println("vo잘 가져오는지 확인:"+vo.getGdsName());
	    model.addAttribute("goods", vo);
	
		return "goods/goodsDetail";
	}
	
	//gdsNum = 3인 상품 상세 페이지
	@GetMapping("/3")
	public String goGoods3(@RequestParam int id, Model model, GoodsVO vo , @ModelAttribute("cartVO") CartVO cvo) {
		System.out.println("goGoods1/id="+id+"실행");
	    vo.setGdsNum(id);
	    goodsService.showGoodsItem(vo);
	    System.out.println("vo잘 가져오는지 확인:"+vo.getGdsName());
	    model.addAttribute("goods", vo);
	    
	
		return "goods/goodsDetail";
	}
	
	//gdsNum = 4인 상품 상세 페이지
	@GetMapping("/4")
	public String goGoods4(@RequestParam int id, Model model, GoodsVO vo , @ModelAttribute("cartVO") CartVO cvo) {
		System.out.println("goGoods1/id="+id+"실행");
	    vo.setGdsNum(id);
	    goodsService.showGoodsItem(vo);
	    System.out.println("vo잘 가져오는지 확인:"+vo.getGdsName());
	    model.addAttribute("goods", vo);
	
		return "goods/goodsDetail";
	}
	
	//gdsNum = 5인 상품 상세 페이지
	@GetMapping("/5")
	public String goGoods5(@RequestParam int id, Model model, GoodsVO vo , @ModelAttribute("cartVO") CartVO cvo) {
		System.out.println("goGoods1/id="+id+"실행");
	    vo.setGdsNum(id);
	    goodsService.showGoodsItem(vo);
	    System.out.println("vo잘 가져오는지 확인:"+vo.getGdsName());
	    model.addAttribute("goods", vo);
	
		return "goods/goodsDetail";
	}



}
