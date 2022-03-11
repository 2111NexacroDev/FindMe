package com.namuneulbo.findme.lost.controller;

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
import com.namuneulbo.findme.lost.domain.Lost;
import com.namuneulbo.findme.lost.service.LostService;
import com.namuneulbo.findme.user.domain.User;

// 분실물 컨트롤러
@Controller
public class LostController {

	@Autowired
	private LostService lService;

	// found controller보시고 대조하시면서 필요한 로직 가져다 고치시면 됩니다~

	@RequestMapping(value = "/lost/report.do")
	public String lostReportView() {
		return "lost/report";
	}

	@RequestMapping(value = "/lost/register.do")
	public String lostRegister(
			Model model, 
			@ModelAttribute Lost lost
			, @RequestParam(value="lostFileUpload", required=false) MultipartFile lostFileUpload
			, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String user_Id = ((User) session.getAttribute("loginUser")).getUser_Id();
		lost.setUserId(user_Id);
		if(!lostFileUpload.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(lostFileUpload, request); // 실제 파일 저장
			if(renameFileName != null) { // 파일 데이터(이름만) 저장
				lost.setLostImg(renameFileName);
			}
		}
		int result = lService.registerLost(lost);
		if (result > 0) {
			return "redirect:/index.jsp";
		} else {
			return "";
		}
	}

	@RequestMapping(value = "/lost/list.do", method = RequestMethod.GET)
	public String lostListView(
			Model model, 
			@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int totalCount = lService.getListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		List<Lost> lList = lService.printAll(pi);
		if (!lList.isEmpty()) {
			model.addAttribute("lList", lList);
			model.addAttribute("pi", pi);
			return "lost/list";
		} else {
			return "redirect:/index.jsp";
		}
	}

	@RequestMapping(value = "/mypage/lostList.do")
	public String myPageLostListView(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = new User();
		if (session != null) {
			String user_Id = ((User) session.getAttribute("loginUser")).getUser_Id();
			user.setUser_Id(user_Id);
			List<Lost> lList = lService.lostListView(user);
			model.addAttribute("lList", lList);
			return "lost/mypageLostList";
		} else {
			return "home";
		}
	}

	@ResponseBody
	@RequestMapping(value = "/lost/lostDetailView.do", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	public String detailPostView(Model model, @ModelAttribute Lost lost, @RequestParam("lostPostNo") int lostPostNo) {
		lost = lService.printOneLost(lostPostNo);
		if (lost != null) {
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			return gson.toJson(lost);
		} else {
			return null;
		}
	}
	

	@RequestMapping(value = "/lost/dynamic.do", method = RequestMethod.POST)
	public String dynamicList(Model model, @ModelAttribute Lost lost,
			@RequestParam(value = "subway", required = false) Integer subway,
			@RequestParam(value = "date", required = false) String date,
			@RequestParam(value = "process", required = false) String process,
			@RequestParam(value = "page", required = false) Integer page) {
		lost.setLostStation(subway);
		int currentPage = (page != null) ? page : 1;
		int totalCount = lService.getListCountBySort(lost);
		System.out.println(totalCount);
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		pi.setSubwayLine(subway);
		pi.setDateOrder(date);
		pi.setLostProcessStatus(process);
		List<Lost> lList = lService.printAllBySort(pi);
		if (!lList.isEmpty()) {
			model.addAttribute("lList", lList);
			model.addAttribute("pi", pi);
			return "lost/list";
		} else {
			return "lost/list";
		}
	}
	
	public String saveFile(MultipartFile lostFileUpload, HttpServletRequest request) {
		// 파일 경로
		String root = request.getSession()
							.getServletContext().getRealPath("resources");
		String savePath = root + "\\buploadFiles2";
		// 폴더 선택
		File folder = new File(savePath);
		// 폴더 없으면 자동 생성
		if(!folder.exists()) {
			folder.mkdir();
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originalFileName = lostFileUpload.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis()))
				+"."+originalFileName.substring(originalFileName.lastIndexOf(".")+1);
		String filePath = folder + "\\" + renameFileName;
		// 파일 저장
		try {
			lostFileUpload.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 파일명 리턴
		return renameFileName;
	}
}
