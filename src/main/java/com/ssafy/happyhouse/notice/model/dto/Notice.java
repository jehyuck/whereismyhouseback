package com.ssafy.happyhouse.notice.model.dto;

import java.io.Serializable;

public class Notice implements Serializable {
	private int noticeNo;
	private String title;
	private String author;
	private String content;
	private String createdTime;
	
	public Notice() {};

	public Notice(int noticeNo, String title, String author, String content, String createdTime) {
		super();
		this.noticeNo = noticeNo;
		this.title = title;
		this.author = author;
		this.content = content;
		this.createdTime = createdTime;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", title=" + title + ", author=" + author + ", content=" + content
				+ ", createdTime=" + createdTime + "]";
	}
	
}
