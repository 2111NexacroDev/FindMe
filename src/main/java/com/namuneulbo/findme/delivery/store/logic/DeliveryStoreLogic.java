package com.namuneulbo.findme.delivery.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.namuneulbo.findme.delivery.domain.Delivery;
import com.namuneulbo.findme.delivery.store.DeliveryStore;
import com.namuneulbo.findme.user.domain.User;
@Repository
public class DeliveryStoreLogic implements DeliveryStore {

	@Override
	public List<Delivery> selectAllDelivery(SqlSession sqlSession, User user) {
		List<Delivery> dList = sqlSession.selectList("DeliveryMapper.selectDelivery", user);
		return dList;
	}

	@Override
	public int insertWaybillNo(SqlSession sqlSession, Delivery delivery) {
		int result = sqlSession.update("DeliveryMapper.insertWaybillNo", delivery);
		return result;
	}

}
