package com.about_time.timetable.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.about_time.timetable.vo.Subject;

@Component
public class TimetableInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		
		if(session.isNew()) {
			List<Subject> subjectList = new ArrayList<Subject>();
			session.setAttribute("subjectList", subjectList);
			session.setAttribute("scheduleCheck", "no");
		}
		
		return true;
	}

	
}
