package com.namuneulbo.findme.auction.domain;

import java.sql.Date;
import java.util.List;

import com.namuneulbo.findme.found.domain.Found;

public class Auction {
	private int auctionNo;
	private Date auctionBeginDate;
	private Date auctionRemainingTime;
	private Date auctionEndDate;
	private int auctionMaxprice;
	private int auctionStartprice;
	private String auctionPostStatus;
	private String auctionImg;
	private int auctionFavor;
	private String auctionCategory;
	private String auctionUserId;
	private Found found;

	public Auction() {
	}

	public Auction(int auctionNo, Date auctionBeginDate, Date auctionRemainingTime, Date auctionEndDate,
			int auctionMaxprice, int auctionStartprice, String auctionPostStatus, String auctionImg, int auctionFavor,
			String auctionCategory, String auctionUserId, Found found) {
		super();
		this.auctionNo = auctionNo;
		this.auctionBeginDate = auctionBeginDate;
		this.auctionRemainingTime = auctionRemainingTime;
		this.auctionEndDate = auctionEndDate;
		this.auctionMaxprice = auctionMaxprice;
		this.auctionStartprice = auctionStartprice;
		this.auctionPostStatus = auctionPostStatus;
		this.auctionImg = auctionImg;
		this.auctionFavor = auctionFavor;
		this.auctionCategory = auctionCategory;
		this.auctionUserId = auctionUserId;
		this.found = found;
	}

	public int getAuctionNo() {
		return auctionNo;
	}

	public void setAuctionNo(int auctionNo) {
		this.auctionNo = auctionNo;
	}

	public Date getAuctionBeginDate() {
		return auctionBeginDate;
	}

	public void setAuctionBeginDate(Date auctionBeginDate) {
		this.auctionBeginDate = auctionBeginDate;
	}

	public Date getAuctionRemainingTime() {
		return auctionRemainingTime;
	}

	public void setAuctionRemainingTime(Date auctionRemainingTime) {
		this.auctionRemainingTime = auctionRemainingTime;
	}

	public Date getAuctionEndDate() {
		return auctionEndDate;
	}

	public void setAuctionEndDate(Date auctionEndDate) {
		this.auctionEndDate = auctionEndDate;
	}

	public int getAuctionMaxprice() {
		return auctionMaxprice;
	}

	public void setAuctionMaxprice(int auctionMaxprice) {
		this.auctionMaxprice = auctionMaxprice;
	}

	public int getAuctionStartprice() {
		return auctionStartprice;
	}

	public void setAuctionStartprice(int auctionStartprice) {
		this.auctionStartprice = auctionStartprice;
	}

	public String getAuctionPostStatus() {
		return auctionPostStatus;
	}

	public void setAuctionPostStatus(String auctionPostStatus) {
		this.auctionPostStatus = auctionPostStatus;
	}

	public String getAuctionImg() {
		return auctionImg;
	}

	public void setAuctionImg(String auctionImg) {
		this.auctionImg = auctionImg;
	}

	public int getAuctionFavor() {
		return auctionFavor;
	}

	public void setAuctionFavor(int auctionFavor) {
		this.auctionFavor = auctionFavor;
	}

	public String getAuctionCategory() {
		return auctionCategory;
	}

	public void setAuctionCategory(String auctionCategory) {
		this.auctionCategory = auctionCategory;
	}

	public String getAuctionUserId() {
		return auctionUserId;
	}

	public void setAuctionUserId(String auctionUserId) {
		this.auctionUserId = auctionUserId;
	}

	public Found getFound() {
		return found;
	}

	public void setFound(Found found) {
		this.found = found;
	}
}
