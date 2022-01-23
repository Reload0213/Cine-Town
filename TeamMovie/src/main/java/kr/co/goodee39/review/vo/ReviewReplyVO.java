package kr.co.goodee39.review.vo;

public class ReviewReplyVO {
	
	private int rpNum;
	private String rpDate;
	private String rpComment;
	private String rpIsdelete;
	private String rpLike;
	
	public int getRpNum() {
		return rpNum;
	}
	public String getRpDate() {
		return rpDate;
	}
	public String getRpComment() {
		return rpComment;
	}
	public String getRpIsdelete() {
		return rpIsdelete;
	}
	public String getRpLike() {
		return rpLike;
	}
	public void setRpNum(int rpNum) {
		this.rpNum = rpNum;
	}
	public void setRpDate(String rpDate) {
		this.rpDate = rpDate;
	}
	public void setRpComment(String rpComment) {
		this.rpComment = rpComment;
	}
	public void setRpIsdelete(String rpIsdelete) {
		this.rpIsdelete = rpIsdelete;
	}
	public void setRpLike(String rpLike) {
		this.rpLike = rpLike;
	}
}
