package com.namuneulbo.findme.common;

public class Pagination {
	public static PageInfo getPageInfo(int currentPage, int totalCount) {
		PageInfo pi = null;
		int boardLimit = 8;
		int naviLimit = 10;
		int maxPage;
		int startNavi;
		int endNavi;
		// 21/8 = 2.62 + 0.9 더하고 인트로 짤라버리기
		maxPage = (int)((double)totalCount/boardLimit+0.9); // 3
		// 1<- 1234,         2<- 5678       3<- 9101112
		// 1/4 -> 0.25 -> 1.25 -> 1 1 - > 5 -> 9
		startNavi =  (((int)((double)currentPage/naviLimit+0.9))-1)*naviLimit+1;
		endNavi = startNavi + naviLimit - 1;
		if(maxPage < endNavi) {
			endNavi = maxPage;
		}
		pi = new PageInfo(currentPage, boardLimit, naviLimit, startNavi, endNavi, totalCount, maxPage);
		return pi;
	}
}
