package com.ssafy.happyhouse.house.model.dto;

public class HouseInfo implements Comparable<HouseInfo>{
	// houseinfo table
	private int aptCode;
	private String aptName;
	private String dongCode;
	private String dongName;
	private int buildYear;
	private String jibun;
	private String lat;
	private String lng;
	
	// dongcode table
	private String sidoName;
	private String gugunName;
	
	// housedeal table
	private int no;
	private String dealAmount;
	private int dealYear;
	private int dealMonth;
	private int dealDay;
	private String area;
	private String floor;

	
	public HouseInfo() {
		
	}


	public HouseInfo(int aptCode, String aptName, String dongCode, String dongName, int buildYear, String jibun,
			String lat, String lng, String sidoName, String gugunName, int no, String dealAmount, int dealYear,
			int dealMonth, int dealDay, String area, String floor) {
		super();
		this.aptCode = aptCode;
		this.aptName = aptName;
		this.dongCode = dongCode;
		this.dongName = dongName;
		this.buildYear = buildYear;
		this.jibun = jibun;
		this.lat = lat;
		this.lng = lng;
		this.sidoName = sidoName;
		this.gugunName = gugunName;
		this.no = no;
		this.dealAmount = dealAmount;
		this.dealYear = dealYear;
		this.dealMonth = dealMonth;
		this.dealDay = dealDay;
		this.area = area;
		this.floor = floor;
	}


	public int getAptCode() {
		return aptCode;
	}


	public void setAptCode(int aptCode) {
		this.aptCode = aptCode;
	}


	public String getAptName() {
		return aptName;
	}


	public void setAptName(String aptName) {
		this.aptName = aptName;
	}


	public String getDongCode() {
		return dongCode;
	}


	public void setDongCode(String dongCode) {
		this.dongCode = dongCode;
	}


	public String getDongName() {
		return dongName;
	}


	public void setDongName(String dongName) {
		this.dongName = dongName;
	}


	public int getbuildYear() {
		return buildYear;
	}


	public void setbuildYear(int buildYear) {
		this.buildYear = buildYear;
	}


	public String getJibun() {
		return jibun;
	}


	public void setJibun(String jibun) {
		this.jibun = jibun;
	}


	public String getLat() {
		return lat;
	}


	public void setLat(String lat) {
		this.lat = lat;
	}


	public String getLng() {
		return lng;
	}


	public void setLng(String lng) {
		this.lng = lng;
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


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getDealAmount() {
		return dealAmount;
	}


	public void setDealAmount(String dealAmount) {
		this.dealAmount = dealAmount;
	}


	public int getDealYear() {
		return dealYear;
	}


	public void setDealYear(int dealYear) {
		this.dealYear = dealYear;
	}


	public int getDealMonth() {
		return dealMonth;
	}


	public void setDealMonth(int dealMonth) {
		this.dealMonth = dealMonth;
	}


	public int getdealDay() {
		return dealDay;
	}


	public void setdealDay(int dealDay) {
		this.dealDay = dealDay;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public String getFloor() {
		return floor;
	}


	public void setFloor(String floor) {
		this.floor = floor;
	}


	@Override
	public String toString() {
		return "HouseInfo [aptCode=" + aptCode + ", aptName=" + aptName + ", dongCode=" + dongCode + ", dongName="
				+ dongName + ", buildYear=" + buildYear + ", jibun=" + jibun + ", lat=" + lat + ", lng=" + lng
				+ ", sidoName=" + sidoName + ", gugunName=" + gugunName + ", no=" + no + ", dealAmount=" + dealAmount
				+ ", dealYear=" + dealYear + ", dealMonth=" + dealMonth + ", dealDay=" + dealDay + ", area=" + area
				+ ", floor=" + floor + "]";
	}


	@Override
	public int compareTo(HouseInfo o) {
		
		return o.no - this.no;
	}
	
	
}
