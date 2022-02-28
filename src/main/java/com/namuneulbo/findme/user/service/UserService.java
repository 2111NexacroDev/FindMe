package com.namuneulbo.findme.user.service;

import com.namuneulbo.findme.user.domain.User;

public interface UserService {

	public User loginUser(User user);
	public User findId(User user);
	public User findPw(User user);
//	public User pwCheck(String userId);
	public int joinUser(User user);
	public int modifyUser(User user);
	public int removeUser(String userId);
	public int idCheck(String userId);
	

}
