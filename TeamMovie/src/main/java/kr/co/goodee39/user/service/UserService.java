package kr.co.goodee39.user.service;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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

	// 이름 중복 검사
	public int nameCheck(String userName) {

		return sqlSessionTemplate.selectOne("user.nameCheck", userName);

	}

	// 이메일 중복 검사
	public int emailCheck(String userEmail) {

		return sqlSessionTemplate.selectOne("user.emailCheck", userEmail);

	}

	// 로그인
	public String goLoginService(UserVO vo, HttpSession session) {
		System.out.println("goLogin 실행");
		UserVO vo1 = sqlSessionTemplate.selectOne("user.selectUser", vo);
		String path = "";
		// 아이디가 있으면
		if (vo1 != null) {

			System.out.println(vo1.getUserName());
			session.setAttribute("account", vo1); // session에 로그인 정보 저장

			if (vo1.getVerify() == 0) {// 일반유저
				System.out.println("일반 유저 로그인");
				path = "redirect:/"; // 메인으로 redirect. 정보를 저장해서 새로고침안해도....
			} else if (vo1.getVerify() == 9) {// 관리자
				System.out.println("admin 유저 로그인");
				path = "redirect:/";
			}
		} else {
			path = "/user/signin";
		}
		return path;

	}

	// 비번찾기
	// public 다음의 UserVO는 mapper의 resultType이랑 일치시켜
	public UserVO findPw(UserVO vo) {
		return sqlSessionTemplate.selectOne("user.findPw", vo);
	}

	// 아이디 찾기
	// public 다음의 UserVO는 mapper의 resultType이랑 일치시켜
	public UserVO findId(UserVO vo) {
		return sqlSessionTemplate.selectOne("user.findId", vo);
	}

	// 내 정보 수정 보여주기
	public UserVO selectUserOne(UserVO vo) {
		UserVO vo1 = new UserVO();

		vo1 = sqlSessionTemplate.selectOne("user.showUserInfoOne", vo);
		vo.setUserId(vo1.getUserId());
		vo.setUserName(vo1.getUserName());
		vo.setUserNum(vo1.getUserNum());
		vo.setUserRegdate(vo1.getUserRegdate());
		vo.setUserPw(vo1.getUserPw());
		vo.setUserEmail(vo1.getUserEmail());
		vo.setUserPhone(vo1.getUserPhone());
		vo.setUserAddr1(vo1.getUserAddr1());
		vo.setUserAddr2(vo1.getUserAddr2());
		vo.setUserAddr3(vo1.getUserAddr3());

		return vo;

	}

	// 내 정보 수정
	public void updateUser(UserVO vo) {
		sqlSessionTemplate.update("user.updateUser", vo);
	}

	/*
	 * public void showUserInfo(Model model,int num,String userName){
	 * 
	 * UserVO vo = new UserVO(); vo.setStart((num-1)*vo.getCount()); //인덱스시작
	 * 
	 * if (!"".equals(userName)) {
	 * 
	 * model.addAttribute("userName",userName);
	 * 
	 * vo.setUserName(userName);
	 * 
	 * } model.addAttribute("list",sqlSessionTemplate.selectList(
	 * "user.showUserInfoList",vo));
	 * 
	 * model.addAttribute("count",sqlSessionTemplate.selectOne(
	 * "user.selectUserCount",vo));
	 * 
	 * 
	 * model.addAttribute("num",num);
	 * 
	 * }
	 */

}
