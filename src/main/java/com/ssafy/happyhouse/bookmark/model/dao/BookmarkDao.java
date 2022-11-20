package com.ssafy.happyhouse.bookmark.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.bookmark.model.dto.Bookmark;


@Mapper
public interface BookmarkDao {
	void insert(Map<String, String> map);
	void remove(String id) ;
	Bookmark select(String id);
	List<Bookmark> selectAll(String userid);
}
