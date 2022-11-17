package com.ssafy.happyhouse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping({"/", "index"})
	public String index() {
		return "index";
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
