package com.ssafy.happyhouse.house.model.dao;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.house.model.dto.HouseInfo;


public interface HouseInfoDao {

	List<HouseInfo> searchDong(Map<String, String> map) ;
	int totalListSize(Map<String, String> map) ;
	List<HouseInfo> searchApt(int aptCode) ;
}
