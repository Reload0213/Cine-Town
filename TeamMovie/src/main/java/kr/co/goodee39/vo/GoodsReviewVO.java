package kr.co.goodee39.vo;

public class GoodsReviewVO {
	
	private int grNum;
	private String grDate;
	private String grComment;
	private String grIsdelete;
	private int grLike;
	
	public int getGrNum() {
		return grNum;
	}
	public String getGrDate() {
		return grDate;
	}
	public String getGrComment() {
		return grComment;
	}
	public String getGrIsdelete() {
		return grIsdelete;
	}
	public int getGrLike() {
		return grLike;
	}
	public void setGrNum(int grNum) {
		this.grNum = grNum;
	}
	public void setGrDate(String grDate) {
		this.grDate = grDate;
	}
	public void setGrComment(String grComment) {
		this.grComment = grComment;
	}
	public void setGrIsdelete(String grIsdelete) {
		this.grIsdelete = grIsdelete;
	}
	public void setGrLike(int grLike) {
		this.grLike = grLike;
	}
}
