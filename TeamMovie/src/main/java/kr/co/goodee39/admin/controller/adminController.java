package kr.co.goodee39.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.net.ssl.SSLEngineResult.Status;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.goodee39.admin.service.AdminService;
import kr.co.goodee39.admin.service.noticeService;
import kr.co.goodee39.admin.vo.NoticeVO;
import kr.co.goodee39.admin.vo.QnaVO;
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
	
	public String main(HttpSession session) {
        String path="";
        
		if(session.getAttribute("account") != null) {
          path="admin/main";
        }
		else {
			 path="redirect:/";	
		}
		return path;
	}
	
	@GetMapping("/logout")
	public String adminLogout(HttpSession session) {
		
		session.invalidate();
		System.out.println("정상적으로 로그아웃했수다");
		return "redirect:/";
		
	}
	
	
	//게시판 출력컨트롤러
	@GetMapping("/user")
	public String user(Model model,@RequestParam(defaultValue = "1")int num,
			                                        @RequestParam(defaultValue="")String userName
			) {
	
		
		
	   service.showUserInfo(model, num,userName);
	
		return "admin/user";
	}
	
	
	@GetMapping("/userFix")
	   public String userFix(@ModelAttribute("userVO") UserVO vo) {
			
			System.out.println(vo.getUserNum());
			service.selectUserOne(vo);
			
			return "admin/userFix";
		}
	
	
	@GetMapping("/userFixComplete")
	public String userFixComplete(@ModelAttribute("userVO") UserVO vo,Model model,@RequestParam(defaultValue = "1")int num,
            @RequestParam(defaultValue="")String userName) {
		
		System.out.println(vo.getUserNum());
		service.updateUser(vo);
		service.showUserInfo(model, num, userName);
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
	public String board(Model model) {
     
	
		
		return "admin/board";
	}
	
	
	@GetMapping("/board/notice")
	public String boardNotice(Model model,@RequestParam(defaultValue = "1") int num) {
      
		service.selectNoticeList(model,num);
		
	
		
		return "admin/notice";
	}
	
	/**
	 * 게시판 선택 시 리스트 출력하는 컨트롤러(공지사항, QNA)
	 * @param vo
	 * @param model
	 * @param req
	 * @return
	 */
	@PostMapping("/board/noticeBoard")
	public String noticeBoard(@RequestBody NoticeVO vo, Model model, HttpServletRequest req) {
		
		String selBoard = "";
		selBoard = vo.getSelBoard();
		
		List<NoticeVO> nlist = new ArrayList<>();
		List<QnaVO> qlist = new ArrayList<>();
		
		//공지사항 게시판 선택시 해당 게시판 출력
		if(selBoard.equals("1")) {
			nlist = noticeService.noticeList(vo);
			
		//QNA 게시판 선택시 게시판 출력
		} else if(selBoard.equals("2")) {
			//qlist = (List<QnaVO>)qnaService.qnaList(vo);
			
		}
		
		model.addAttribute("nList", nlist);
		model.addAttribute("qList", qlist);
		model.addAttribute("selBoard", selBoard);
		
		return "admin/noticeBoard";
	}
	
	/**
	 * 공지사항 삭제하는 컨트롤러
	 * @param vo
	 * @return
	 */
	@ResponseBody
	@PostMapping("/board/deleteNotice")
	public Map<String, String> deleteNotice(@RequestBody NoticeVO vo) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("resultCode", "0000"); // 0000: 성공
		
		try {
			noticeService.deleteNotice(vo.getNoticeNum());
		} catch (Exception e) {
			map.put("resultCode", "9999"); // 9999: 실패
		}
		
		return map;
	}
	
	/**
	 * 공지사항 수정페이지 불러오는 컨트롤러
	 * @param noticeNum
	 * @param model
	 * @param noticeVO
	 * @return
	 */
	@GetMapping("/noticeUpdate")
	public String noticeUpdate(@RequestParam("noticeNum") int noticeNum, Model model, @ModelAttribute("noticeVO") NoticeVO noticeVO) {
		
		// 공지사항 상세 정보
		NoticeVO noticeDetail = noticeService.getNoticeContents(noticeNum);
		
		model.addAttribute("notice", noticeDetail);
		
		return "/admin/noticeFix";
	}
	
	/**
	 * 공지사항 수정하는 컨트롤러
	 * @param noticeVO
	 * @return
	 */
	@GetMapping("/updateNotice")
	public String updateNotice(@ModelAttribute("noticeVO") NoticeVO noticeVO) {
	
		noticeService.updateNotice(noticeVO);

		return "/admin/board";
	}
	
	
	@GetMapping("/board/qna")
	public String qna(Model model,@RequestParam(defaultValue = "1") int num) {
      
		service.selectQnaList(model,num);
		
	
		
		return "admin/qna";
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
	
