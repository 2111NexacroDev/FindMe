package com.namuneulbo.findme.found.domain;

import java.sql.Date;

public class Found {
	private int foundPostNo;
	private String userId;
	private String userName;
	private String foundImg;
	private int foundStation;
	private String foundCategory;
	private String foundHashtag;
	private Date foundDate;
	private Date foundEnrollDate;
	private String foundProcessingStatus;
	private String foundStorageCenter;
	private int foundPostPassword;
	private String foundPostStatus;
	private String foundDeliveryRequest;
	private String nuPhone;

	public Found() {
	}

	public Found(int foundPostNo, String userId, String userName, String foundImg, int foundStation,
			String foundCategory, String foundHashtag, Date foundDate, Date foundEnrollDate,
			String foundProcessingStatus, String foundStorageCenter, int foundPostPassword, String foundPostStatus,
			String foundDeliveryRequest, String nuPhone) {
		super();
		this.foundPostNo = foundPostNo;
		this.userId = userId;
		this.userName = userName;
		this.foundImg = foundImg;
		this.foundStation = foundStation;
		this.foundCategory = foundCategory;
		this.foundHashtag = foundHashtag;
		this.foundDate = foundDate;
		this.foundEnrollDate = foundEnrollDate;
		this.foundProcessingStatus = foundProcessingStatus;
		this.foundStorageCenter = foundStorageCenter;
		this.foundPostPassword = foundPostPassword;
		this.foundPostStatus = foundPostStatus;
		this.foundDeliveryRequest = foundDeliveryRequest;
		this.nuPhone = nuPhone;
	}

	public int getFoundPostNo() {
		return foundPostNo;
	}

	public void setFoundPostNo(int foundPostNo) {
		this.foundPostNo = foundPostNo;
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

	public String getFoundImg() {
		return foundImg;
	}

	public void setFoundImg(String foundImg) {
		this.foundImg = foundImg;
	}

	public int getFoundStation() {
		return foundStation;
	}

	public void setFoundStation(int foundStation) {
		this.foundStation = foundStation;
	}

	public String getFoundCategory() {
		return foundCategory;
	}

	public void setFoundCategory(String foundCategory) {
		this.foundCategory = foundCategory;
	}

	public String getFoundHashtag() {
		return foundHashtag;
	}

	public void setFoundHashtag(String foundHashtag) {
		this.foundHashtag = foundHashtag;
	}

	public Date getFoundDate() {
		return foundDate;
	}

	public void setFoundDate(Date foundDate) {
		this.foundDate = foundDate;
	}

	public Date getFoundEnrollDate() {
		return foundEnrollDate;
	}

	public void setFoundEnrollDate(Date foundEnrollDate) {
		this.foundEnrollDate = foundEnrollDate;
	}

	public String getFoundProcessingStatus() {
		return foundProcessingStatus;
	}

	public void setFoundProcessingStatus(String foundProcessingStatus) {
		this.foundProcessingStatus = foundProcessingStatus;
	}

	public String getFoundStorageCenter() {
		return foundStorageCenter;
	}

	public void setFoundStorageCenter(String foundStorageCenter) {
		this.foundStorageCenter = foundStorageCenter;
	}

	public int getFoundPostPassword() {
		return foundPostPassword;
	}

	public void setFoundPostPassword(int foundPostPassword) {
		this.foundPostPassword = foundPostPassword;
	}

	public String getFoundPostStatus() {
		return foundPostStatus;
	}

	public void setFoundPostStatus(String foundPostStatus) {
		this.foundPostStatus = foundPostStatus;
	}

	public String getFoundDeliveryRequest() {
		return foundDeliveryRequest;
	}

	public void setFoundDeliveryRequest(String foundDeliveryRequest) {
		this.foundDeliveryRequest = foundDeliveryRequest;
	}

	public String getNuPhone() {
		return nuPhone;
	}

	public void setNuPhone(String nuPhone) {
		this.nuPhone = nuPhone;
	}

	@Override
	public String toString() {
		return "Found [습득물번호=" + foundPostNo + ", 회원아이디=" + userId + ", 습득자명=" + userName + ", 습득물사진코드=" + foundImg
				+ ", 습득노선=" + foundStation + ", 습득물종류=" + foundCategory + ", 습득물해시태그=" + foundHashtag + ", 습득날짜="
				+ foundDate + ", 습득물등록일=" + foundEnrollDate + ", 처리상태=" + foundProcessingStatus + ", 보관센터="
				+ foundStorageCenter + ", 습득글 비밀번호=" + foundPostPassword + ", 게시글상태=" + foundPostStatus + ", 택배서비스 신청="
				+ foundDeliveryRequest + ", 연락처(비회원)=" + nuPhone + "]";
	}
}
