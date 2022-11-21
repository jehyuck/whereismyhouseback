package com.ssafy.happyhouse.notice.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.notice.model.dto.Notice;
import com.ssafy.happyhouse.notice.model.service.NoticeService;

import io.swagger.v3.oas.annotations.parameters.RequestBody;


@RestController
@RequestMapping("/notice")
public class NoticeRestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SUCCESS = "success";
	@Autowired
    private NoticeService noticeService;
	
	@GetMapping()
	public ResponseEntity<List<Notice>> selectAll() {
		List<Notice> notices = noticeService.selectNoticeAll();
		System.out.println(notices.size());
		return new ResponseEntity<List<Notice>>(notices, HttpStatus.OK);
	}
	
	@GetMapping("/{noticeNo}")
	public ResponseEntity<Notice> select(@PathVariable String noticeNo) {
		int noticeNo1 = Integer.parseInt(noticeNo);
		Notice notice = noticeService.selectNotice(noticeNo1);
		return new ResponseEntity<Notice>(notice, HttpStatus.OK);
	}
	@PostMapping()
	public ResponseEntity<?> insert(@RequestBody Notice notice) {
		System.out.println("insert..."+notice.toString());
		noticeService.insertNotice(notice);
		return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
	}
	
	@PutMapping()
	private ResponseEntity<?> update(@RequestBody Notice notice) {
		System.out.print("notice update..........................");
		System.out.println(notice);
		noticeService.updateNotice(notice);
		return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
	}
	
	@DeleteMapping()
	private ResponseEntity<?> delete(@RequestBody String noticeNo) {
		noticeService.removeNotice(Integer.parseInt(noticeNo));
		return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
	}
	
//	@GetMapping("/selectAll")
//	public String selectAll(Model model) {
//		List<Notice> notices = noticeService.selectNoticeAll();
//		System.out.println(notices.size());
//		model.addAttribute("notices", notices);
//		return "notice/pricing";
//	}
	
	@GetMapping("/insert")
	public String insert() {
		return "notice/notice-insert";
	}
	
//	@PostMapping("/insert")
//	public String insert(Notice notice) {
//		System.out.println("insert..."+notice.toString());
//		noticeService.insertNotice(notice);
//		return "redirect:/notice/selectAll";
//	}
	
	
//	private String insert(HttpServletRequest request, HttpServletResponse response) throws SQLException {
//		String  title= request.getParameter("title");
//		String  author= request.getParameter("author");
//		String  content = request.getParameter("content");
//		String  createdTime= request.getParameter("createdTime");
//		
//		Notice notice = new Notice(0, title, author, content, createdTime);
//		System.out.println("insert..."+notice.toString());
//		noticeService.insertNotice(notice);
//		return "redirect:selectAll.notice";
//	}

	
	@GetMapping("/update")
	public String update(@RequestParam String noticeNo, Model model) {
		int noticeNo1 = Integer.parseInt(noticeNo);
		Notice notice = noticeService.selectNotice(noticeNo1);
		model.addAttribute(notice);
		return "notice/notice-update";
	}

//	@PostMapping("/update")
//	private String update(Notice notice) {
//		noticeService.updateNotice(notice);
//		return "redirect:/notice/select?noticeNo="+notice.getNoticeNo();
//	}

	
	
//	private String update(HttpServletRequest request, HttpServletResponse response) throws SQLException {
//		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
//		String  title= request.getParameter("title");
//		String  author= request.getParameter("author");
//		String  content = request.getParameter("content");
//		String  createdTime= request.getParameter("createdTime");
//		
//		Notice notice = new Notice(noticeNo, title, author, content, createdTime);
//		System.out.println(notice.toString());
//		noticeService.updateNotice(notice);
//		return "redirect:select.notice?noticeNo="+noticeNo;
//	}

	
//	@GetMapping("/delete")
//	private String delete(@RequestParam String noticeNo) {
//		noticeService.removeNotice(Integer.parseInt(noticeNo));
//		return "redirect:/notice/selectAll";
//	}
	
	private String delete(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
		System.out.println(noticeNo);
		noticeService.removeNotice(noticeNo);
		return "redirect:selectAll.notice";
	}

	
//	@GetMapping("/select")
//	public String select(@RequestParam String noticeNo, Model model) {
//		int noticeNo1 = Integer.parseInt(noticeNo);
//		Notice notice = noticeService.selectNotice(noticeNo1);
//		model.addAttribute("notice", notice);
//		return "notice/notice-detail";
//	}
	private String select(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
		Notice notice = noticeService.selectNotice(noticeNo);
		request.setAttribute("notice", notice);
		return "pages/notice-detail.jsp";
	}

	private String selectAll(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		List<Notice> notices = noticeService.selectNoticeAll();
		System.out.println(notices);
		request.setAttribute("notices", notices);
		return "pages/pricing.jsp";
	}
}
