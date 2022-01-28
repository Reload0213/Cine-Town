package kr.co.goodee39.goodsReview.vo;

public class goodsReviewVO {
private int grNum;
private int gdsNum;
private int userNum;
private int grScore;
private String userName;
private String grDate;
private String grComment;
private String grLike;
private String grIsdelete;
private String grTitle;


public int getGrScore() {
	return grScore;
}
public void setGrScore(int grScore) {
	this.grScore = grScore;
}
public String getGrTitle() {
	return grTitle;
}
public void setGrTitle(String grTitle) {
	this.grTitle = grTitle;
}
public int getUserNum() {
	return userNum;
}
public void setUserNum(int userNum) {
	this.userNum = userNum;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public int getGrNum() {
	return grNum;
}
public void setGrNum(int grNum) {
	this.grNum = grNum;
}
public int getGdsNum() {
	return gdsNum;
}
public void setGdsNum(int gdsNum) {
	this.gdsNum = gdsNum;
}
public String getGrDate() {
	return grDate;
}
public void setGrDate(String grDate) {
	this.grDate = grDate;
}
public String getGrComment() {
	return grComment;
}
public void setGrComment(String grComment) {
	this.grComment = grComment;
}
public String getGrLike() {
	return grLike;
}
public void setGrLike(String grLike) {
	this.grLike = grLike;
}
public String getGrIsdelete() {
	return grIsdelete;
}
public void setGrIsdelete(String grIsdelete) {
	this.grIsdelete = grIsdelete;
}

}
