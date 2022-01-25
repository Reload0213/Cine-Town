package kr.co.goodee39.cart.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.cart.vo.CartVO;

@Service
public class cartService {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insertCartItem(CartVO vo) {
		System.out.println("insertCartItem 서비스 메소드 실행 ");
		System.out.println("굿즈번호 확인"+vo.getGdsNum());
		System.out.println("유저번호 확인"+vo.getUserNum());
		sqlSessionTemplate.insert("cart.insertCartItem", vo);
	}
	
	

}
