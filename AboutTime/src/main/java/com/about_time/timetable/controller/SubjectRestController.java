package com.about_time.timetable.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.about_time.timetable.vo.Subject;

@RestController
@RequestMapping("/subjects")
public class SubjectRestController {
	
	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping(value="/all", method=RequestMethod.GET)
	public ResponseEntity<List<Subject>> listSubjects(){
		List<Subject> subjectList = (List<Subject>)servletContext.getAttribute("subjectList");
		return new ResponseEntity(subjectList,HttpStatus.OK);
	}
}
