package com.namuneulbo.findme.user.service.logic;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.namuneulbo.findme.user.domain.User;
import com.namuneulbo.findme.user.service.UserService;
import com.namuneulbo.findme.user.store.UserStore;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserStore mStore;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public User loginUser(User user) {
		User userOne = mStore.selectLoginUser(sqlSession, user);
		return userOne;
	}
	
	@Override
	public User findId(User user) {
		User findId = mStore.selecfindId(sqlSession, user);
		return findId;
	}
	
	@Override
	public User findPw(User user) {
		User result = mStore.selecfindPw(sqlSession, user);
		return result;
	}

//	@Override
//	public User pwCheck(String userId) {
//		User pwCheck = mStore.selectpwCheck(sqlSession, userId);
//		return pwCheck;
//	}
	
	@Override
	public int idCheck(String userId) {
		int result = mStore.idCheck(sqlSession, userId);
		return result;
	}

	@Override
	public int joinUser(User user) {
		int result = mStore.insertUser(sqlSession, user);
		return result;
	}


	@Override
	public int modifyUser(User user) {
		int result = mStore.updateUser(sqlSession, user);
		return result;
	}

	@Override
	public int removeUser(String userId) {
		int result = mStore.deleteUser(sqlSession, userId);
		return result;
	}

	

	


	


	


}
