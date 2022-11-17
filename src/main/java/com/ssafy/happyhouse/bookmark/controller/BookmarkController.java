package com.ssafy.happyhouse.bookmark.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.happyhouse.bookmark.model.dto.Bookmark;
import com.ssafy.happyhouse.bookmark.model.service.BookmarkService;
import com.ssafy.happyhouse.user.model.dto.User;


@Controller
@RequestMapping("/bookmark")
public class BookmarkController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private BookmarkService bookmarkService;
	
       
	@GetMapping("/remove")
	private String remove(@RequestParam String id)  {
		bookmarkService.remove(id);
		return "redirect:/bookmark/selectAll";
	}
	
//	@DeleteMapping("/{id}")
//	private String remove(@RequestParam String id)  {
//		bookmarkService.remove(id);
//		return "redirect:/bookmark/selectAll";
//	}
	
	@PostMapping("/insert")
	private String insert(@RequestParam Map<String, String> map, HttpSession session)  {
		String dong = map.get("dong");
		User user = (User)session.getAttribute("userInfo");
		String userid = user.getId();
		Map<String, String> insertMap = new HashMap<>() ;
		insertMap.put("userid", userid);
		insertMap.put("dong", dong);
		bookmarkService.insert(insertMap);
		return "redirect:/bookmark/selectAll";
	}

	@GetMapping("/search")
	private String select(@RequestParam Map<String, String> user, Model model)  {
//		int id = Integer.parseInt(user.get("id"));
//		String userid = user.get("userid");
		System.out.println(user);
		Bookmark bookmark = bookmarkService.select(user);
		System.out.println(bookmark);
		model.addAttribute("bookmark", bookmark);
		return "user/bookmarked-area-info";
	}
	
	@GetMapping("/selectAll")
	private String selectAll(HttpSession session, Model model)  {
		User user = (User)session.getAttribute("userInfo");
		String userid = user.getId();
		List<Bookmark> bookmarks = bookmarkService.selectAll(userid);
		model.addAttribute("bookmarks", bookmarks);
		return "user/bookmarked-items";
	}
}
