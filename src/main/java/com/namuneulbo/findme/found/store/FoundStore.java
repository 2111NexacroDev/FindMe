package com.namuneulbo.findme.found.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.namuneulbo.findme.common.PageInfo;
import com.namuneulbo.findme.found.domain.Found;
import com.namuneulbo.findme.user.domain.User;

public interface FoundStore {

	
	public int selectListCount(SqlSession sqlSession);
	public int selectListCountBySort(SqlSession sqlSession, Found found);
	public int selectListCountByHash(SqlSession sqlSession, Found found);
	public List<Found> selectAll(SqlSession sqlSession, PageInfo pi);
	public List<Found>selectAllPost(SqlSession sqlSession, PageInfo pi);
	public List<Found> selectFoundList(SqlSession sqlSession, User user);
	
	public int insertFound(SqlSession sqlSession, Found found);
	public Found selectOneByNo(SqlSession sqlSession, int foundPostNo);
	public int updateRequest(SqlSession sqlSession, Found found);
	public int updateFound(SqlSession sqlSession, Found found);
	
}
