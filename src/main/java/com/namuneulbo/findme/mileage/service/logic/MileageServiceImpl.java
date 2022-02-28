package com.namuneulbo.findme.mileage.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.namuneulbo.findme.mileage.domain.Mileage;
import com.namuneulbo.findme.mileage.service.MileageService;
import com.namuneulbo.findme.mileage.store.MileageStore;
import com.namuneulbo.findme.user.domain.User;
@Service
public class MileageServiceImpl implements MileageService{
	@Autowired
	private MileageStore mStore;

	@Override
	public List<Mileage> mileageView(User user){
		List<Mileage> mList = mStore.selectAllMileage(user);
		return mList;
	}

	@Override
	public int mileageUse(Mileage mileage) {
		int result = mStore.insertMileage(mileage);
		return result;
	}

}
