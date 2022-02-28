package com.namuneulbo.findme.user.store;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;

import com.namuneulbo.findme.user.domain.User;

public interface UserStore {
	
	public User selectLoginUser(SqlSession session, User user);
	public User selecfindId(SqlSession session, User user);
	public User selecfindPw(SqlSession session, User user);
//	public User selectpwCheck(SqlSession session, String userId);
	public int insertUser(SqlSession session, User user);
	public int updateUser(SqlSession session, User user);
	public int deleteUser(SqlSession session, String userId);
	public int idCheck(SqlSession session, String userId);
	
	
	
}
