package kr.co.goodee39.vo;

public class UserMvreviewVO {
	
	// rvRate int 맞는지 확인 필요함
	
	private int rvNum;
	private int rvRate;
	private String rvComment;
	private String rvLike;
	private String rvDate;
	private String rvIsdelete;
	
	public int getRvNum() {
		return rvNum;
	}
	public int getRvRate() {
		return rvRate;
	}
	public String getRvComment() {
		return rvComment;
	}
	public String getRvLike() {
		return rvLike;
	}
	public String getRvDate() {
		return rvDate;
	}
	public String getRvIsdelete() {
		return rvIsdelete;
	}
	public void setRvNum(int rvNum) {
		this.rvNum = rvNum;
	}
	public void setRvRate(int rvRate) {
		this.rvRate = rvRate;
	}
	public void setRvComment(String rvComment) {
		this.rvComment = rvComment;
	}
	public void setRvLike(String rvLike) {
		this.rvLike = rvLike;
	}
	public void setRvDate(String rvDate) {
		this.rvDate = rvDate;
	}
	public void setRvIsdelete(String rvIsdelete) {
		this.rvIsdelete = rvIsdelete;
	}
}
