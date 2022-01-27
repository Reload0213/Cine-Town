package kr.co.goodee39.productWishlist.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.productWishlist.vo.productWishlistVO;
/*
 * 상품 위시리스트 담당: 김용현
 */
@Service
public class productWishlistService {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
//	위시리스트에 해당 굿즈가 없으면 추가하는 서비스 메소드
	public void insertProductWishlist(productWishlistVO vo) {
		System.out.println("insertProductWishlist 서비스 메소드 실행 / gdsNum, userNum :"+vo.getGdsNum()+","+vo.getUserNum());
		sqlSessionTemplate.insert("productWithlist.insertProductWishlist", vo);
	}
	
//	위시리스트에 해당 굿즈가 있는지 확인하는 서비스 메소드
	public int countProductWishlist(int userNum, int gdsNum) {
		System.out.println("countProductWishlist 서비스 메소드 실행 / gdsNum, userNum :"+userNum+","+gdsNum);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNum", userNum);
		map.put("gdsNum", gdsNum);
		return sqlSessionTemplate.selectOne("productWithlist.countProductWishlist", map);
				
	}
	
//	위시리스트에 담긴 굿즈를 뿌려주는 서비스 메소드
	public List<productWishlistVO> showProductWishlist(int userNum){
		System.out.println("showProductWishlist 서비스 메소드 실행 / userNum :"+userNum);
		return sqlSessionTemplate.selectList("productWithlist.showProductWishlist", userNum);
		
	}
	

}
