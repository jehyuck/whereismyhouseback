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
}
