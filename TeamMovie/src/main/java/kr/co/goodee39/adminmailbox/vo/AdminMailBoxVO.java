package kr.co.goodee39.adminmailbox.vo;

public class AdminMailBoxVO {
	
	private int mailNum;
	private String sendDate;
	private String userNum;
	private String content;
	private String isDelete;
	private String userId;
	
	//어드민 메일함 게시판 형식으로 하기위해 추가
	private int start;
	private int count;

	
	
	
	public AdminMailBoxVO() {
	
		this.start = 0;
		this.count = 10;
	}
	public int getMailNum() {
		return mailNum;
	}
	public void setMailNum(int mailNum) {
		this.mailNum = mailNum;
	}
	public String getSendDate() {
		return sendDate;
	}
	public void setSendDate(String sendDate) {
		this.sendDate = sendDate;
	}
	public String getUserNum() {
		return userNum;
	}
	public void setUserNum(String userNum) {
		this.userNum = userNum;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(String isDelete) {
		this.isDelete = isDelete;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	
	
	

}
