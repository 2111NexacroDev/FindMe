package com.namuneulbo.findme.delivery.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.namuneulbo.findme.delivery.domain.Delivery;
import com.namuneulbo.findme.user.domain.User;

public interface DeliveryStore {
	public List<Delivery> selectAllDelivery(SqlSession sqlSession, User user);
	
	public int insertWaybillNo(SqlSession sqlSession, Delivery delivery);
}
