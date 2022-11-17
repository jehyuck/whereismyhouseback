package com.ssafy.happyhouse.qna.model.dto;

import java.io.Serializable;

public class QNA implements Serializable {
	private int qnaNo;
	private String title;
	private String userId;
	private String content;
	private String createdTime;
	private String answer;
	
	public QNA() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public QNA(int qnaNo, String title, String userId, String content, String createdTime, String answer) {
		super();
		qnaNo = qnaNo;
		this.title = title;
		this.userId = userId;
		this.content = content;
		this.createdTime = createdTime;
		this.answer = answer;
	}

	public int getqnaNo() {
		return qnaNo;
	}
	public void setqnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
