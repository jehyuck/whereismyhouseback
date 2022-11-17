package com.ssafy.happyhouse.notice.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.notice.model.dao.NoticeDao;
import com.ssafy.happyhouse.notice.model.dto.Notice;

@Service
public class NoticeServiceImp implements NoticeService {
	
	@Autowired
	private NoticeDao dao;

	public NoticeServiceImp() {}

	@Override
	public void insertNotice(Notice notice)  {
		dao.insertNotice(notice);
	}

	@Override
	public void updateNotice(Notice notice)  {
		dao.updateNotice(notice);
	}

	@Override
	public void removeNotice(int noticeNo)  {
		dao.removeNotice(noticeNo);
	}

	@Override
	public Notice selectNotice(int noticeNo)  {
		return dao.selectNotice(noticeNo);
	}

	@Override
	public List<Notice> selectNoticeAll()  {
		return dao.selectNoticeAll();
	}

}
