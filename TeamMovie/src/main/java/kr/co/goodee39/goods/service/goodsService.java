package kr.co.goodee39.goods.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.goodee39.goods.vo.GoodsVO;

@Service
public class goodsService {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<GoodsVO> showGoodsList(){
		System.out.println("showGoodsList메소드 실행");
	
 	return sqlSessionTemplate.selectList("goods.showGoodsList");
	}
	
	
	public void showGoodsItem(GoodsVO vo) {
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
	}

}
