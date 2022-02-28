package com.namuneulbo.findme.mileage.store;

import java.util.List;

import com.namuneulbo.findme.mileage.domain.Mileage;
import com.namuneulbo.findme.user.domain.User;

public interface MileageStore {
	public List<Mileage> selectAllMileage(User user);
	public int insertMileage(Mileage mileage);
}
