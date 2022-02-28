package com.namuneulbo.findme.delivery.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.namuneulbo.findme.delivery.domain.Delivery;
import com.namuneulbo.findme.delivery.service.DeliveryService;
import com.namuneulbo.findme.delivery.store.DeliveryStore;
import com.namuneulbo.findme.user.domain.User;

@Service
public class DeliveryServiceImpl implements DeliveryService {
	@Autowired
	private DeliveryStore dStore;
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Delivery> deliveryView(User user) {
		List<Delivery> dList = dStore.selectAllDelivery(sqlSession, user);
		return dList;
	}

	@Override
	public int registerWaybillNo(Delivery delivery) {
		int result = dStore.insertWaybillNo(sqlSession, delivery);
		return result;
	}
	
}
