package kr.co.goodee39.goods.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.goods.vo.GoodsVO;

@Service
public class goodsService {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<GoodsVO> showGoodsList(){
		return sqlSessionTemplate.selectList("goodsVO.showGoodsList");
	}

}
