package com.namuneulbo.findme.delivery.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.namuneulbo.findme.delivery.domain.Delivery;
import com.namuneulbo.findme.delivery.service.DeliveryService;
import com.namuneulbo.findme.user.domain.User;

@Controller
public class DeliveryContoller {
	@Autowired
	DeliveryService dService;
	
	@RequestMapping(value="/mypage/delivery.do")
	public String definitionView(Model model, @ModelAttribute User user, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session != null) {
			String user_Id = ((User)session.getAttribute("loginUser")).getUser_Id();
			user.setUser_Id(user_Id);
			List<Delivery> dList = dService.deliveryView(user);
			model.addAttribute("dList", dList);
			model.addAttribute("user", user);
			return "delivery/delivery";
		}else {
			return "Home";
		}
	}

	@RequestMapping(value="/delivery/waybillNoAdd.do", method=RequestMethod.POST)
	public String deliveryWaybillNoAdd(
			@ModelAttribute Delivery delivery) {
		int result = dService.registerWaybillNo(delivery);
		if(result > 0) {
			return "delivery/delivery";
		}else {
			return "delivery/delivery";
		}
	}
}
