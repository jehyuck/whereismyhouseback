package com.ssafy.happyhouse.house.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.happyhouse.house.model.dto.HouseInfo;
import com.ssafy.happyhouse.house.model.service.HouseInfoService;


@Controller
@RequestMapping("/house")
public class HouseRestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private HouseInfoService houseInfoService;

	
	@GetMapping("/page")
	public String list() {
		return "house/item-listing-list";
	}
	
	@GetMapping()
	public ResponseEntity<Map<String, Object>> aptDealSearch(@RequestParam Map<String, String> map){
		String sido = map.get("sido");
		String gugun = map.get("gugun");
		String dong = map.get("dong");
		String pgNo = map.get("pgNo");
		String aptName = map.get("aptname");
		
		if(pgNo == null || pgNo.equals("")) {
			pgNo = "1";
		}
		
		Map<String, String> pageMap = new HashMap<String, String>();
		pageMap.put("dong", dong);
		pageMap.put("pgNo", pgNo); 
		pageMap.put("aptName", aptName); 
		List<HouseInfo> houseList = houseInfoService.searchDong(pageMap);
		int totalListSize = houseInfoService.totalListSize(pageMap);
		
		Map<String, Object> rtnMap = new HashMap<String, Object>(); 
		System.out.println(map);
		System.out.println(totalListSize);
		rtnMap.put("houseList", houseList);
		rtnMap.put("totalListSize", totalListSize);
		rtnMap.put("pgSize", totalListSize / 10);
		rtnMap.put("sidoCode", sido); 
		rtnMap.put("gugunCode", gugun); 
		rtnMap.put("dongCode", dong);
		rtnMap.put("pgNo", pgNo); 
		
		return new ResponseEntity<>(rtnMap, HttpStatus.OK);
	}
	
	@GetMapping("/apt")
	public ResponseEntity<Map<String, Object>> aptSearch(@RequestParam Map<String, String> map) {
		String code = map.get("aptCode");
		String aptName = map.get("aptName"); 
		String sidoName = map.get("sidoName");
		String gugunName = map.get("gugunName");
		String dongName = map.get("dongName");
		String jibun = map.get("jibun");
		String dealAmount = map.get("dealAmount");
		String lat = map.get("lat");
		String lng = map.get("lng");
		System.out.println(map);
		int aptCode = 0;
		try {
			aptCode = Integer.parseInt(code);
		} catch (Exception e) {
		}
		HouseInfo houseInfo = new HouseInfo(
											aptCode,
											aptName,
											null,
											dongName,
											-1,
											jibun,
											lat,
											lng,
											sidoName,
											gugunName,
											-1,
											dealAmount,
											-1,
											-1,
											-1,
											null,
											null
				);
		List<HouseInfo> aptList = houseInfoService.searchApt(aptCode);
		System.out.printf("%d %d", aptCode,aptList.size());
		System.out.println(map);
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		rtnMap.put("houseInfo", null);
		rtnMap.put("aptList", aptList);	
//		return "house/item-details.jsp"; 
		return new ResponseEntity<>(rtnMap, HttpStatus.OK);
	}
	
	
	
	@GetMapping("/aptSearch")
	public String aptSearch(@RequestParam Map<String, String> map, Model model) {
		String code = map.get("aptCode");
		String aptName = map.get("aptName"); 
		String sidoName = map.get("sidoName");
		String gugunName = map.get("gugunName");
		String dongName = map.get("dongName");
		String jibun = map.get("jibun");
		String dealAmount = map.get("dealAmount");
		String lat = map.get("lat");
		String lng = map.get("lng");
		
		int aptCode = 0;
		try {
			aptCode = Integer.parseInt(code);
		} catch (Exception e) {
		}
		HouseInfo houseInfo = new HouseInfo(
											aptCode,
											aptName,
											null,
											dongName,
											-1,
											jibun,
											lat,
											lng,
											sidoName,
											gugunName,
											-1,
											dealAmount,
											-1,
											-1,
											-1,
											null,
											null
				);
		List<HouseInfo> aptList = houseInfoService.searchApt(aptCode);
		System.out.printf("%d %d", aptCode,aptList.size());
		System.out.println(map);
		model.addAttribute("houseInfo", houseInfo);
		model.addAttribute("aptList", aptList);	
//		return "house/item-details.jsp"; 
		return "house/item-details";
	}

	@GetMapping("/search")
	public String Search(@RequestParam Map<String, String> map, Model model) {
		String sido = map.get("sido");
		String gugun = map.get("gugun");
		String dong = map.get("dong");
		String pgNo = map.get("pgNo");
		String aptName = map.get("aptName");
		
		if(pgNo == null || pgNo.equals("")) {
			pgNo = "1";
		}
		
		Map<String, String> pageMap = new HashMap<String, String>();
		pageMap.put("dong", dong);
		pageMap.put("pgNo", pgNo); 
		pageMap.put("aptName", aptName); 
		List<HouseInfo> houseList = houseInfoService.searchDong(pageMap);
		int totalListSize = houseInfoService.totalListSize(pageMap);
		
		System.out.println(totalListSize);
		model.addAttribute("houseList", houseList);
		model.addAttribute("totalListSize", totalListSize);
		model.addAttribute("pgSize", totalListSize / 10);
		model.addAttribute("sidoCode", sido); 
		model.addAttribute("gugunCode", gugun); 
		model.addAttribute("dongCode", dong);
		model.addAttribute("pgNo", pgNo); 
		
		return "house/item-listing-list";
	}
	
	
	private String dongSearch(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		String sido = request.getParameter("sido");
		String gugun = request.getParameter("gugun");
		String dong = request.getParameter("dong");
		String pgNo = request.getParameter("pgNo");
		
		if(pgNo == null || pgNo.equals("")) {
			pgNo = "1";
		}
		Map<String, String> map = new HashMap<>();
		map.put("dong", dong);
		map.put("pgNo", pgNo); 
		List<HouseInfo> houseList = houseInfoService.searchDong(map);
		int totalListSize = houseInfoService.totalListSize(map);
		request.setAttribute("houseList", houseList);
		request.setAttribute("totalListSize", totalListSize);
		request.setAttribute("pgSize", totalListSize / 10);
		request.setAttribute("sidoCode", sido); 
		request.setAttribute("gugunCode", gugun); 
		request.setAttribute("dongCode", dong);
		request.setAttribute("pgNo", pgNo); 
		return "house/item-listing-list";
	}
	
}
