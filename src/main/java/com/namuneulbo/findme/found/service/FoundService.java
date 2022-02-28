package com.namuneulbo.findme.found.service;

import java.util.List;

import com.namuneulbo.findme.common.PageInfo;
import com.namuneulbo.findme.found.domain.Found;
import com.namuneulbo.findme.user.domain.User;

public interface FoundService {
	
	public int getListCount();
	public int getListCountBySort(Found found);
	public int getListCountByHash(Found found);
	public int foundModify(Found found);
	public List<Found> printAll(PageInfo pi);
	public List<Found> printAllBySort(PageInfo pi);
	public List<Found> foundListView(User user);
	public Found printOneFound(int foundPostNo);
	public int registerFound(Found found);
	public int requestDelivery(Found found);
}
