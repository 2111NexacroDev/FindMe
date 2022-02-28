package com.namuneulbo.findme.auction.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.namuneulbo.findme.auction.domain.Auction;
import com.namuneulbo.findme.auction.store.AuctionStore;
import com.namuneulbo.findme.common.PageInfo;

@Repository
public class AuctionStoreLogic implements AuctionStore{
	@Override
	public int selectListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("AuctionMapper.selectListCount");
		return totalCount;
	}
	
	@Override
	public int selectTargetCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("AuctionMapper.selectTargetCount");
		return totalCount;
	}
	
	@Override
	public List<Auction> selectAll(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Auction> aList
		= sqlSession.selectList("AuctionMapper.selectAllList", pi, rowBounds);
		return aList;
	}
	
	@Override
	public List<Auction> selectAllPost(SqlSession sqlSession, PageInfo pi) {
		List<Auction> aList = sqlSession.selectList("AuctionMapper.selectAll", pi);
		return aList;
	}

	@Override
	public List<Auction> selectTarget(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Auction> aList = sqlSession.selectList("AuctionMapper.selectTargetList", pi, rowBounds);
		return aList;
	}

	@Override
	public List<Auction> selectAllById(SqlSession sqlSession, PageInfo pi, String userId) {
		List<Auction> aList = sqlSession.selectList("AuctionMapper.selectAllById", userId);
		return aList;
	}

	@Override
	public Auction selectOneByNo(SqlSession sqlSession, int auctionNo) {
		Auction auction = sqlSession.selectOne("AuctionMapper.selectOneByNo", auctionNo);
		return auction;
	}
	
	@Override
	public int insertAuction(SqlSession sqlSession, Auction auction) {
		int result = sqlSession.insert("AuctionMapper.insertAuction", auction);
		return result;
	}	

	@Override
	public int updateLike(SqlSession sqlSession, Auction auction) {
		int result = sqlSession.update("AuctionMapper.updateLike", auction);
		return result;
	}

	@Override
	public int updateBid(SqlSession sqlSession, Auction auction) {
		int result = sqlSession.update("AuctionMapper.updateBid", auction);
		return result;
	}

	@Override
	public int updateLike(SqlSession sqlSession, int foundPostNo) {
		int result = sqlSession.update("AuctionMapper.blindPost", foundPostNo);
		return result;
	}

	@Override
	public int selectListCountBySort(SqlSession sqlSession, Auction auction) {
		int totalCount = sqlSession.selectOne("AuctionMapper.selectListCountBySort", auction);
		return totalCount;
	}
}
