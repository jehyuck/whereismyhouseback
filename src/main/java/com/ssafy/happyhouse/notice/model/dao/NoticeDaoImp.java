package com.ssafy.happyhouse.notice.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/*
public class NoticeDaoImp implements NoticeDao {
	private NoticeDaoImp() {}
	
	private DBUtil dbutil = DBUtil.getInstance();
	private static  NoticeDao instance = new NoticeDaoImp() {};
	public static NoticeDao getInstance() {
		return instance;
	}
	
	@Override
	public void insertNotice(Notice notice) throws SQLException {
		Connection con = null;
		PreparedStatement stmt = null;
		try {
			con = dbutil.getConnection();
			String sql = "INSERT INTO notice(title,author,content,createdTime) VALUES (?,?,?,?)";
			stmt = con.prepareStatement(sql);
			
			int idx = 1;
			stmt.setString(idx++, notice.getTitle());
			stmt.setString(idx++, notice.getAuthor());
			stmt.setString(idx++, notice.getContent());
			stmt.setString(idx++, notice.getCreatedTime());
			
			stmt.executeUpdate();
		} finally {
			dbutil.close(stmt, con);
		}
	}

	@Override
	public void updateNotice(Notice notice) throws SQLException {
		Connection con = null;
		PreparedStatement stmt = null;
		try {
			con = dbutil.getConnection();
			String sql = "UPDATE notice SET title=?, author=?,content=?, createdTime=?";
			stmt = con.prepareStatement(sql);
			
			int idx = 1;
			stmt.setString(idx++, notice.getTitle());
			stmt.setString(idx++, notice.getAuthor());
			stmt.setString(idx++, notice.getContent());
			stmt.setString(idx++, notice.getCreatedTime());
			
			stmt.executeUpdate();
		} finally {
			dbutil.close(stmt, con);
		}
	}

	@Override
	public void removeNotice(int noticeNo) throws SQLException {
		Connection con = null;
		PreparedStatement stmt = null;
		try {
			con = dbutil.getConnection();
			String sql = "DELETE FROM notice WHERE noticeNo=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, noticeNo);
			stmt.executeUpdate();
		} finally {
			dbutil.close(stmt, con);
		}
	}

	@Override
	public Notice selectNotice(int noticeNo) throws SQLException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			con = dbutil.getConnection();
			String sql = "SELECT * FROM notice WHERE noticeNo=?";
			stmt = con.prepareStatement(sql);
			
			stmt.setInt(1, noticeNo);
			
			rs = stmt.executeQuery();
			if(rs.next()) {
				return new Notice(	rs.getInt("noticeNo"), 
									rs.getString("title"), 
									rs.getString("author"), 
									rs.getString("content"), 
									rs.getString("createdTime"));
			}
		} finally {
			dbutil.close(rs, stmt, con);
		}
		return null;
	}

	@Override
	public List<Notice> selectNoticeAll() throws SQLException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		List<Notice> notices = new ArrayList<>();
		try {
			con = dbutil.getConnection();
			String sql = "SELECT * FROM notice";
			stmt = con.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			while(rs.next()) {
				notices.add(new Notice(	rs.getInt("noticeNo"), 
									rs.getString("title"), 
									rs.getString("author"), 
									rs.getString("content"), 
									rs.getString("createdTime")));
			}
			return notices;
		} finally {
			dbutil.close(rs, stmt, con);
		}
	}

}
*/