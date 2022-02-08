package kr.co.goodee39.goods.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.goodee39.goods.vo.GoodsVO;
// 담당: 김용현
@Service
public class goodsService {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
//	상품 리스트를 뿌려주는 서비스 메소드
	public List<GoodsVO> showGoodsList(){
		System.out.println("showGoodsList 서비스 메소드 실행--------------------------------------------------");
		System.out.println("showGoodsList 서비스 메소드 종료--------------------------------------------------");
	
 	return sqlSessionTemplate.selectList("goods.showGoodsList");
	}
	
//	특정 굿즈 아이템을 보여주는 서비스 메소드 
	public void showGoodsItem(GoodsVO vo) {
		System.out.println("showGoodsItem 서비스 메소드 실행--------------------------------------------------");
		GoodsVO vo1 = sqlSessionTemplate.selectOne("goods.showGoodsItem", vo);
		vo.setGdsNum(vo1.getGdsNum());
		vo.setGdsPrice(vo1.getGdsPrice());
		vo.setGdsStock(vo1.getGdsStock());
		vo.setGdsViewcnt(vo1.getGdsViewcnt());
		vo.setGdsUUID(vo1.getGdsUUID());
		vo.setGdsName(vo1.getGdsName());
		vo.setGdsDetail(vo1.getGdsDetail());
		vo.setGdsRegdate(vo1.getGdsRegdate());
		vo.setGdsIsdelete(vo1.getGdsIsdelete());
		vo.setGdsBrand(vo1.getGdsBrand());
		vo.setGdsImage1(vo1.getGdsImage1());
		vo.setGdsImage2(vo1.getGdsImage2());
		vo.setGrScore(vo1.getGrScore());
		
		vo.setGdsDetail2(vo1.getGdsDetail2());
		vo.setGdsDetail3(vo1.getGdsDetail3());
		vo.setGdsDetail4(vo1.getGdsDetail4());
		vo.setGdsDetail5(vo1.getGdsDetail5());
		vo.setGdsDetail6(vo1.getGdsDetail6());
		vo.setGdsDetail7(vo1.getGdsDetail7());
		System.out.println("showGoodsItem 서비스 메소드 종료--------------------------------------------------");
	}
	
//	굿즈 메뉴페이지에 상품 갯수를 뿌려줄 서비스 메소드
	public int showGoodsCount() {
		System.out.println("showGoodsCount 서비스 메소드 실행--------------------------------------------------");
		int countItem = sqlSessionTemplate.selectOne("goods.showGoodsCount");
		System.out.println("상품갯수(countItem):"+countItem);
		System.out.println("showGoodsCount 서비스 메소드 종료--------------------------------------------------");
		return countItem;
	}
	
//	index페이지에 top4(별점 기준)으로 상위 4개의 굿즈만 출력
	public List<GoodsVO> showTop4GoodsList(){
		System.out.println("showTop4GoodsList 서비스 메소드 실행--------------------------------------------------");
		System.out.println("showTop4GoodsList 서비스 메소드 종료--------------------------------------------------");
		return sqlSessionTemplate.selectList("goods.showTop4GoodsList");
		
	}
	
	public List<GoodsVO> relateGoodsList(String mvTitle){
		System.out.println("relateGoodsList 서비스 메소드 실행--------------------------------------------------");
		System.out.println("mvTitle:"+mvTitle);
		System.out.println("relateGoodsList 서비스 메소드 종료--------------------------------------------------");
		return sqlSessionTemplate.selectList("goods.relateGoodsList", mvTitle);
	}

}
