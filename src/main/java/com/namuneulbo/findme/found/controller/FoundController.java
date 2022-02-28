package com.namuneulbo.findme.found.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.springframework.web.multipart.MultipartFile;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.namuneulbo.findme.common.PageInfo;
import com.namuneulbo.findme.common.Pagination;
import com.namuneulbo.findme.found.domain.Found;
import com.namuneulbo.findme.found.service.FoundService;
import com.namuneulbo.findme.user.domain.User;

@Controller
public class FoundController {
	
	@Autowired
	private FoundService fService;
	
	@RequestMapping(value="/found/report.do")
	public String foundReportView() {
		return "found/report";
	}
	
	@RequestMapping(value="/found/modify.do")
	public String foundReportModify(
			Model model
			,HttpSession session
			,@RequestParam("foundPostNo") int foundPostNo) {
		// 작성했던 데이터 불러와서 화면에 보여주고
		// 업데이트 하는 기능
		String userId = ((User)session.getAttribute("loginUser")).getUser_Id();
		model.addAttribute("userId", userId);
		model.addAttribute("foundPostNo", foundPostNo);
		System.out.println(userId);
		System.out.println(foundPostNo);
		return "found/reportEdit";
	}	
	
	@RequestMapping(value="/found/register.do", method=RequestMethod.POST)
	public String foundRegister(
			Model model
			, @ModelAttribute Found found
			, @RequestParam(value="foundFileUpload", required=false) MultipartFile foundFileUpload
			, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String user_Id = ((User) session.getAttribute("loginUser")).getUser_Id();
		found.setUserId(user_Id);
		found.setFoundStorageCenter("매봉역센터");
		if(!foundFileUpload.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(foundFileUpload, request); // 실제 파일 저장
			if(renameFileName != null) { // 파일 데이터(이름만) 저장
				found.setFoundImg(renameFileName);
			}
		}
		int result = fService.registerFound(found);
		if(result > 0) {
			return "redirect:/index.jsp";
		}else {
			return "";
		}
	}	

	public String saveFile(MultipartFile foundFileUpload, HttpServletRequest request) {
		// 파일 경로
		String root = request.getSession()
							.getServletContext().getRealPath("resources");
		String savePath = root + "\\buploadFiles";
		// 폴더 선택
		File folder = new File(savePath);
		// 폴더 없으면 자동 생성
		if(!folder.exists()) {
			folder.mkdir();
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originalFileName = foundFileUpload.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis()))
				+"."+originalFileName.substring(originalFileName.lastIndexOf(".")+1);
		String filePath = folder + "\\" + renameFileName;
		// 파일 저장
		try {
			foundFileUpload.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 파일명 리턴
		return renameFileName;
	}

	@RequestMapping(value="/found/list.do" , method=RequestMethod.GET)
	public String foundListView(
			Model model
			, @RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int totalCount = fService.getListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		List<Found> fList = fService.printAll(pi);
		if(!fList.isEmpty()) {
			model.addAttribute("fList", fList);
			model.addAttribute("pi", pi);
			return "found/list";
		}else {
			return "redirect:/index.jsp";
		}			
	}	
	
	@RequestMapping(value="/mypage/foundList.do")
	public String myPagefoundListView(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = new User();
		if(session != null) {
			//세션에서 아이디가져오기
	        String user_Id = ((User)session.getAttribute("loginUser")).getUser_Id();
	        user.setUser_Id(user_Id);
			List<Found> fList = fService.foundListView(user);
			model.addAttribute("fList", fList);
			return "found/mypageFoundList";
		}else {
			return "home";
		}
	}
	
	@RequestMapping(value="/found/dynamic.do", method=RequestMethod.POST)
	public String dynamicList(
			Model model
			,@ModelAttribute Found found
			,@RequestParam(value="keyword") String keyword
			,@RequestParam(value="subway") Integer subway
			,@RequestParam(value="date") String date
			,@RequestParam(value="process") String process
			,@RequestParam(value="page", required=false) Integer page) {
		found.setFoundHashtag(keyword);
		found.setFoundStation(subway);
		int currentPage = (page != null) ? page : 1;
		int totalCount = fService.getListCountBySort(found);
		System.out.println(totalCount);
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		pi.setHash(keyword);
		pi.setSubwayLine(subway);
		pi.setDateOrder(date);
		pi.setFoundProcessStatus(process);
		List<Found>fList = fService.printAllBySort(pi);
		if(!fList.isEmpty()) {
			model.addAttribute("fList", fList);
			model.addAttribute("pi", pi);
			return "found/list";
		}else {
			return "redirect:/index.jsp";
		}		
	}
	
	@RequestMapping(value="/found/SearchbyHash.do", method=RequestMethod.GET)
	public String hashSearch(
			Model model
			,@ModelAttribute Found found
			,@RequestParam(value="keyword") String keyword
			,@RequestParam(value="page", required=false) Integer page) {
		System.out.println(keyword);
		found.setFoundHashtag(keyword);
		int currentPage = (page != null) ? page : 1;
		int totalCount = fService.getListCountByHash(found);
		System.out.println(totalCount);
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		pi.setHash(keyword);
		List<Found>fList = fService.printAllBySort(pi);
		if(!fList.isEmpty()) {
			model.addAttribute("fList", fList);
			model.addAttribute("pi", pi);
			return "found/list";
		}else {
			return "redirect:/index.jsp";
		}	
	}

	@ResponseBody
	@RequestMapping(value="/found/foundDetailView.do", method=RequestMethod.GET, produces="application/json; charset=utf-8")
	public String detailPostView(
			Model model
			, @ModelAttribute Found found
			, @RequestParam("foundPostNo") int foundPostNo) {
		found = fService.printOneFound(foundPostNo);
		if(found != null) {
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			return gson.toJson(found);
		}else {
			return null;
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/found/requestDelivery.do", method=RequestMethod.GET)
	public String deliveryRequest(
			Model model
			,@ModelAttribute Found found
			,@RequestParam("userId") String userId
			,@RequestParam("foundPostNo") int foundPostNo) {
		found.setUserId(userId);
		found.setFoundPostNo(foundPostNo);
		found.setFoundDeliveryRequest("Y");
		int result = fService.requestDelivery(found);
		if(result>0) {
			return "success";
		}else {
			return "error";
		}
	}
	
	@RequestMapping(value="/found/update.do", method=RequestMethod.POST)
	public String UpdateRequest(
			Model model
			,@ModelAttribute Found found
			,@RequestParam(value="foundFileUpload", required=false) MultipartFile foundFileUpload
			, HttpServletRequest request) {
		if(!foundFileUpload.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(foundFileUpload, request); // 실제 파일 저장
			if(renameFileName != null) { // 파일 데이터(이름만) 저장
				found.setFoundImg(renameFileName);
			}
		}
		int result = fService.foundModify(found);
		if(result > 0) {
			return "found/list";
		}else {
			return "redirect:/index.jsp";
		}
			
			
		
		
	}
}

