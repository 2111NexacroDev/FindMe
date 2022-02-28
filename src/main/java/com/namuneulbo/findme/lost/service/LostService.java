package com.namuneulbo.findme.lost.service;

import java.util.List;

import com.namuneulbo.findme.common.PageInfo;
import com.namuneulbo.findme.found.domain.Found;
import com.namuneulbo.findme.lost.domain.Lost;
import com.namuneulbo.findme.user.domain.User;

public interface LostService {
	public int getListCount();
	public int registerLost(Lost lost);
	
	public List<Lost> printAll(PageInfo pi);
	
	public List<Lost> lostListView(User user);
	public int getListCountBySort(Lost lost);
	public Lost printOneLost(int lostPostNo); 
	
	//정렬
	public List<Lost> printAllBySort(PageInfo pi);
}
