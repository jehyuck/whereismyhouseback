package com.ssafy.happyhouse.qna.model.service;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.qna.model.dto.QNA;

public interface QNAService {
	void insertQNA(QNA qna) ;
	void insertAnswer(Map<String, String> answer) ;
	void updateQNA(QNA qna) ;

	void updateAnswer(Map<String, String> answer) ;
	void removeQNA(int qnaNo) ;
	QNA selectQNA(int qnaNo) ;
	List<QNA> selectQNAAll(Map<String,String> query) ;
}