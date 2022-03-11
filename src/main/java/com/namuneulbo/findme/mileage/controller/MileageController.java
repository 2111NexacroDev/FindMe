package com.namuneulbo.findme.mileage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.namuneulbo.findme.mileage.domain.Mileage;
import com.namuneulbo.findme.mileage.service.MileageService;
import com.namuneulbo.findme.user.domain.User;

// 마일리지 컨트롤러
@Controller
public class MileageController {
	@Autowired
	MileageService mService;
	
	@RequestMapping(value="/mypage/mileage.do")
	public String myPageMileageView(Model model, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		User user = new User();
		if(session != null) {
			String user_Id = ((User)session.getAttribute("loginUser")).getUser_Id();
	        user.setUser_Id(user_Id);
			List<Mileage> mList = mService.mileageView(user);
			int allMileage = 0;
			for(Mileage mileage : mList) {
				switch (mileage.getMileageType()) {
				case "적립":
					allMileage += mileage.getMileage();
					break;

				case "사용":
					allMileage -= mileage.getMileage();
					break;
				}
			}
			model.addAttribute("mList", mList);
			model.addAttribute("allMileage", allMileage);
			
			return "mileage/mileage";
		} else {
			return "home";
		}
	}

	@RequestMapping(value="/mileage/useMileage.do", method=RequestMethod.POST)
	public String mileageUse(@ModelAttribute Mileage mileage, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String user_Id = ((User)session.getAttribute("loginUser")).getUser_Id();
        mileage.setUserId(user_Id);
		int result = mService.mileageUse(mileage);
		if(result > 0) {
			return "mileage/mileage";
		}else {
			return "fail";
		}
	}
}
