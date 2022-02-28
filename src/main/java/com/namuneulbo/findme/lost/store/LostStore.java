package com.namuneulbo.findme.lost.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.namuneulbo.findme.common.PageInfo;
import com.namuneulbo.findme.found.domain.Found;
import com.namuneulbo.findme.lost.domain.Lost;
import com.namuneulbo.findme.user.domain.User;

public interface LostStore {
	public int selectListCount(SqlSession sqlSession);
	public List<Lost> selectAll(SqlSession sqlSession, PageInfo pi);
	public int insertLost(SqlSession sqlSession, Lost lost);
	
	public List<Lost> selectLostList(SqlSession sqlSession, User user);
	public Lost selectOneByNo(SqlSession sqlSession, int lostPostNo);
	public int selectListCountBySort(SqlSession sqlSession, Lost lost);
	public List<Lost> selectAllPost(SqlSession sqlSession, PageInfo pi);
}
