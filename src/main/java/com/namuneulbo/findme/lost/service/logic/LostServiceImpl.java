package com.namuneulbo.findme.lost.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.namuneulbo.findme.common.PageInfo;
import com.namuneulbo.findme.found.domain.Found;
import com.namuneulbo.findme.lost.domain.Lost;
import com.namuneulbo.findme.lost.service.LostService;
import com.namuneulbo.findme.lost.store.LostStore;
import com.namuneulbo.findme.user.domain.User;

@Service
public class LostServiceImpl implements LostService {
	
	@Autowired
	private LostStore lStore;
	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public int registerLost(Lost lost) {
		int result = lStore.insertLost(sqlSession, lost);
		return result;
	}


	@Override
	public List<Lost> printAll(PageInfo pi) {
		List<Lost> lList = lStore.selectAll(sqlSession, pi);
		return lList;
	}


	@Override
	public int getListCount() {
		int totalCount = lStore.selectListCount(sqlSession);
		return totalCount;
	}	

	@Override
	public Lost printOneLost(int lostPostNo) {
		Lost lost = lStore.selectOneByNo(sqlSession, lostPostNo);
		return lost;
	}

	@Override
	public List<Lost> lostListView(User user) {
		List<Lost> lList = lStore.selectLostList(sqlSession, user);
		return lList;
	}


	@Override
	public int getListCountBySort(Lost lost) {
		int totalCount = lStore.selectListCountBySort(sqlSession, lost);
		return totalCount;
	}

	
	@Override
	public List<Lost> printAllBySort(PageInfo pi) {
		List<Lost>lList = lStore.selectAllPost(sqlSession, pi);
		return lList;
	}
}
