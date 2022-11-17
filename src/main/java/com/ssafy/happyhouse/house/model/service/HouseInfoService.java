package com.ssafy.happyhouse.house.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.house.model.dto.HouseInfo;

public interface HouseInfoService {
	List<HouseInfo> searchDong(Map<String, String> map) ;
	int totalListSize(Map<String, String> map) ;
	List<HouseInfo> searchApt(int aptCode) ;
}
