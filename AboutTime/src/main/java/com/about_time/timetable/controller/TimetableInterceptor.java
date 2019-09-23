package com.about_time.timetable.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.about_time.timetable.vo.LectureTime;
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
			List<LectureTime> lectureTimes;
			LectureTime lectureTime;
			Subject subject;
			
			subject = new Subject();
			subject.setTitle("공업 수학");
			subject.setCredit(3);
			subject.setDivision(1);
			subject.setMajor("전공");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("월",1);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("월",2);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("화",3);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("화",4);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("데이터 통신");
			subject.setCredit(3);
			subject.setDivision(1);
			subject.setMajor("전공");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("목",1);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("목",2);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("화",1);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("화",2);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("운영 체제");
			subject.setCredit(3);
			subject.setDivision(1);
			subject.setMajor("전공");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("수",1);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("수",2);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("금",3);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("금",4);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("데이터 구조");
			subject.setCredit(3);
			subject.setDivision(2);
			subject.setMajor("전공");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("수",1);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("수",2);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("월",6);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("월",7);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("공업 수학");
			subject.setCredit(3);
			subject.setDivision(2);
			subject.setMajor("전공");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("목",1);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("목",2);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("수",5);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("수",6);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("운영 체제");
			subject.setCredit(3);
			subject.setDivision(2);
			subject.setMajor("전공");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("금",1);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("금",2);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("수",3);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("수",4);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("논리 회로");
			subject.setCredit(3);
			subject.setDivision(1);
			subject.setMajor("전공");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("수",6);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("수",7);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("월",3);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("월",4);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("데이터 통신");
			subject.setCredit(3);
			subject.setDivision(2);
			subject.setMajor("전공");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("목",6);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("목",7);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("화",3);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("화",4);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("데이터 구조");
			subject.setCredit(3);
			subject.setDivision(1);
			subject.setMajor("전공");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("월",8);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("월",9);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("수",3);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("수",4);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("실용 영어");
			subject.setCredit(3);
			subject.setDivision(1);
			subject.setMajor("교양");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("금",8);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("금",9);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("목",3);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("목",4);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("논리 회로");
			subject.setCredit(3);
			subject.setDivision(2);
			subject.setMajor("전공");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("월",1);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("월",2);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("수",3);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("수",4);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("객체 지향");
			subject.setCredit(3);
			subject.setDivision(2);
			subject.setMajor("전공");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("화",5);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("화",6);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("목",5);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("목",6);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("객체 지향");
			subject.setCredit(3);
			subject.setDivision(1);
			subject.setMajor("전공");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("목",8);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("목",9);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("화",8);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("화",9);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("채플");
			subject.setCredit(2);
			subject.setDivision(1);
			subject.setMajor("교양");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("화",8);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("화",9);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			subject = new Subject();
			subject.setTitle("진로 탐색");
			subject.setCredit(1);
			subject.setDivision(1);
			subject.setMajor("교양");
			lectureTimes = new ArrayList<>();
			lectureTime = new LectureTime("수",8);
			lectureTimes.add(lectureTime);
			lectureTime = new LectureTime("수",9);
			lectureTimes.add(lectureTime);
			subject.setLectureTime(lectureTimes);
			subjectList.add(subject);
			
			session.setAttribute("subjectList", subjectList);
			session.setAttribute("scheduleCheck", "no");
		}
		
		return true;
	}

	
}
