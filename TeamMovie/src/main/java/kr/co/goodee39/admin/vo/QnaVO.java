package kr.co.goodee39.admin.vo;

public class QnaVO {
	
	private String selBoard;
	
	private int qnaNum;
	private String qnaCategory;
	private String qnaTitle;
	private String qnaComment;
	private String qnaIsdelete;
	private String qnaRegdate;
	private String adId;
	
	private int start;
	private int count;
	
	
	
	
	public QnaVO() {
		this.start = 0;
		this.count = 10;
	}
	
	
	
	public int getQnaNum() {
		return qnaNum;
	}
	public void setQnaNum(int qnaNum) {
		this.qnaNum = qnaNum;
	}
	public String getQnaCategory() {
		return qnaCategory;
	}
	public void setQnaCategory(String qnaCategory) {
		this.qnaCategory = qnaCategory;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	
	public String getQnaComment() {
		return qnaComment;
	}



	public void setQnaComment(String qnaComment) {
		this.qnaComment = qnaComment;
	}



	public String getQnaIsdelete() {
		return qnaIsdelete;
	}
	public void setQnaIsdelete(String qnaIsdelete) {
		this.qnaIsdelete = qnaIsdelete;
	}
	public String getQnaRegdate() {
		return qnaRegdate;
	}
	public void setQnaRegdate(String qnaRegdate) {
		this.qnaRegdate = qnaRegdate;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}



	public String getSelBoard() {
		return selBoard;
	}



	public void setSelBoard(String selBoard) {
		this.selBoard = selBoard;
	}



	public String getAdId() {
		return adId;
	}



	public void setAdId(String adId) {
		this.adId = adId;
	}
	
	
}
