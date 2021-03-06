package com.nanushare.springproject.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

//HttpSession에 관련된 모든 설정
public class LoginInterceptor extends HandlerInterceptorAdapter {
	private static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		// 지정된 컨트롤러의 동작 이후에 처리
		HttpSession session = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		Object memberVO = modelMap.get("memberVO");
		
		if(memberVO != null){
			logger.info("new login success");
			session.setAttribute(LOGIN, memberVO);
			//response.sendRedirect("/home");
			Object dest = session.getAttribute("dest");
			logger.info("URL은 "+(dest !=null ? (String)dest:"/"));
			response.sendRedirect(dest !=null ? (String)dest:"/");
		}
	}
	
	@Override
	// 지정된 컨트롤러의 동작 이전에 가로채는 역할로 사용
	// 기존 HttpSession에 남아있는 정보가 있는 경우 삭제
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		if(session.getAttribute(LOGIN) != null){
			logger.info("clear login data before");
			session.removeAttribute(LOGIN);
		}
		return true;
	}
	
}
