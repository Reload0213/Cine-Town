package kr.co.goodee39.admin.controller;

import java.util.List;
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

@Controller
@RequestMapping("/aboutUs")
public class abouUsController {

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

	// 공지사항 상세 페이지 불러오기
	@GetMapping("/noticeView")
	public String noticeView(@RequestParam("noticeNum") int noticeNum, Model model) {

		NoticeVO noticeDetail = noticeService.getNoticeContents(noticeNum);
		model.addAttribute("notice", noticeDetail);
		
		return "/aboutUs/noticeView";
	}
	
	// 공지사항 작성 페이지 불러오기
	@GetMapping("/noticeWrite")
	public String noticeWrite() {
		
		return "/aboutUs/noticeWrite";
	}

	// 공지사항 작성하기
	@PostMapping("/writeNotice")
	public String writeNotice(@ModelAttribute("noticeVO") NoticeVO noticeVO) {
		
		noticeService.noticeWrite(noticeVO);

		return "redirect:/aboutUs/aboutUsMain";
		
	}
	

	@GetMapping("/faqMain")
	public String faqMain(Model model) {
		model.addAttribute("testKey", "testVal");
		return "/faq/faqMain";
	}

}
