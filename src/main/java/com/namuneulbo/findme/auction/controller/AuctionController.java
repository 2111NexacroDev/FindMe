package com.namuneulbo.findme.auction.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.namuneulbo.findme.auction.domain.Auction;
import com.namuneulbo.findme.auction.service.AuctionService;
import com.namuneulbo.findme.common.PageInfo;
import com.namuneulbo.findme.common.Pagination;
import com.namuneulbo.findme.user.domain.User;

@Controller
public class AuctionController {

	@Autowired
	private AuctionService aService;

	@RequestMapping(value = "/auction/guide.do")
	public String auctionGuideView() {
		return "auction/guide";
	}

	// 관리자 경매대상물품 조회
	@RequestMapping(value = "/auction/adminAuction.do", method = RequestMethod.GET)
	public String auctionAdminView(
			Model model, 
			@ModelAttribute Auction auction, 
			@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int totalCount = aService.getTargetCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		List<Auction> aList = aService.printTarget(pi);
		if (!aList.isEmpty()) {
			model.addAttribute("aList", aList);
			model.addAttribute("pi", pi);
			System.out.println(aList);
			return "auction/adminAuctionList";
		} else {
			System.out.println("데이터없음");
			return null;
		}
	}
	
	// 경매 등록
	@ResponseBody
	@RequestMapping(value="/auction/regist.do", method = RequestMethod.GET)
	public String registAuction(
			Model model,
			@ModelAttribute Auction auction,
			@RequestParam("auctionNo") int auctionNo,
			@RequestParam("auctionStartprice") int auctionStartprice) {
		auction.setAuctionNo(auctionNo);
		auction.setAuctionStartprice(auctionStartprice);
		int result = aService.registAuction(auction);
		
		// 경매 등록 시에도 습득물 리스트와 경매대상 리스트에 보이지 않아야하므로
		// 숨김과 동일한 로직 추가
		int result2 = aService.hidePost(auctionNo);
		
		if (result > 0 && result2 > 0) {
			return "success";
		} else {
			return "error";
		}
	}

	// 경매리스트 조회
	@RequestMapping(value = "/auction/list.do", method = RequestMethod.GET)
	public String auctionListPrint(
			Model model, 
			@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int totalCount = aService.getListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		List<Auction> aList = aService.printAll(pi);
		if (!aList.isEmpty()) {
			model.addAttribute("aList", aList);
			model.addAttribute("pi", pi);
			return "auction/auctionList";
		} else {
			System.out.println("데이터없음");
			return "auction/auctionList";
		}
	}

	// 경매 물품 상세정보 보기
	@ResponseBody
	@RequestMapping(value = "/auction/auctionDetailView.do", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	public String detailPostView(Model model, 
			@ModelAttribute Auction auction,
			@RequestParam("auctionNo") int auctionNo) {
		auction = aService.printOneAuction(auctionNo);
		if (auction != null) {
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			return gson.toJson(auction);
		} else {
			return null;
		}
	}

	// 다중조건 검색
	@RequestMapping(value="/auction/dynamic.do", method=RequestMethod.POST)
	public String dynamicList(
			Model model
			,@ModelAttribute Auction auction
			,@RequestParam(value="auctionCategory") String auctionCategory
			,@RequestParam(value="auctionOrder") String auctionOrder
			,@RequestParam(value="page", required=false) Integer page) {
		auction.setAuctionCategory(auctionCategory);
		int currentPage = (page != null) ? page : 1;
		int totalCount = aService.getListCountBySort(auction);
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		pi.setAuctionCategory(auctionCategory);
		pi.setAuctionOrder(auctionOrder);
		List<Auction> aList = aService.printAllBySort(pi);
		if(!aList.isEmpty()) {
			model.addAttribute("aList", aList);
			model.addAttribute("pi", pi);
			return "auction/auctionList";
		}else {
			return "redirect:/index.jsp";
		}		
	}
	
	// 개인별 낙찰내역 조회
	@RequestMapping(value = "/mypage/auctionList.do", method = RequestMethod.GET)
	public String mypageAuctionList(
			HttpServletRequest request, 
			Model model, 
			@ModelAttribute User user,
			@RequestParam(value = "page", required = false) Integer page) {
		HttpSession session = request.getSession();
		String userId = ((User) session.getAttribute("loginUser")).getUser_Id();
		int currentPage = (page != null) ? page : 1;
		int totalCount = aService.getListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		List<Auction> aList = aService.printAllById(pi, userId);
		if (!aList.isEmpty()) {
			model.addAttribute("aList", aList);
			model.addAttribute("pi", pi);
			return "auction/myAuctionList";
		}
		else {
			System.out.println("등록된 자료가 없습니다.");
			return "auction/myAuctionList";
		}
	}

	// 하트 클릭 시 좋아요수 업데이트 
	@ResponseBody
	@RequestMapping(value = "/auction/likePost.do", method = RequestMethod.GET)
	public String likePost(
			Model model, 
			@ModelAttribute Auction auction, 
			@RequestParam("auctionNo") int auctionNo,
			@RequestParam("auctionFavor") int auctionFavor) {
		auction.setAuctionNo(auctionNo);
		auction.setAuctionFavor(auctionFavor);
		int result = aService.likeOneAuction(auction);
		if (result > 0) {
			return "success";
		} else {
			return "error";
		}
	}

	// 게시물 숨김 처리
	@ResponseBody
	@RequestMapping(value = "/auction/hidePost.do", method = RequestMethod.GET)
	public String hidePost(
			Model model, 
			@ModelAttribute Auction auction,
			@RequestParam("foundPostNo") int foundPostNo) {
		int result = aService.hidePost(foundPostNo);
		if (result > 0) {
			return "success";
		} else {
			return "error";
		}
	}

	// 입찰신청
	@ResponseBody
	@RequestMapping(value = "/auction/applyBid.do", method = RequestMethod.GET)
	public String applyBid(
			Model model, 
			@ModelAttribute Auction auction, 
			@RequestParam("auctionNo") int auctionNo,
			@RequestParam("auctionMaxprice") int auctionMaxprice, @RequestParam("userId") String userId) {
		auction.setAuctionNo(auctionNo);
		auction.setAuctionMaxprice(auctionMaxprice);
		auction.setAuctionUserId(userId);
		int result = aService.applyBid(auction);
		if (result > 0) {
			return "success";
		} else {
			return "error";
		}
	}

}
