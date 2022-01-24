package kr.co.goodee39.admin.vo;

public class NoticeVO {
	
	private int noticeNum;
	private String noticeCategory;
	private String noticeTitle;
	private String noticeComment;
	private String noticeIsdelete;
	private String noticeRegdate;
	
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
}
