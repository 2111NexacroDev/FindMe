package com.namuneulbo.findme.auction.service;

import java.util.List;

import com.namuneulbo.findme.auction.domain.Auction;
import com.namuneulbo.findme.common.PageInfo;

public interface AuctionService {
	public int getListCount();
	public int getListCountBySort(Auction auction);
	public int getTargetCount();
	public List<Auction> printAll(PageInfo pi);
	public List<Auction> printTarget(PageInfo pi);
	public List<Auction> printAllById(PageInfo pi, String userId);
	public List<Auction> printAllBySort(PageInfo pi);
	public Auction printOneAuction(int auctionNo);
	public int registAuction(Auction auction);
	public int likeOneAuction(Auction auction);
	public int applyBid(Auction auction);
	public int hidePost(int foundPostNo);
}
