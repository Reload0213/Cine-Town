package kr.co.goodee39.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodee39.admin.service.noticeService;
import kr.co.goodee39.admin.vo.NoticeVO;
import kr.co.goodee39.goods.vo.GoodsVO;

@Controller
@RequestMapping("/admin")
public class adminController {
	
	@Autowired
	noticeService noticeService;
	
	@GetMapping("/main")
	public String main() {

		return "admin/main";
	}
	
	@GetMapping("/user")
	public String user() {

		return "admin/user";
	}
	
	@GetMapping("/mail")
	public String mail() {

		return "admin/mail";
	}
	
	
	@GetMapping("/order")
	public String order() {

		return "admin/order";
	}
	
	@GetMapping("/board")
	public String board() {

		return "admin/board";
	}
	
	@GetMapping("/aboutUsMain")
	public String aboutUsMain(Model model) {
		List<NoticeVO> noticeList = noticeService.noticeList();
		model.addAttribute("noticeList", noticeList);
		return "/aboutUs/aboutUsMain";
	}
	
	@GetMapping("/noticeView")
	public String noticeView(Model model) {
		model.addAttribute("testKey", "testVal");
		return "/aboutUs/noticeView";
	}
	
	@GetMapping("/noticeWrite")
	public String noticeWrite(Model model) {
		model.addAttribute("testKey", "testVal");
		return "/aboutUs/noticeWrite";
	}
	
	@GetMapping("/faqMain")
	public String faqMain(Model model) {
		model.addAttribute("testKey", "testVal");
		return "/faq/faqMain";
	}
	
	
	
	/*
	 * 컨트롤러 담당: 김용현 
	 * a링크로 컨트롤러를 타는지 확인 / 페이지 디자인 안 깨지도록 확인하기 위해 만든 컨트롤러 입니다
	 */
	
		@GetMapping("/adminShopCreatePage")
		public String goAdminShopCreatePage() {
			System.out.println("adminShopCreatePage여기로 타나 ------------------------");
			return "admin/adminShopCreatePage";
		}
		
		@GetMapping("/adminShopCRUDPage")
		public String goadminShopCRUDPage() {
			System.out.println("adminShopCRUDPage 여기로 타나 ------------------------");
			return "admin/adminShopCRUDPage";
		}
}
	
