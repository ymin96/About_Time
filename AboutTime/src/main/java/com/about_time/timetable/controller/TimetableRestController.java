package com.about_time.timetable.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.about_time.timetable.vo.LectureTime;
import com.about_time.timetable.vo.Subject;

@RestController
@RequestMapping("/timetable")
@SessionAttributes("subjectList")
public class TimetableRestController {

	@RequestMapping(value="/subjects/all", method=RequestMethod.GET)
	public ResponseEntity<List<Subject>> listSubjects(@ModelAttribute("subjectList")List<Subject> subjectList){
		return new ResponseEntity<List<Subject>>(subjectList,HttpStatus.OK);
	}
	
	@RequestMapping(value="/subjects", method=RequestMethod.POST)
	public void addSubject(@RequestBody Subject subject, Model model, @ModelAttribute("subjectList")List<Subject> subjectList) {
		subject.setS_num(subjectList.size()+1);
		subjectList.add(subject);
		model.addAttribute("subjectList", subjectList);
	}
	
	public boolean deleteSubject(){
		
		return true;
	}
}
