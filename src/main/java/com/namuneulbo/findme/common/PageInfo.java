package com.namuneulbo.findme.common;

public class PageInfo {
	private int currentPage;
	private int boardLimit;
	private int naviLimit;
	private int startNavi;
	private int endNavi;
	private int totalCount;
	private int maxPage;
	private String hash; //추가된것
	private int subwayLine; //추가된것
	private String dateOrder; //추가된것
	private String foundProcessStatus; //추가된것
	private String lostProcessStatus; //추가된것
	private String auctionCategory; // 경매 검색
	private String auctionOrder; // 경매 검색

	public PageInfo() {
	}

	public PageInfo(int currentPage, int boardLimit, int naviLimit, int startNavi, int endNavi, int totalCount,
			int maxPage) {
		super();
		this.currentPage = currentPage;
		this.boardLimit = boardLimit;
		this.naviLimit = naviLimit;
		this.startNavi = startNavi;
		this.endNavi = endNavi;
		this.totalCount = totalCount;
		this.maxPage = maxPage;
	}
	

	public PageInfo(int currentPage, int boardLimit, int naviLimit, int startNavi, int endNavi, int totalCount,
			int maxPage, String hash, int subwayLine, String dateOrder, String foundProcessStatus,
			String lostProcessStatus) {
		super();
		this.currentPage = currentPage;
		this.boardLimit = boardLimit;
		this.naviLimit = naviLimit;
		this.startNavi = startNavi;
		this.endNavi = endNavi;
		this.totalCount = totalCount;
		this.maxPage = maxPage;
		this.hash = hash;
		this.subwayLine = subwayLine;
		this.dateOrder = dateOrder;
		this.foundProcessStatus = foundProcessStatus;
		this.lostProcessStatus = lostProcessStatus;
	}	

	public PageInfo(int currentPage, int boardLimit, int naviLimit, int startNavi, int endNavi, int totalCount,
			int maxPage, String auctionCategory, String auctionOrder) {
		super();
		this.currentPage = currentPage;
		this.boardLimit = boardLimit;
		this.naviLimit = naviLimit;
		this.startNavi = startNavi;
		this.endNavi = endNavi;
		this.totalCount = totalCount;
		this.maxPage = maxPage;
		this.auctionCategory = auctionCategory;
		this.auctionOrder = auctionOrder;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getBoardLimit() {
		return boardLimit;
	}

	public void setBoardLimit(int boardLimit) {
		this.boardLimit = boardLimit;
	}

	public int getNaviLimit() {
		return naviLimit;
	}

	public void setNaviLimit(int naviLimit) {
		this.naviLimit = naviLimit;
	}

	public int getStartNavi() {
		return startNavi;
	}

	public void setStartNavi(int startNavi) {
		this.startNavi = startNavi;
	}

	public int getEndNavi() {
		return endNavi;
	}

	public void setEndNavi(int endNavi) {
		this.endNavi = endNavi;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public String getHash() {
		return hash;
	}

	public void setHash(String hash) {
		this.hash = hash;
	}

	public int getSubwayLine() {
		return subwayLine;
	}

	public void setSubwayLine(int subwayLine) {
		this.subwayLine = subwayLine;
	}

	public String getDateOrder() {
		return dateOrder;
	}

	public void setDateOrder(String dateOrder) {
		this.dateOrder = dateOrder;
	}

	public String getFoundProcessStatus() {
		return foundProcessStatus;
	}

	public void setFoundProcessStatus(String foundProcessStatus) {
		this.foundProcessStatus = foundProcessStatus;
	}

	public String getLostProcessStatus() {
		return lostProcessStatus;
	}

	public void setLostProcessStatus(String lostProcessStatus) {
		this.lostProcessStatus = lostProcessStatus;
	}

	public String getAuctionCategory() {
		return auctionCategory;
	}

	public void setAuctionCategory(String auctionCategory) {
		this.auctionCategory = auctionCategory;
	}

	public String getAuctionOrder() {
		return auctionOrder;
	}

	public void setAuctionOrder(String auctionOrder) {
		this.auctionOrder = auctionOrder;
	}
}
