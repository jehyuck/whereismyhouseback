package com.ssafy.happyhouse.user.model.service;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.happyhouse.user.model.dao.UserDao;
import com.ssafy.happyhouse.user.model.dto.User;


@Service
public class UserServiceImp implements UserService {
	
	private UserDao userDao;
	
	@Autowired
	public UserServiceImp(UserDao userDao) {
		// TODO Auto-generated constructor stub
		this.userDao = userDao;
	}
	
	
	@Override
	@Transactional
	public void insertUser(User user)  {
		System.out.println(user);
		User find = userDao.selectUser(user);
		if (find != null) {
			throw new RuntimeException("이미 등록된 id입니다.");
		}
		userDao.insertUser(user);
	}
	
	@Override
	public void updateUser(User user)  {
		userDao.updateUser(user);
	}
	
	@Override
	@Transactional
	public void removeUser(String id)  {
		userDao.removeUser(id);
	}
	
	@Override
	@Transactional(readOnly = true)
	public User selectUser(User user)  {
		return userDao.selectUser(user);
	}
	
	@Override
	public int idCheck(String userId)  {
		return userDao.idCheck(userId);
	}


	@Override
	public String findPassword(Map<String, String> map) {
		return userDao.findPassword(map);
	}

	@Autowired
	private SqlSession sqlSession;

	@Override
	public User login(User user) throws Exception {
		if (user.getId() == null || user.getPass() == null)
			return null;
		return sqlSession.getMapper(UserDao.class).login(user);
	}

	@Override
	public User userInfo(String userid) throws Exception {
		return sqlSession.getMapper(UserDao.class).userInfo(userid);
	}

	@Override
	public void saveRefreshToken(String userid, String refreshToken) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		map.put("token", refreshToken);
		sqlSession.getMapper(UserDao.class).saveRefreshToken(map);
	}

	@Override
	public Object getRefreshToken(String userid) throws Exception {
		return sqlSession.getMapper(UserDao.class).getRefreshToken(userid);
	}

	@Override
	public void deleRefreshToken(String userid) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		map.put("token", null);
		sqlSession.getMapper(UserDao.class).deleteRefreshToken(map);
	}
}
