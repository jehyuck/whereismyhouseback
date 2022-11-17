//package com.ssafy.happyhouse.bookmark.model.dao;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//import com.ssafy.whereismyhouse.bookmark.model.dto.Bookmark;
//import com.ssafy.whereismyhouse.user.model.dao.UserDao;
//import com.ssafy.whereismyhouse.user.model.dto.User;
//import com.ssafy.whereismyhouse.util.DBUtil;
//
//public class BookmarkDaoImp implements BookmarkDao {
//	private static  BookmarkDao instance = new BookmarkDaoImp() {};
//	private BookmarkDaoImp() {}
//	public static BookmarkDao getInstance() {
//		return instance;
//	}
//	private DBUtil dbutil = DBUtil.getInstance();
//	
//	
//	@Override
//	public void insert(String userid, String dongCode) throws SQLException {
//		Connection con = null;
//		PreparedStatement stmt  = null;
//		try {
//			// 1. DB연결
//			con = dbutil.getConnection();
//			
//			// 2. SQL쿼리문 작성 : String sql을 prepareStatement로
//			String sql=" INSERT INTO  bookmark(userid, dongCode)  VALUES (?,?) ";
//			stmt = con.prepareStatement(sql);
//			
//			stmt.setString(1, userid);
//			stmt.setString(2, dongCode);
//			
//			// 3. 쿼리 실행 - select만 executeQuery
//			stmt.executeUpdate();
//		} finally {
//			dbutil.close(stmt, con);
//		}
//	}
//
//	@Override
//	public void remove(int id) throws SQLException {
//		Connection con = null;
//		PreparedStatement stmt  = null;
//		try {
//			con = dbutil.getConnection();
//			String sql="delete from bookmark where id =?";
//			stmt = con.prepareStatement(sql);
//			stmt.setInt(1, id);
//			stmt.executeUpdate();
//		} finally {
//			dbutil.close(stmt, con);
//		}
//	}
//
//	@Override
//	public Bookmark select(int id, String userid) throws SQLException {
//		Connection con = null;
//		PreparedStatement stmt = null;
//		ResultSet rs = null;
//		try {
//			con = dbutil.getConnection();
//			StringBuilder sql = new StringBuilder();
//			sql.append(" SELECT id, userid, bk.dongCode, sidoName, gugunName, dongName   \n");
//			sql.append(" FROM bookmark bk JOIN dongcode dc		\n");
//			sql.append(" ON bk.dongCode = dc.dongCode			\n");
//			sql.append(" WHERE userid=? and id=?				\n");
//			
//			stmt = con.prepareStatement(sql.toString());
//			
//			stmt.setString(1, userid);
//			stmt.setInt(2, id);
//			
//			rs = stmt.executeQuery();
//			if(rs.next()) {
//				return new Bookmark(	rs.getInt("id"), 
//										rs.getString("userid"), 
//										rs.getString("dongCode"),
//										rs.getString("sidoName"),
//										rs.getString("gugunName"),
//										rs.getString("dongName"));
//			}
//		} finally {
//			dbutil.close(rs, stmt, con);
//		}
//		return null;
//	}
//
//	@Override
//	public List<Bookmark> selectAll(String userid) throws SQLException {
//		Connection con = null;
//		PreparedStatement stmt  = null;
//		ResultSet rs = null;
//		List<Bookmark> bookmarks = new ArrayList<Bookmark>(10);
//		try {
//			con = dbutil.getConnection();
//			StringBuilder sql = new StringBuilder();
//			sql.append(" SELECT id, userid, bk.dongCode, sidoName, gugunName, dongName   \n");
//			sql.append(" FROM bookmark bk JOIN dongcode dc		\n");
//			sql.append(" ON bk.dongCode = dc.dongCode			\n");
//			sql.append(" WHERE userid = ?					\n");
//
//			stmt = con.prepareStatement(sql.toString());
//			stmt.setString(1, userid);
//			
//			rs = stmt.executeQuery();
//			
//			while(rs.next()) {
//				bookmarks.add(new Bookmark(	rs.getInt("id"), 
//											rs.getString("userid"), 
//											rs.getString("dongCode"),
//											rs.getString("sidoName"),
//											rs.getString("gugunName"),
//											rs.getString("dongName")));
//			}
//			return bookmarks;
//		} finally {
//			dbutil.close(rs, stmt, con);
//		}
//	}
//
//}
