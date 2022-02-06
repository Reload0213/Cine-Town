package kr.co.goodee39.admin.vo;

public class NoticeVO {
	
	private String selBoard;
	
	private int noticeNum;
	private String noticeCategory;
	private String noticeTitle;
	private String noticeComment;
	private String noticeIsdelete;
	private String noticeRegdate;
	private String adId;
	
	private int start;
	private int count;
	
	
	public NoticeVO() {
	
		this.start = 0;
		this.count = 10;
	}
	public int getNoticeNum() {
		return noticeNum;
	}
	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}
	public String getNoticeCategory() {
		return noticeCategory;
	}
	public void setNoticeCategory(String noticeCategory) {
		this.noticeCategory = noticeCategory;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeComment() {
		return noticeComment;
	}
	public void setNoticeComment(String noticeComment) {
		this.noticeComment = noticeComment;
	}
	public String getNoticeIsdelete() {
		return noticeIsdelete;
	}
	public void setNoticeIsdelete(String noticeIsdelete) {
		this.noticeIsdelete = noticeIsdelete;
	}
	public String getNoticeRegdate() {
		return noticeRegdate;
	}
	public void setNoticeRegdate(String noticeRegdate) {
		this.noticeRegdate = noticeRegdate;
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
