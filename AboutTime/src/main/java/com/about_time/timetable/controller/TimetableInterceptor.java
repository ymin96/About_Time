package com.about_time.timetable.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.about_time.timetable.vo.Subject;

@Component
public class TimetableInterceptor extends HandlerInterceptorAdapter{

	@Autowired
	private ServletContext servletContext;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		if(servletContext.getAttribute("subjectList") == null) {
			List<Subject> subjectList = new ArrayList<Subject>();
			servletContext.setAttribute("subjectList", subjectList);
		}
		return true;
	}

	
}
