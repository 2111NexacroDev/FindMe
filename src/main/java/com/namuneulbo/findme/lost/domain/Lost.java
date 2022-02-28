package com.namuneulbo.findme.lost.domain;

import java.sql.Date;

public class Lost {
	private int lostPostNo;
	private String userId;
	private String userName;
	private String lostImg;
	private int lostSubway;
	private int lostStation; //추가된것 : 노선
	private String lostDetail;
	private Date lostDate;
	private Date lostEnrollDate;
	private int lostPostPassword;
	private String lostPostStatus;
	private String lostProcessingStatus;
	private String lostCategory;
	private String nuPhone;
	
	
	public Lost() {}


	public Lost(int lostPostNo, String userId, String userName, String lostImg, int lostSubway, int lostStation,
			String lostDetail, Date lostDate, Date lostEnrollDate, int lostPostPassword, String lostPostStatus,
			String lostProcessingStatus, String lostCategory, String nuPhone) {
		super();
		this.lostPostNo = lostPostNo;
		this.userId = userId;
		this.userName = userName;
		this.lostImg = lostImg;
		this.lostSubway = lostSubway;
		this.lostStation = lostStation;
		this.lostDetail = lostDetail;
		this.lostDate = lostDate;
		this.lostEnrollDate = lostEnrollDate;
		this.lostPostPassword = lostPostPassword;
		this.lostPostStatus = lostPostStatus;
		this.lostProcessingStatus = lostProcessingStatus;
		this.lostCategory = lostCategory;
		this.nuPhone = nuPhone;
	}


	public int getLostPostNo() {
		return lostPostNo;
	}


	public void setLostPostNo(int lostPostNo) {
		this.lostPostNo = lostPostNo;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getLostImg() {
		return lostImg;
	}


	public void setLostImg(String lostImg) {
		this.lostImg = lostImg;
	}


	public int getLostSubway() {
		return lostSubway;
	}


	public void setLostSubway(int lostSubway) {
		this.lostSubway = lostSubway;
	}


	public int getLostStation() {
		return lostStation;
	}


	public void setLostStation(int lostStation) {
		this.lostStation = lostStation;
	}


	public String getLostDetail() {
		return lostDetail;
	}


	public void setLostDetail(String lostDetail) {
		this.lostDetail = lostDetail;
	}


	public Date getLostDate() {
		return lostDate;
	}


	public void setLostDate(Date lostDate) {
		this.lostDate = lostDate;
	}


	public Date getLostEnrollDate() {
		return lostEnrollDate;
	}


	public void setLostEnrollDate(Date lostEnrollDate) {
		this.lostEnrollDate = lostEnrollDate;
	}


	public int getLostPostPassword() {
		return lostPostPassword;
	}


	public void setLostPostPassword(int lostPostPassword) {
		this.lostPostPassword = lostPostPassword;
	}


	public String getLostPostStatus() {
		return lostPostStatus;
	}


	public void setLostPostStatus(String lostPostStatus) {
		this.lostPostStatus = lostPostStatus;
	}


	public String getLostProcessingStatus() {
		return lostProcessingStatus;
	}


	public void setLostProcessingStatus(String lostProcessingStatus) {
		this.lostProcessingStatus = lostProcessingStatus;
	}


	public String getLostCategory() {
		return lostCategory;
	}


	public void setLostCategory(String lostCategory) {
		this.lostCategory = lostCategory;
	}


	public String getNuPhone() {
		return nuPhone;
	}


	public void setNuPhone(String nuPhone) {
		this.nuPhone = nuPhone;
	}


	@Override
	public String toString() {
		return "Lost [lostPostNo=" + lostPostNo + ", userId=" + userId + ", userName=" + userName + ", lostImg="
				+ lostImg + ", lostSubway=" + lostSubway + ", lostStation=" + lostStation + ", lostDetail=" + lostDetail
				+ ", lostDate=" + lostDate + ", lostEnrollDate=" + lostEnrollDate + ", lostPostPassword="
				+ lostPostPassword + ", lostPostStatus=" + lostPostStatus + ", lostProcessingStatus="
				+ lostProcessingStatus + ", lostCategory=" + lostCategory + ", nuPhone=" + nuPhone + "]";
	}
	
	
	
	
}
