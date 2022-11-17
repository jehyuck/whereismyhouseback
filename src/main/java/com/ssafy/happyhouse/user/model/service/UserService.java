package com.ssafy.happyhouse.user.model.service;

import java.util.Map;

import com.ssafy.happyhouse.user.model.dto.User;


public interface UserService {
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
	User selectUser(User user);
	public int idCheck(String userId) ;
	String findPassword(Map<String,String> map) ;
	
	public User login(User user) throws Exception;
	public User userInfo(String id) throws Exception;
	public void saveRefreshToken(String id, String refreshToken) throws Exception;
	public Object getRefreshToken(String id) throws Exception;
	public void deleRefreshToken(String id) throws Exception;
}
