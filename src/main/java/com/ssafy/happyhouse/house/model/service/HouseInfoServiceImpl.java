package com.ssafy.happyhouse.house.model.service;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.house.model.dao.HouseInfoDao;
import com.ssafy.happyhouse.house.model.dto.HouseInfo;


@Service
public class HouseInfoServiceImpl implements HouseInfoService {
	
	@Autowired
	private HouseInfoDao dao;

	@Override
	public List<HouseInfo> searchDong(Map<String, String> map)  {
		int pgno = Integer.parseInt(map.get("pgNo"));
		int spl = 10;
		int start = (pgno - 1) * spl;
		map.put("start", start + "");
		map.put("spl", spl + "");
		List<HouseInfo> list = dao.searchDong(map);
		Collections.sort(list);
//		System.out.printf("%d %d\n", start + spl , list.size());
//		System.out.println(map.get("dong"));
//		System.out.println(map.get("aptName"));
		List<HouseInfo> newList = list.subList(start, start + spl > list.size()?list.size(): start + spl );
		
		return newList;
	}

	@Override
	public List<HouseInfo> searchApt(int aptCode)  {
		return dao.searchApt(aptCode);
	}

	@Override
	public int totalListSize(Map<String, String> map)  {
		return dao.totalListSize(map);
	}

}
