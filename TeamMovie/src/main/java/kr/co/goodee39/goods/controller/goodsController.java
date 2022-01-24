package kr.co.goodee39.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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

	@GetMapping("/goodsDetail")
	public String goDetail() {
		System.out.println("goodsDetail 페이지로 이동"); // 해당 컨트롤러를 타는지 확인
		return "goods/goodsDetail"; // 폴더명/페이지명으로 경로를 탄다
	}

	@GetMapping("/goodsMain")
	public String goMain(Model model) {

		System.out.println("goodsMain 페이지로 이동");
		List<GoodsVO> goodsList = goodsService.showGoodsList();
		model.addAttribute("goodsList", goodsList);

		return "goods/goodsMain";
	}

	@GetMapping("/goodsMenu")
	public String goMenu() {
		System.out.println("goodsMenu 페이지로 이동");
		return "goods/goodsMenu";
	}


}
