package com.namuneulbo.findme.found.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.namuneulbo.findme.common.PageInfo;
import com.namuneulbo.findme.found.domain.Found;
import com.namuneulbo.findme.found.store.FoundStore;
import com.namuneulbo.findme.user.domain.User;


@Repository
public class FoundStoreLogic implements FoundStore  {

	@Override
	public int selectListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("FoundMapper.selectListCount");
		return totalCount;
	}
	
	@Override
	public int insertFound(SqlSession session, Found found) {
		int result = session.insert("FoundMapper.insertFound", found);
		return result;
	}

	@Override
	public List<Found> selectAll(SqlSession sqlSession, PageInfo pi) {
		//1-> 1~4
		//2-> 5~8
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Found> fList = sqlSession.selectList("FoundMapper.selectAllList", pi, rowBounds);
		return fList;
	}

	@Override
	public List<Found> selectFoundList(SqlSession sqlSession, User user) {
		List<Found> fList = sqlSession.selectList("FoundMapper.selectFoundList", user);
		return fList;
	}
	
	@Override
	public int selectListCountBySort(SqlSession sqlSession, Found found) {
		int totalCount = sqlSession.selectOne("FoundMapper.selectListCountBySort", found);
		return totalCount;
		
	}
	@Override
	public List<Found> selectAllPost(SqlSession sqlSession, PageInfo pi) {
		List<Found> fList = sqlSession.selectList("FoundMapper.selectAll", pi);
		return fList;
	}	

	@Override
	public Found selectOneByNo(SqlSession sqlSession, int foundPostNo) {
		Found found = sqlSession.selectOne("FoundMapper.selectOneByNo", foundPostNo);
		return found;
	}

	@Override
	public int updateRequest(SqlSession sqlSession, Found found) {
		int result = sqlSession.update("FoundMapper.updateRequest", found);
		return result;
	}

	@Override
	public int updateFound(SqlSession sqlSession, Found found) {
		int result = sqlSession.update("FoundMapper.updateFound", found);
		return result;
	}

	@Override
	public int selectListCountByHash(SqlSession sqlSession, Found found) {
		int totalCount = sqlSession.selectOne("FoundMapper.selectListCountByHash", found);
		return totalCount;
	}
}
