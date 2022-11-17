package com.ssafy.happyhouse.house.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.house.model.dto.HouseInfo;
/*
public class HouseInfoDaoImpl implements HouseInfoDao {
	private static HouseInfoDao instance = new HouseInfoDaoImpl();
	private DBUtil dbUtil = DBUtil.getInstance();
	
	private HouseInfoDaoImpl() {
		
	}
	
	public static HouseInfoDao getInstance() {
		return instance;
	}

	@Override
	public List<HouseInfo> searchDong(Map<String, String> map)  {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dbUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			
			sql.append("select * \n");
			sql.append("from \n");
			sql.append("(select aptCode, max(no) no \n");
			sql.append("from housedeal \n");
			sql.append("group by aptCode) rhd \n");
			sql.append("join housedeal hd \n");
			sql.append("on hd.aptCode = rhd.aptCode and hd.no = rhd.no \n");
			sql.append("join houseinfo hi \n");
			sql.append("on hi.aptCode = hd.aptCode \n");
			sql.append("join dongcode dc \n");
			sql.append("on hi.dongCode = dc.dongCode \n");
			sql.append("where hi.dongCode = ? \n");
			
			pstmt = con.prepareStatement(sql.toString());
			int idx = 1;
			pstmt.setString(idx++, map.get("dong"));
			
			rs = pstmt.executeQuery();
			
			List<HouseInfo> houseInfoList = new ArrayList<>();
			while(rs.next()) {
				HouseInfo houseInfo = new HouseInfo(
													rs.getInt("aptCode"),
													rs.getString("aptName"),
													rs.getString("dongCode"),
													rs.getString("dongName"),
													rs.getInt("buildYear"),
													rs.getString("jibun"),
													rs.getString("lat"),
													rs.getString("lng"),
													rs.getString("sidoName"),
													rs.getString("gugunName"),
													rs.getInt("no"),
													rs.getString("dealAmount"),
													rs.getInt("dealYear"),
													rs.getInt("dealMonth"),
													rs.getInt("dealDay"),
													rs.getString("area"),
													rs.getString("floor")
													);
				houseInfoList.add(houseInfo);
			}
			
			return houseInfoList;
			
		} finally {
			dbUtil.close(rs, pstmt, con);
		}
	}

	@Override
	public List<HouseInfo> searchApt(int aptCode)  {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println(aptCode);
		try {
			con = dbUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			
			sql.append("select * \n");
			sql.append("from housedeal \n");
			sql.append("where aptCode = ? \n");
			sql.append("order by no desc \n");
			
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, aptCode);
			
			rs = pstmt.executeQuery();
			
			List<HouseInfo> aptInfoList = new ArrayList<>();
			while(rs.next()) {
				HouseInfo houseInfo = new HouseInfo(
													rs.getInt("aptCode"),
													null,
													null,
													null,
													-1,
													null,
													null,
													null,
													null,
													null,
													-1,
													rs.getString("dealAmount"),
													rs.getInt("dealYear"),
													rs.getInt("dealMonth"),
													rs.getInt("dealDay"),
													rs.getString("area"),
													rs.getString("floor")
													);
				aptInfoList.add(houseInfo);
			}
			
			return aptInfoList;
			
		} finally {
			dbUtil.close(rs, pstmt, con);
		}
	}

	@Override
	public int totalListSize(String dong)  {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dbUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			
			sql.append("select count(aptCode) cnt \n");
			sql.append("from ( \n");
			sql.append("select hi.aptCode \n");
			sql.append("from houseinfo hi \n");
			sql.append("join housedeal hd \n");
			sql.append("on hi.aptCode = hd.aptCode \n");
			sql.append("where dongCode = ? \n");
			sql.append("group by hi.aptCode) aptCode \n");
			
			pstmt = con.prepareStatement(sql.toString());
			int idx = 1;
			pstmt.setString(idx++, dong);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			return rs.getInt("cnt");
			
			
		} finally {
			dbUtil.close(rs, pstmt, con);
		}
	}

}
*/