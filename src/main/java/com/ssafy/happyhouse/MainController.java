package com.ssafy.happyhouse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping({"/", "index", "/front/**"})
	public String index() {
		return "forward:index.html";
	}
//	@GetMapping({"/qnas"})
//	public String qna() {
//		return "qna";
//	}
	@GetMapping("/pages/about-us")
	public String about() {
		return "pages/about-us";
	}
	
	@GetMapping("/pages/sitemap")
	public String sitemap() {
		return "pages/sitemap";
	}
}
