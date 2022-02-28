package com.namuneulbo.findme.mileage.store.logic;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.namuneulbo.findme.mileage.domain.Mileage;
import com.namuneulbo.findme.mileage.store.MileageStore;
import com.namuneulbo.findme.user.domain.User;

@Repository
public class MileageStoreLogic implements MileageStore{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<Mileage> selectAllMileage(User user) {
		List<Mileage> mList = sqlSession.selectList("MileageMapper.selectMileage", user);
		return mList;
	}

	@Override
	public int insertMileage(Mileage mileage) {
		int result = sqlSession.insert("MileageMapper.insertMileage", mileage);
		return result;
	}

}
