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
import kr.co.goodee39.admin.service.QnaService;
import kr.co.goodee39.admin.vo.NoticeVO;
import kr.co.goodee39.admin.vo.QnaVO;
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
	@GetMapping("/writeNotice")
	public String writeNotice(@ModelAttribute("noticeVO") NoticeVO noticeVO, HttpSession session) {
		
		// 세션 유저 정보
		UserVO userVO = (UserVO) session.getAttribute("account");
		// 세션 유저 아이디
		String userId = userVO.getUserId();
		noticeVO.setAdId(userId);
		
		System.out.println(noticeVO.getNoticeComment());
		System.out.println(noticeVO.getNoticeTitle());
		
		noticeService.noticeWrite(noticeVO);

		return "redirect:/aboutUs/aboutUsMain";
	}
	
	

 /* 질문게시판 영역 시작 */
	
	@Autowired
	QnaService QnaService;
	
	/**
	 * 질문게시판 리스트 불러오는 컨트롤러
	 * @param model
	 * @return
	 */
	@GetMapping("/faqMain")
	public String faqMain(Model model) {
		QnaVO vo = new QnaVO();
		List<QnaVO> qnaList = QnaService.qnaList(vo);

		model.addAttribute("qnaList", qnaList);

		return "/faq/faqMain";
	}

	/**
	 * 질문게시판 상세 페이지 불러오는 컨트롤러
	 * @param qnaNum
	 * @param model
	 * @return
	 */
	@GetMapping("/qnaView")
	public String qnaView(@RequestParam("qnaNum") int qnaNum, Model model) {
		
		// 질문게시판 상세 정보
		QnaVO qnaDetail = QnaService.getQnaContents(qnaNum);
		
		model.addAttribute("qna", qnaDetail);
		
		return "/faq/qnaView";
	}
	
	/**
	 * 질문게시판 작성 페이지 불러오는 컨트롤러
	 * @param qnaVO
	 * @return
	 */
	@GetMapping("/qnaWrite")
	public String qnaWrite(@ModelAttribute("qnaVO") QnaVO qnaVO) {
		
		return "/faq/qnaWrite";
	}

	/**
	 * 질문게시판 작성하는 컨트롤러
	 * @param qnaVO
	 * @param session
	 * @return
	 */
	@GetMapping("/writeQna")
	public String writeQna(@ModelAttribute("qnaVO") QnaVO qnaVO) {
		
		QnaService.qnaWrite(qnaVO);

		return "redirect:/aboutUs/faqMain";
	}
	
}
