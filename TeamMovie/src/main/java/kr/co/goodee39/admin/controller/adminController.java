package kr.co.goodee39.admin.controller;

import java.util.List;

import javax.net.ssl.SSLEngineResult.Status;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.goodee39.admin.service.AdminService;
import kr.co.goodee39.admin.service.noticeService;
import kr.co.goodee39.admin.vo.NoticeVO;
import kr.co.goodee39.adminmailbox.vo.AdminMailBoxVO;
import kr.co.goodee39.goods.vo.GoodsVO;
import kr.co.goodee39.user.vo.UserVO;

@Controller
@RequestMapping("/admin")
public class adminController {
	
	@Autowired
	AdminService service;
	
	@Autowired
	noticeService noticeService;
	
	@GetMapping("/main")
	public String main() {

		return "admin/main";
	}
	
	
	//게시판 출력컨트롤러
	@GetMapping("/user")
	public String user(Model model,@RequestParam(defaultValue = "1")int num,
			                                        @RequestParam(defaultValue="")String userName
			) {
	   service.showUserInfo(model, num,userName);
		return "admin/user";
	}
	

	

	@GetMapping("/mail")
	public String mail(Model model,@RequestParam(defaultValue = "1")int num) {
   service.showAdminMailBoxList(model,num);
		return "admin/mail";
	}
	
	
	@GetMapping("/mail/detail")
	public String mailDetail(@ModelAttribute("ambVO") AdminMailBoxVO vo) {
		
		/*
		 * AdminMailBoxVO vo2 = new AdminMailBoxVO();
		 * System.out.println(vo2.getMailNum());
		 */
		System.out.println(vo.getMailNum());
        service.showAdminMailBoxOne(vo);
       
		return "admin/detail";
	}
	
	
	@GetMapping("/order")
	public String order() {

		return "admin/order";
	}
	
	@GetMapping("/board")
	public String board() {

		return "admin/board";
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
	
