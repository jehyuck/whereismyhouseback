package com.ssafy.happyhouse.bookmark.model.service;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.bookmark.model.dto.Bookmark;

public interface BookmarkService {
	void insert(Map<String, String> map);
	void remove(String id);
	Bookmark select(String id);
	List<Bookmark> selectAll(String userid);
}
