package com.ssafy.happyhouse.notice.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.notice.model.dto.Notice;

public interface NoticeService {
	void insertNotice(Notice notice) ;
	void updateNotice(Notice notice) ;
	void removeNotice(int noticeNo) ;
	Notice selectNotice(int noticeNo) ;
	List<Notice> selectNoticeAll() ;
}