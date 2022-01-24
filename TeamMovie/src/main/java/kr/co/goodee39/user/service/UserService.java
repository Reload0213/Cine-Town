package kr.co.goodee39.user.service;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.user.vo.UserVO;

@Service
public class UserService {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void setUser(UserVO vo) {
	
		sqlSessionTemplate.insert("user.insertUser", vo);
		
	}
}
