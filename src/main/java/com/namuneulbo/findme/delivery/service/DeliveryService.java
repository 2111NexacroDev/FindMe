package com.namuneulbo.findme.delivery.service;

import java.util.List;

import com.namuneulbo.findme.delivery.domain.Delivery;
import com.namuneulbo.findme.user.domain.User;

public interface DeliveryService {

	public List<Delivery> deliveryView(User user);
	
	public int registerWaybillNo(Delivery delivery);
}
