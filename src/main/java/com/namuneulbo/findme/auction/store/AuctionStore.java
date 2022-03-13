package com.namuneulbo.findme.auction.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.namuneulbo.findme.auction.domain.Auction;
import com.namuneulbo.findme.common.PageInfo;

public interface AuctionStore {

	public int selectListCount(SqlSession sqlSession);
	public int selectListCountBySort(SqlSession sqlSession, Auction auction);
	public int selectTargetCount(SqlSession sqlSession);
	public List<Auction> selectAll(SqlSession sqlSession, PageInfo pi);
	public List<Auction> selectAllPost(SqlSession sqlSession, PageInfo pi);
	public List<Auction> selectTarget(SqlSession sqlSession, PageInfo pi);
	public List<Auction> selectAllById(SqlSession sqlSession, PageInfo pi, String userId);
	public Auction selectOneByNo(SqlSession sqlSession, int auctionNo);
	public int insertAuction(SqlSession sqlSession, Auction auction);
	public int updateLike(SqlSession sqlSession, Auction auction);
	public int updateBid(SqlSession sqlSession, Auction auction);
	public int hidePost(SqlSession sqlSession, int foundPostNo);
}
