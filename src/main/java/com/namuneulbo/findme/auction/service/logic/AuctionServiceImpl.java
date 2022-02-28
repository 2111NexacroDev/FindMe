package com.namuneulbo.findme.auction.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.namuneulbo.findme.auction.domain.Auction;
import com.namuneulbo.findme.auction.service.AuctionService;
import com.namuneulbo.findme.auction.store.AuctionStore;
import com.namuneulbo.findme.common.PageInfo;

@Service
public class AuctionServiceImpl implements AuctionService {
	
	@Autowired
	private AuctionStore aStore;
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getListCount() {
		int totalCount = aStore.selectListCount(sqlSession);
		return totalCount;
	}		
	
	@Override
	public int getListCountBySort(Auction auction) {
		int totalCount = aStore.selectListCountBySort(sqlSession, auction);
		return totalCount;
	}
	
	@Override
	public int getTargetCount() {
		int totalCount = aStore.selectTargetCount(sqlSession);
		return totalCount;
	}		
	
	@Override
	public List<Auction> printAll(PageInfo pi) {
		List<Auction> aList = aStore.selectAll(sqlSession, pi);
		return aList;
	}

	@Override
	public List<Auction> printTarget(PageInfo pi) {
		List<Auction> aList = aStore.selectTarget(sqlSession, pi);
		return aList;
	}

	@Override
	public List<Auction> printAllById(PageInfo pi, String userId) {
		List<Auction> aList = aStore.selectAllById(sqlSession, pi, userId);
		return aList;
	}
	
	@Override
	public List<Auction> printAllBySort(PageInfo pi) {
		List<Auction> aList = aStore.selectAllPost(sqlSession, pi);
		return aList;
	}

	@Override
	public Auction printOneAuction(int auctionNo) {
		Auction auction = aStore.selectOneByNo(sqlSession, auctionNo);
		return auction;
	}
	
	@Override
	public int registAuction(Auction auction) {
		int result = aStore.insertAuction(sqlSession, auction);
		return result;
	}

	@Override
	public int likeOneAuction(Auction auction) {
		int result = aStore.updateLike(sqlSession, auction);
		return result;
	}

	@Override
	public int applyBid(Auction auction) {
		int result = aStore.updateBid(sqlSession, auction);
		return result;
	}

	@Override
	public int hidePost(int foundPostNo) {
		int result = aStore.updateLike(sqlSession, foundPostNo);
		return result;
	}
}
																