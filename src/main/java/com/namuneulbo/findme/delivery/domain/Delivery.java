package com.namuneulbo.findme.delivery.domain;

import java.sql.Date;

public class Delivery {

	private String waybillNo;
	private String userId;
	private String productCategory;
	private String deliveryFee;
	private Date deliveryDate;
	private int deliveryNo;
	
	public Delivery() {}

	public Delivery(String waybillNo, String userId, String productCategory, String deliveryFee, Date deliveryDate,
			int deliveryNo) {
		super();
		this.waybillNo = waybillNo;
		this.userId = userId;
		this.productCategory = productCategory;
		this.deliveryFee = deliveryFee;
		this.deliveryDate = deliveryDate;
		this.deliveryNo = deliveryNo;
	}

	public String getWaybillNo() {
		return waybillNo;
	}

	public void setWaybillNo(String waybillNo) {
		this.waybillNo = waybillNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public String getDeliveryFee() {
		return deliveryFee;
	}

	public void setDeliveryFee(String deliveryFee) {
		this.deliveryFee = deliveryFee;
	}

	public Date getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	public int getDeliveryNo() {
		return deliveryNo;
	}

	public void setDeliveryNo(int deliveryNo) {
		this.deliveryNo = deliveryNo;
	}

	@Override
	public String toString() {
		return "Delivery [운송장번호=" + waybillNo + ", 회원아이디=" + userId + ", 상품종류=" + productCategory
				+ ", 배송료=" + deliveryFee + ", 택배신청날짜=" + deliveryDate + ", 택배번호=" + deliveryNo
				+ "]";
	}
	
}