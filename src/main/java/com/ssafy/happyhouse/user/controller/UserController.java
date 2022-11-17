package com.ssafy.happyhouse.user.controller;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssafy.happyhouse.user.model.dto.User;
import com.ssafy.happyhouse.user.model.service.UserService;
import com.ssafy.happyhouse.util.encryption.RSAUtil;

@Controller
@RequestMapping("/user")
public class UserController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	private UserService userService;
	
	@Autowired
	public UserController(UserService userService) {
		// TODO Auto-generated constructor stub
		this.userService = userService;
	}
	
	private RSAUtil rsaUtil = RSAUtil.getInstance();

	@GetMapping("/find")
	private String findpassword() {
		return "user/find-password";
	}
	
	@PostMapping("/find")
	private String findpassword(@RequestParam Map<String, String> map, Model model) {
		String find = userService.findPassword(map);
		String view;
		if(find!=null) {
			model.addAttribute("msg", find);
			view="user/find-password";
			System.out.println(find);
		}else {
			model.addAttribute("msg", "입력 정보를 다시 확인해 주세요.");
			view="user/find-password";
			System.out.println(find);
		}
		return view;
	}
	
	//로그인 페이지 진입
	@GetMapping("/login")
	private String login() {
		return "user/login";
	}
	
	//로그인 시도
	@PostMapping("/login")
	private String login( User user, HttpSession session, Model model, HttpServletRequest request, HttpServletResponse response) {
		String view = "/index";
		String idsave = request.getParameter("idsave");
		Cookie cookie = new Cookie("id", user.getId());
		if(idsave==null) {	//아이디를 저장하지 않는 경우
			//혹시 발행한 쿠키가 있다면 삭제
			cookie.setMaxAge(0);
		}else {	//아이디를 저장하는 경우
			cookie.setMaxAge(100000000);
		}
		response.addCookie(cookie);
		System.out.println(cookie);
		User loginUser = userService.selectUser(user);
		
		if (loginUser != null && user.getPass().equals(loginUser.getPass())) {
			session.setAttribute("userInfo", loginUser);
			view = "redirect:/";
		} else {
			model.addAttribute("msg", "로그인 실패");
			view = "user/login";
		}
		
		return view;
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/regist")
	public String regist(Model model) {
		return "/user/regist";
	}
	
	@PostMapping("/regist")
	private String registForm(User user, Model model) {
		
//		HttpSession session = request.getSession();
//		PrivateKey key = (PrivateKey) session.getAttribute("RSAprivatteKey");
//		if (key != null) {		//기존 key 파기
//			session.removeAttribute("RSAprivateKey");
//		}
//		RSA rsa = rsaUtil.createRSA();
//		session.setAttribute("modulus", rsa.getModulus());
//		session.setAttribute("exponent", rsa.getExponent());
//        session.setAttribute("RSAprivateKey", rsa.getPrivateKey());	//??
		userService.insertUser(user);
		System.out.println(user);
//		model.addAttribute("msg", "회원가입 완료!");
		return "/user/regist";
	}
	
	@GetMapping("/idCheck")
	public @ResponseBody int idCheck(@RequestParam String userid) {
		int count = userService.idCheck(userid);
		return count;
	}
	
	@GetMapping("/remove")
	private String remove() {
		return "user/delete-account";
	}
	
	@PostMapping("/remove")
	public String remove(HttpSession session, Model model) {
		User user = (User)session.getAttribute("userInfo");
		String loginId = user.getId();
		System.out.println(loginId);
		if (loginId != null) {
			userService.removeUser(loginId);
			session.invalidate();
			model.addAttribute("msg", "아이디:"+loginId+" 계정 탈퇴가 완료되었습니다.");
		} else {
			model.addAttribute("msg", "다시 시도해주세요.");
		}
		return "redirect:/";
	}

	@GetMapping("/update")
	public String updateForm(HttpSession session, Model model) {
		User user = (User)session.getAttribute("userInfo");
		logger.debug("login시도..................:{}", user);
		User rs = userService.selectUser(user);
		model.addAttribute("user", rs);
		return "user/profile-settings";
	}

	@PostMapping("/update")
	public String update(User user, HttpSession session) {
		
		if(session !=null) {
			session.setAttribute("userInfo", user);
		}
		System.out.println("update to..."+user);
		userService.updateUser(user);
		return "redirect:/user/update";
	}
	
}