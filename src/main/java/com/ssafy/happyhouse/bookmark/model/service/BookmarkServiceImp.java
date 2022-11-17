package com.ssafy.happyhouse.bookmark.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.happyhouse.bookmark.model.dao.BookmarkDao;
import com.ssafy.happyhouse.bookmark.model.dto.Bookmark;

@Service
public class BookmarkServiceImp implements BookmarkService {
	
	@Autowired
	private BookmarkDao dao;
	
	@Override
	@Transactional
	public void insert(Map<String, String> map)  {
		dao.insert(map);
	}

	@Override
	@Transactional
	public void remove(String id)  {
		dao.remove(id);
	}

	@Override
	public Bookmark select(Map<String, String> map)  {
		return dao.select(map);
	}

	@Override
	public List<Bookmark> selectAll(String userid)  {
		return dao.selectAll(userid);
	}
	

}
