package kr.co.goodee39.admin.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import kr.co.goodee39.admin.service.noticeService;
import kr.co.goodee39.admin.vo.NoticeVO;
import kr.co.goodee39.user.vo.UserVO;

@Controller
@RequestMapping("/aboutUs")
public class aboutUsController {

	@Autowired
	noticeService noticeService;

	/**
	 * 공지사항 리스트 불러오기
	 * @param model
	 * @return
	 */
	@GetMapping("/aboutUsMain")
	public String aboutUsMain(Model model) {
		NoticeVO vo = new NoticeVO();
		List<NoticeVO> noticeList = noticeService.noticeList(vo);

		model.addAttribute("noticeList", noticeList);

		return "/aboutUs/aboutUsMain";
	}

	/**
	 * 공지사항 상세 페이지 불러오기
	 * @param noticeNum
	 * @param model
	 * @return
	 */
	@GetMapping("/noticeView")
	public String noticeView(@RequestParam("noticeNum") int noticeNum, Model model) {
		
		// 공지사항 상세 정보
		NoticeVO noticeDetail = noticeService.getNoticeContents(noticeNum);
		
		model.addAttribute("notice", noticeDetail);
		
		return "/aboutUs/noticeView";
	}
	
	/**
	 * 공지사항 작성 페이지 불러오기
	 * @param noticeVO
	 * @param session
	 * @return
	 */
	@GetMapping("/noticeWrite")
	public String noticeWrite(@ModelAttribute("noticeVO") NoticeVO noticeVO) {
		
		return "/aboutUs/noticeWrite";
	}

	/**
	 * 공지사항 작성하기
	 * @param noticeVO
	 * @return
	 */
	@PostMapping("/writeNotice")
	public String writeNotice(@ModelAttribute("noticeVO") NoticeVO noticeVO, HttpSession session) {
		
		// 세션 유저 정보
		UserVO userVO = (UserVO) session.getAttribute("account");
		// 세션 유저 아이디
		String userId = userVO.getUserId();
		
		noticeVO.setAdId(userId);
		
		noticeService.noticeWrite(noticeVO);

		return "redirect:/aboutUs/aboutUsMain";
	}
	
	/**
	 * 공지사항 수정페이지 불러오는 컨트롤러
	 * @param noticeNum
	 * @param model
	 * @return
	 */
	@GetMapping("/noticeUpdate")
	public String noticeUpdate(@RequestParam("noticeNum") int noticeNum, Model model) {
		
		// 공지사항 상세 정보
		NoticeVO noticeDetail = noticeService.getNoticeContents(noticeNum);
		
		model.addAttribute("notice", noticeDetail);
		
		return "/aboutUs/noticeUpdate";
	}
	
	/**
	 * 공지사항 수정하는 컨트롤러
	 * @param noticeVO
	 * @param session
	 * @return
	 */
	@PostMapping("/updateNotice")
	public String updateNotice(@ModelAttribute("noticeVO") NoticeVO noticeVO, HttpSession session) {
		
		// 세션 유저 정보
		UserVO userVO = (UserVO) session.getAttribute("account");
		// 세션 유저 아이디
		String userId = userVO.getUserId();
		
		noticeService.updateNotice(noticeVO);
		
		return "redirect:/aboutUs/aboutUsMain";
	}
	
	/**
	 * 공지사항 삭제하는 컨트롤러
	 * @param noticeNum
	 * @param model
	 * @return
	 */
	@GetMapping("/deleteNotice")
	public String deleteNotice(@RequestParam("noticeNum") int noticeNum, Model model) {
		
		noticeService.deleteNotice(noticeNum);
		
		return "redirect:/aboutUs/aboutUsMain";
	}
	
	
	
	

	// 질문게시판 리스트 불러오기
	@GetMapping("/faqMain")
	public String faqMain() {
		
		return "/faq/faqMain";
	}

}
