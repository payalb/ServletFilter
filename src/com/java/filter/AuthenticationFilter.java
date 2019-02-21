package com.java.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class AuthenticationFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req= (HttpServletRequest) request;
		if(!req.getPathInfo().contains("login.jsp")) {
			HttpSession session=req.getSession();
			String username=(String) session.getAttribute("username");
			String password=(String) session.getAttribute("password");
			if(username!= null && password!= null && username.trim().length()!=0) {
				chain.doFilter(request, response);
			}else {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}
		
	}

}
