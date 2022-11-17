package com.ssafy.happyhouse.user.model.service;

import java.util.Map;

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
		User find = userDao.selectUser(user);
		if (find != null) {
			throw new RuntimeException("이미 등록된 isbn입니다.");
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

	
}
