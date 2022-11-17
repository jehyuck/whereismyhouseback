package com.ssafy.happyhouse.user.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ssafy.happyhouse.user.model.dto.User;
/*
public class UserDaoImp implements UserDao {
	private static  UserDao instance = new UserDaoImp() {};
	private UserDaoImp() {}
	public static UserDao getInstance() {
		return instance;
	}
	private DBUtil dbutil = DBUtil.getInstance();
	
	@Override
	public void insertUser(User user)  {
		Connection con = null;
		PreparedStatement stmt  = null;
		try {
			// 1. DB연결
			con = dbutil.getConnection();
			
			// 2. SQL쿼리문 작성 : String sql을 prepareStatement로
			String sql=" INSERT INTO  user(id, pass, name, address, phone)  VALUES (?,?,?,?,?) ";
			stmt = con.prepareStatement(sql);
			
			int idx = 1;
			stmt.setString(idx++, user.getId());
			stmt.setString(idx++, user.getPass());
			stmt.setString(idx++, user.getName());
			stmt.setString(idx++, user.getAddress());
			stmt.setString(idx++, user.getPhone());
			
			// 3. 쿼리 실행 - select만 executeQuery
			stmt.executeUpdate();
		} finally {
			dbutil.close(stmt, con);
		}
	}
	
	@Override
	public void updateUser(User user)  {
		Connection con = null;
		PreparedStatement stmt  = null;
		try {
			con = dbutil.getConnection();
			String sql=" update user set  pass=? ,name=?, address=?, phone=?  where id=? ";
			stmt = con.prepareStatement(sql);
			int idx = 1;
			stmt.setString(idx++, user.getPass());
			stmt.setString(idx++, user.getName());
			stmt.setString(idx++, user.getAddress());
			stmt.setString(idx++, user.getPhone());
			stmt.setString(idx++, user.getId());
			
			stmt.executeUpdate();
		} finally {
			dbutil.close(stmt, con);
		}
	}
	
	@Override
	public void removeUser(String id)  {
		Connection con = null;
		PreparedStatement stmt  = null;
		try {
			con = dbutil.getConnection();
			String sql="delete from user where  id =?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.executeUpdate();
		} finally {
			dbutil.close(stmt, con);
		}
	}
	
	@Override
	public User selectUser(String id, String pass)  {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			con = dbutil.getConnection();
			String sql = " select * from user where id=? and pass=? ";
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, id);
			stmt.setString(2, pass);
			
			rs = stmt.executeQuery();
			if(rs.next()) {
				return new User(	rs.getString("id"), 
									rs.getString("pass"), 
									rs.getString("name"), 
									rs.getString("address"), 
									rs.getString("phone"));
			}
		} finally {
			dbutil.close(rs, stmt, con);
		}
		return null;
	}
	@Override
	public int idCheck(String userId)  {
		int cnt = 1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = dbutil.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("select count(id) \n");
			sql.append("from user \n");
			sql.append("where id = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt(1);
		} finally {
			dbutil.close(rs, pstmt, conn);
		}
		return cnt;
	}
}



*/