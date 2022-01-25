package kr.co.goodee39.cart.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.cart.vo.CartVO;

@Service
public class cartService {
//	담당: 김용현
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
//	goodsDetail페이지에서 장바구니에 수량을 담는 로직
	public void insertCartItem(CartVO vo) {
		System.out.println("insertCartItem 서비스 메소드 실행 ");
		System.out.println("굿즈번호 확인"+vo.getGdsNum());
		System.out.println("유저번호 확인"+vo.getUserNum());
		sqlSessionTemplate.insert("cart.insertCartItem", vo);
	}
	
	
//	cart페이지에 장바구니에 담긴 수량을 수정하는 로직 
	public List<CartVO> showCartList(int userNum){
		System.out.println("showCartList 서비스 메소드 실행 / userNum:"+userNum);
		return sqlSessionTemplate.selectList("cart.showCartList", userNum);
	}
	
	public int sumCartItem(int userNum) {
		System.out.println("sumCartItem 서비스 메소드 실행 / userNum:"+userNum);
		if(sqlSessionTemplate.selectOne("cart.sumCartItem", userNum) == null) {
			System.out.println("sumCartItem 서비스 메소드 null값 확인");
			return 0; //값을 제대로 가져오지 못할 경우는 0으로 해준다.
		}
		System.out.println("sumCartItem 서비스 메소드 null값이 아니면 실행");
		return sqlSessionTemplate.selectOne("cart.sumCartItem", userNum);
		
	}
	
	

}
