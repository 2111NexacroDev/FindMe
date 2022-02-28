package com.namuneulbo.findme.mileage.service;

import java.util.List;

import com.namuneulbo.findme.mileage.domain.Mileage;
import com.namuneulbo.findme.user.domain.User;

public interface MileageService {

	public List<Mileage> mileageView(User user);
	public int mileageUse(Mileage mileage);
}
