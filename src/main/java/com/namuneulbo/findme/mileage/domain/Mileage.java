package com.namuneulbo.findme.mileage.domain;

public class Mileage {
	private int mileageNo;
	private String userId;
	private int mileage;
	private String mileageDate;
	private String mileageUseDate;
	private String mileageType;
	
	public int getMileageNo() {
		return mileageNo;
	}
	public void setMileageNo(int mileageNo) {
		this.mileageNo = mileageNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public String getMileageDate() {
		return mileageDate;
	}
	public void setMileageDate(String mileageDate) {
		this.mileageDate = mileageDate;
	}
	public String getMileageUseDate() {
		return mileageUseDate;
	}
	public void setMileageUseDate(String mileageUseDate) {
		this.mileageUseDate = mileageUseDate;
	}
	public String getMileageType() {
		return mileageType;
	}
	public void setMileageType(String mileageType) {
		this.mileageType = mileageType;
	}
	
	@Override
	public String toString() {
		return "Mileage [mileageNo=" + mileageNo + ", userId=" + userId + ", mileage=" + mileage + ", mileageDate="
				+ mileageDate + ", mileageUseDate=" + mileageUseDate + ", mileageType=" + mileageType + "]";
	}
	
}
