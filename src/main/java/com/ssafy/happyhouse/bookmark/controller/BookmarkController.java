package com.ssafy.happyhouse.bookmark.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.bookmark.model.dto.Bookmark;
import com.ssafy.happyhouse.bookmark.model.service.BookmarkService;


@RestController
@RequestMapping("/bookmark")
public class BookmarkController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";
	
	@Autowired
	private BookmarkService bookmarkService;
	
	@DeleteMapping
	private  ResponseEntity<?> remove(@RequestParam String id)  {
		bookmarkService.remove(id);
		return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
	}
	
	@PostMapping
	private ResponseEntity<?> insert(@RequestBody Map<String, String> map)  {
		System.out.println(map);
		bookmarkService.insert(map);
		return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
	}

	@GetMapping("/detail")	//id는 dongcode
	private ResponseEntity<?> select(@RequestParam String id)  {
		Bookmark bookmark = bookmarkService.select(id);
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("bookmark", bookmark);
		resultMap.put("message", SUCCESS);
		return new ResponseEntity<Map<String, Object>>(resultMap, HttpStatus.OK);
	}
	
	@GetMapping
	private ResponseEntity<?> selectAll(@RequestParam String id)  {
		List<Bookmark> bookmarks = bookmarkService.selectAll(id);
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("bookmarks", bookmarks);
		resultMap.put("message", SUCCESS);
		return new ResponseEntity<Map<String, Object>>(resultMap, HttpStatus.OK);
	}
}
