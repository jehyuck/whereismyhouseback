package com.ssafy.happyhouse.bookmark.model.dto;

public class Bookmark {
	private int id;
	private String userid;
	private String dongCode;
	private String sidoName;
	private String gugunName;
	private String dongName;
	
	public Bookmark() {}

	public Bookmark(int id, String userid, String dongCode, String sidoName, String gugunName, String dongName) {
		super();
		this.id = id;
		this.userid = userid;
		this.dongCode = dongCode;
		this.sidoName = sidoName;
		this.gugunName = gugunName;
		this.dongName = dongName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getDongCode() {
		return dongCode;
	}

	public void setDongCode(String dongCode) {
		this.dongCode = dongCode;
	}

	public String getSidoName() {
		return sidoName;
	}

	public void setSidoName(String sidoName) {
		this.sidoName = sidoName;
	}

	public String getGugunName() {
		return gugunName;
	}

	public void setGugunName(String gugunName) {
		this.gugunName = gugunName;
	}

	public String getDongName() {
		return dongName;
	}

	public void setDongName(String dongName) {
		this.dongName = dongName;
	}

	@Override
	public String toString() {
		return "Bookmark [id=" + id + ", userid=" + userid + ", dongCode=" + dongCode + ", sidoName=" + sidoName
				+ ", gugunName=" + gugunName + ", dongName=" + dongName + "]";
	}
	
}
