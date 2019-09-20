package com.about_time.timetable.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.about_time.timetable.vo.Subject;

@Controller
@RequestMapping("/timetable")
@SessionAttributes("subjectList")
public class TimetableController {

	@RequestMapping("/subject/list.do")
	public ModelAndView time(@ModelAttribute("subjectList")List<Subject> subjectList) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("subjectList", subjectList);
		mv.setViewName("timetable");
		return mv;
	}
	
	@RequestMapping("/subject/addForm.do")
	public ModelAndView add() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addForm");
		return mv;
	}
	
	@RequestMapping("/subject/update.do")
	public ModelAndView update(@RequestParam("idx")int idx, @ModelAttribute("subjectList") List<Subject> subjectList) throws Exception{
		ModelAndView mv = new ModelAndView();
		Subject subject = subjectList.get(idx);
		mv.addObject("idx", idx);
		mv.addObject("subject", subject);
		mv.setViewName("updateForm");
		return mv;
	}
}
