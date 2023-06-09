package com.ssafy.happyhouse.user.model.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class JwtInterceptor implements HandlerInterceptor {

public static final Logger logger = LoggerFactory.getLogger(JwtInterceptor.class);
	
	private static final String HEADER_AUTH = "Authorization";

	@Autowired
	private JwtService jwtService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	    if (HttpMethod.OPTIONS.matches(request.getMethod())) {
	        return true;
	    }
	    System.out.println(request.getServletPath());
	    System.out.println(request.getMethod());
	    if ((request.getServletPath().equals("/notice") || request.getServletPath().equals("/qna")) && request.getMethod().equals("GET")) {
	    	return true;
	    }
		final String token = request.getHeader(HEADER_AUTH);
		if(token != null && jwtService.checkToken(token)){
			logger.info("토큰 사용 가능 : {}", token);
			return true;
		}else{
			logger.info("토큰 사용 불가능 : {}", token);
			return false;
//			throw new UnAuthorizedException();
		}

	}
	
}
