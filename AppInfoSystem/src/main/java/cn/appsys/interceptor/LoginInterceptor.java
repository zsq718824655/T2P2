package cn.appsys.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import cn.appsys.utils.Constants;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String requestURI = request.getRequestURI();
		if(requestURI.indexOf("login")==-1&&requestURI.indexOf("Login")==-1&&requestURI.indexOf("register")==-1&&requestURI.indexOf("Login")==-1&&requestURI.indexOf("queryByUser")==-1) {//请求的的进行验证拦截
			Object obj = request.getSession().getAttribute(Constants.USER_SESSION);
			if(obj==null) {
				response.sendRedirect(request.getContextPath()+"/Login");
			return false;	
			
			}
			
		}
		return true;
	}

	
	
	
}
