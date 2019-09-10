package com.about_time.timetable.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.about_time.timetable.vo.LectureTime;
import com.about_time.timetable.vo.Subject;

@RestController
@RequestMapping("/timetable")
public class TimetableRestController {
	
	@Autowired
	private ServletContext servletContext;

	@RequestMapping(value="/subjects/all", method=RequestMethod.GET)
	public ResponseEntity<List<Subject>> listSubjects(){
		List<Subject> subjectList = (ArrayList<Subject>)servletContext.getAttribute("subjectList");
		return new ResponseEntity<List<Subject>>(subjectList,HttpStatus.OK);
	}
	
	@RequestMapping(value="/subjects", method=RequestMethod.POST)
	public void addSubject(@RequestBody Subject subject) {
		System.out.println(subject.getTitle());
		System.out.println(subject.getCredit());
		List<LectureTime> lectureTimes = subject.getLectureTime();
		for(LectureTime temp: lectureTimes) {
			System.out.println(temp.getDay());
			System.out.println(temp.getTime());
		}
	}
}
