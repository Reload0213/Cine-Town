package kr.co.goodee39.cart.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		System.out.println("insertCartItem 서비스 메소드 실행--------------------------------------------------");
		
		System.out.println("굿즈번호 확인"+vo.getGdsNum());
		System.out.println("유저번호 확인"+vo.getUserNum());
		sqlSessionTemplate.insert("cart.insertCartItem", vo);
		System.out.println("insertCartItem 서비스 메소드 종료--------------------------------------------------");
	}
	
	
//	cart페이지에 장바구니에 담긴 수량을 수정하는 로직 
	public List<CartVO> showCartList(int userNum){
		System.out.println("showCartList 서비스 메소드 실행--------------------------------------------------");
		System.out.println("userNum:"+userNum);
		System.out.println("showCartList 서비스 메소드 종료--------------------------------------------------");
		return sqlSessionTemplate.selectList("cart.showCartList", userNum);
	}
//	<!-- cart페이지에 장바구니에 담긴 목록들의 총액을 구하는 쿼리 (총액)-->
	public int sumCartItem(int userNum) {
		System.out.println("sumCartItem 서비스 메소드 실행--------------------------------------------------");
		System.out.println("userNum:"+userNum);
		if(sqlSessionTemplate.selectOne("cart.sumCartItem", userNum) == null) {
			System.out.println("sumCartItem 서비스 메소드 null값 확인");
			return 0; //값을 제대로 가져오지 못할 경우는 0으로 해준다.
		}
		System.out.println("sumCartItem 서비스 메소드 null값이 아니면 실행");
		System.out.println("sumCartItem 서비스 메소드 종료--------------------------------------------------");
		return sqlSessionTemplate.selectOne("cart.sumCartItem", userNum);
		
	}
	
	//cart페이지에 장바구니에 담긴 수량을 삭제하는 로직
	public void deleteCartItem(int cartNum) {
		System.out.println("deleteCartItem 서비스 메소드 실행--------------------------------------------------");
		System.out.println("userNum:"+cartNum);
		sqlSessionTemplate.delete("cart.deleteCartItem", cartNum);
		System.out.println("deleteCartItem 서비스 메소드 종료--------------------------------------------------");
	}
	
//	cart페이지에 장바구니에 담긴 수량을 수정하는 로직
	public void updateCartItem(CartVO vo) {
		System.out.println("updateCartItem 서비스 메소드 실행--------------------------------------------------");
		System.out.println("cartNum , cartAmount:"+vo.getCartNum()+","+vo.getCartAmount());
		sqlSessionTemplate.update("cart.updateCartItem", vo);
		System.out.println("updateCartItem 서비스 메소드 종료--------------------------------------------------");
		
	}
	
//	cart페이지에 장바구니에 이미 담긴 수량이 있는지 확인하는 로직 
	public int countCartItem(int userNum, int gdsNum) {
		System.out.println("countCartItem 서비스 메소드 실행--------------------------------------------------");
		System.out.println("userNum , gdsNum:"+userNum+","+gdsNum);
		Map<String , Object> map = new HashMap<String, Object>();
		map.put("userNum", userNum);
		map.put("gdsNum", gdsNum);
		System.out.println("countCartItem 서비스 메소드 종료--------------------------------------------------");
		return sqlSessionTemplate.selectOne("cart.countCartItem", map);
		
	}
	
//	cart페이지에 장바구니에 담긴 수량이 있다면, 추가로 수량을 더해주는 로직
	public void sumAmountCartItem(CartVO vo) {
		System.out.println("sumAmountCartItem 서비스 메소드 실행--------------------------------------------------");
		System.out.println("userNum, gdsNum, cartAmount:"+vo.getUserNum()+","+vo.getGdsNum()+","+vo.getCartAmount());
		sqlSessionTemplate.update("cart.sumAmountCartItem", vo);
		System.out.println("sumAmountCartItem 서비스 메소드 종료--------------------------------------------------");
	}
	
	

}
