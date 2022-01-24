package kr.co.goodee39.user.service;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.user.vo.UserVO;

@Service
public class UserService {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	// 회원가입
	public void setUser(UserVO vo) {

		sqlSessionTemplate.insert("user.insertUser", vo);

	}

	// 아이디 중복 검사
	public int idCheck(String userId) {
				
		return sqlSessionTemplate.selectOne("user.idCheck", userId);
	}

	// 로그인
	public String goLogin(UserVO vo, HttpSession session) {
		System.out.println("goLogin 실행");
		UserVO vo1 = sqlSessionTemplate.selectOne("user.selectUser", vo);
		System.out.println(vo1.getUserName());
		String path = "";
		if (vo1.getVerify() == 0) {
			System.out.println("일반 유저 로그인");
			session.setAttribute("account", vo1);
			path = "redirect:/";
		} else if (vo1.getVerify() == 1) {
			System.out.println("admin 유저 로그인");
			session.setAttribute("account", vo1);
			path = "redirect:/admin_main";
		}
		return path;
	}

}
