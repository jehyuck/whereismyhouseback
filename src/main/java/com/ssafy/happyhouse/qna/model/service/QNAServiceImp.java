package com.ssafy.happyhouse.qna.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.qna.model.dao.QNADao;
import com.ssafy.happyhouse.qna.model.dto.QNA;

@Service
public class QNAServiceImp implements QNAService {
	
	@Autowired
	private QNADao dao;

	public QNAServiceImp() {}

	@Override
	public void insertQNA(QNA qna)  {
		dao.insertQNA(qna);
	}

	@Override
	public void updateQNA(QNA qna)  {
		dao.updateQNA(qna);
	}

	@Override
	public void removeQNA(int qnaNo)  {
		dao.removeQNA(qnaNo);
	}

	@Override
	public QNA selectQNA(int qnaNo)  {
		return dao.selectQNA(qnaNo);
	}

	@Override
	public List<QNA> selectQNAAll(Map<String,String> query)  {
		return dao.selectQNAAll(query);
	}

	@Override
	public void insertAnswer(Map<String, String> answer) {
		dao.insertAnswer(answer);
	}
	@Override
	public void updateAnswer(Map<String, String> answer) {
		dao.updateAnswer(answer);
	}
}
