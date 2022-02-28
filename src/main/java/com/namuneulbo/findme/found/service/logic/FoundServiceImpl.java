package com.namuneulbo.findme.found.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.namuneulbo.findme.common.PageInfo;
import com.namuneulbo.findme.found.domain.Found;
import com.namuneulbo.findme.found.service.FoundService;
import com.namuneulbo.findme.found.store.FoundStore;
import com.namuneulbo.findme.user.domain.User;

@Service
public class FoundServiceImpl implements FoundService {
	
	@Autowired
	private FoundStore fStore;
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int registerFound(Found found) {
		int result = fStore.insertFound(sqlSession, found);
		return result;
	}

	@Override
	public List<Found> printAll(PageInfo pi) {
		List<Found> fList = fStore.selectAll(sqlSession, pi);
		return fList;
	}

	@Override
	public int getListCount() {
		int totalCount = fStore.selectListCount(sqlSession);
		return totalCount;
	}
	
	@Override
	public int getListCountBySort(Found found) {
		int totalCount = fStore.selectListCountBySort(sqlSession, found);
		return totalCount;
	}
	
	@Override
	public List<Found> foundListView(User user) {
		List<Found> fList = fStore.selectFoundList(sqlSession, user);
		return fList;
	}	

	@Override
	public List<Found> printAllBySort(PageInfo pi) {
		List<Found>fList = fStore.selectAllPost(sqlSession, pi);
		return fList;
	}

	@Override
	public Found printOneFound(int foundPostNo) {
		Found found = fStore.selectOneByNo(sqlSession, foundPostNo);
		return found;
	}

	@Override
	public int requestDelivery(Found found) {
		int result = fStore.updateRequest(sqlSession, found);
		return result;
	}

	@Override
	public int foundModify(Found found) {
		int result = fStore.updateFound(sqlSession, found);
		return result;
	}

	@Override
	public int getListCountByHash(Found found) {
		int totalCount = fStore.selectListCountByHash(sqlSession, found);
		return totalCount;
	}
}
