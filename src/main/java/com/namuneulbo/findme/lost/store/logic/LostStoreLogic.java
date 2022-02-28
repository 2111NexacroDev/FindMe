package com.namuneulbo.findme.lost.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.namuneulbo.findme.common.PageInfo;
import com.namuneulbo.findme.lost.domain.Lost;
import com.namuneulbo.findme.lost.store.LostStore;
import com.namuneulbo.findme.user.domain.User;

@Repository
public class LostStoreLogic implements LostStore {

	@Override
	public int selectListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("LostMapper.selectListCount");
		return totalCount;
	}

	@Override
	public int insertLost(SqlSession session, Lost lost) {
		int result = session.insert("LostMapper.insertLost", lost);
		return result;
	}

	@Override
	public List<Lost> selectAll(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Lost> lList = sqlSession.selectList("LostMapper.selectAllList", pi, rowBounds);
		return lList;
	}

	@Override
	public List<Lost> selectLostList(SqlSession sqlSession, User user) {
		List<Lost> lList = sqlSession.selectList("LostMapper.selectLostList", user);
		return lList;
	}

	@Override
	public int selectListCountBySort(SqlSession sqlSession, Lost lost) {
		int totalCount = sqlSession.selectOne("LostMapper.selectListCountBySort", lost);
		return totalCount;
	}

	@Override
	public List<Lost> selectAllPost(SqlSession sqlSession, PageInfo pi) {
		List<Lost> lList = sqlSession.selectList("LostMapper.selectAll", pi);
		return lList;
	}

	@Override
	public Lost selectOneByNo(SqlSession sqlSession, int lostPostNo) {
		Lost lost = sqlSession.selectOne("LostMapper.selectOneByNo", lostPostNo);
		return lost;
	}
}
