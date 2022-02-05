package kr.co.goodee39.admin.service;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.goodee39.admin.vo.NoticeVO;

@Service
public class noticeService {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	// 공지사항 리스트 불러오기
	public List<NoticeVO> noticeList(NoticeVO vo) {

		return sqlSessionTemplate.selectList("notice.noticeList", vo);
	}

	// 공지사항 상세 페이지 불러오기
	public NoticeVO getNoticeContents(int noticeNum) {

		NoticeVO vo = sqlSessionTemplate.selectOne("notice.getNoticeContents", noticeNum);

		return vo;
	}
	
	// 공지사항 작성하기
	public void noticeWrite(NoticeVO noticeVO) {
		
		sqlSessionTemplate.insert("notice.noticeWrite", noticeVO);
	}
	
	// 공지사항 수정하는 서비스
	public void updateNotice(NoticeVO noticeVO) {
		
		sqlSessionTemplate.update("notice.updateNotice", noticeVO);
	}
	
	
	/**
	 * 공지사항 삭제하는 서비스
	 * @param noticeNum
	 */
	public void deleteNotice(int noticeNum) {
		
		sqlSessionTemplate.delete("notice.deleteNotice", noticeNum);
	}
	
}
