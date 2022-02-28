package com.namuneulbo.findme.user.store.logic;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.namuneulbo.findme.user.domain.User;
import com.namuneulbo.findme.user.store.UserStore;

@Repository
public class UserStoreLogic implements UserStore{

	@Override
	public User selectLoginUser(SqlSession session, User user) {
		User userOne = session.selectOne("UserMapper.selectLoginUser", user);
		//select 문 실행
		return userOne;
	}
	
	@Override
	public User selecfindId(SqlSession session, User user) {
		User fainId = session.selectOne("UserMapper.selectfindId", user);
		return fainId;
	}
	
	@Override
	public User selecfindPw(SqlSession session, User user) {
		User fainPw = session.selectOne("UserMapper.selectfindPw", user);
		return fainPw;
	}
	
	//비밀번호 체크
//	@Override
//	public User selectpwCheck(SqlSession session, String userId) {
//		User pwCheck = session.selectOne("UserMapper.selectPwCheck", userId);
//		return pwCheck;
//	}

	//아이디 중복체크
	@Override
	public int idCheck(SqlSession session, String userId) {
		int result = session.selectOne("UserMapper.idCheck", userId);
		return result;
	}


	
	@Override
	public int insertUser(SqlSession session, User user) {
		int result = session.insert("UserMapper.insertUser", user);
		return result;
	}

	
	@Override
	public int deleteUser(SqlSession session, String userId) {
		int result = session.delete("UserMapper.deleteUser", userId);
		return result;
	}

	@Override
	public int updateUser(SqlSession session, User user) {
		int result = session.update("UserMapper.updateUser", user);
		return result;
	}

	

	


	



	


}
