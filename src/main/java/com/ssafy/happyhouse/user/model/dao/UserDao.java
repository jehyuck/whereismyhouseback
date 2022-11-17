package com.ssafy.happyhouse.user.model.dao;

import java.sql.SQLException;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.user.model.dto.User;

@Mapper
public interface UserDao {
	/**
	 * 입력된 id/pass 기반으로 User를 조회해서 반환한다.
	 * @param id
	 * @param pass
	 * @return
	 * @
	 */
	
	void insertUser(User user) ;
	void updateUser(User user) ;
	void removeUser(String id) ;
	User selectUser(User user) ;
	public int idCheck(String userId) ;
	String findPassword(Map<String,String> map) ;
	
	public User login(User user) throws SQLException;
	public User userInfo(String userid) throws SQLException;
	public void saveRefreshToken(Map<String, String> map) throws SQLException;
	public Object getRefreshToken(String userid) throws SQLException;
	public void deleteRefreshToken(Map<String, String> map) throws SQLException;
}
