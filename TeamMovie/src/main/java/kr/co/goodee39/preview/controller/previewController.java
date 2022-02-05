package kr.co.goodee39.preview.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.goodee39.preview.service.PreviewService;
import kr.co.goodee39.preview.vo.previewVO;
import kr.co.goodee39.user.vo.UserVO;

@Controller           
@RequestMapping("/preview")
public class previewController {
	
	@Autowired
	PreviewService previewService;
	
		@GetMapping("/main")
		public String main() {

			return "preview/main";
		}
		
		@GetMapping("/detail/page/{num}")
		public String detailPage(@PathVariable int num, @ModelAttribute("userVO") UserVO vo,HttpSession session,Model model) {
           
			previewService.selectOneUser(num,vo, session,model);
            
			return "preview/detailPage"+num;
			
			
		}
		
		@GetMapping("/detail/submit/{pwNum}")
		public String detailPage(@PathVariable int pwNum,@ModelAttribute("pwVO") previewVO pwvo,UserVO vo,HttpSession session) {
			System.out.println("이동완료");
			
		    pwvo.setPwNum(pwNum);
            
			previewService.insertPw(vo,pwvo,session);
			
			return "preview/detailPage"+pwNum;
			
		}
		
	  
		
		
		
	
		
		
		
}
