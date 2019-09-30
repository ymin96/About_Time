package com.about_time.timetable.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.about_time.common.Pagination;
import com.about_time.timetable.combination.Combination;
import com.about_time.timetable.vo.Schedule;
import com.about_time.timetable.vo.Subject;

@Controller
@RequestMapping("/timetable")
@SessionAttributes({ "subjectList", "scheduleList", "scheduleCheck" })
public class TimetableController {

	@RequestMapping("/subject/list.do")
	public ModelAndView time(@ModelAttribute("subjectList") List<Subject> subjectList) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("subjectList", subjectList);
		mv.setViewName("timetable");
		return mv;
	}

	@RequestMapping("/subject/addForm.do")
	public ModelAndView add() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addForm");
		return mv;
	}

	@RequestMapping("/subject/update.do")
	public ModelAndView update(@RequestParam("idx") int idx, @ModelAttribute("subjectList") List<Subject> subjectList)
			throws Exception {
		ModelAndView mv = new ModelAndView();
		Subject subject = subjectList.get(idx);
		mv.addObject("idx", idx);
		mv.addObject("subject", subject);
		mv.setViewName("updateForm");
		return mv;
	}

	@RequestMapping(value = "schedule/list.do", method = RequestMethod.GET)
	public String combinationForm(@ModelAttribute("scheduleCheck") String scheduleCheck,
			@SessionAttribute(value = "scheduleList", required = false) ArrayList<Schedule> scheduleList,
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range,
			@RequestParam(required = false, defaultValue = "all") String convert, 
			Model model) {
		if (scheduleCheck.equals("no")) {
			return "scheduleForm";
		} else {
			ArrayList<Schedule> scheduleListClone = (ArrayList<Schedule>)scheduleList.clone();
			
			if (convert.equals("only")) {
				for (Iterator<Schedule> it = scheduleListClone.iterator(); it.hasNext();) {
					Schedule value = it.next();
					if (value.getHollyDay().size() == 0) {
						it.remove();
					}
				}
				model.addAttribute("convert", "only");
			}
			else
				model.addAttribute("convert", "all");
			
			int listCnt = scheduleListClone.size();
			Pagination pagination = new Pagination();
			pagination.pageInfo(page, range, listCnt);
			model.addAttribute("pagination", pagination);

			List<Schedule> schedules = new ArrayList<Schedule>();
			for (int i = 0; i < pagination.getListSize(); i++) {
				if (i + pagination.getStartList() < scheduleListClone.size())
					schedules.add(scheduleListClone.get(i + pagination.getStartList()));
				else
					break;
			}

			model.addAttribute("schedules", schedules);

			return "scheduleList";
		}
	}

	@RequestMapping(value = "schedule/list.do", method = RequestMethod.POST)
	public String combination(Model model, @RequestParam("credit") int credit, @RequestParam("major") int major,
			@RequestParam("liberalArt") int liberal, @ModelAttribute("subjectList") List<Subject> subjectList,
			@ModelAttribute("scheduleCheck") String scheduleCheck) {

		List<Schedule> scheduleList = new ArrayList<>();
		Combination combination = new Combination(scheduleList, subjectList);
		model.addAttribute("scheduleList", combination.run(credit, major, liberal));

		scheduleCheck = "yes";
		model.addAttribute("scheduleCheck", scheduleCheck);
		return "redirect:/timetable/schedule/list.do";
	}

	@RequestMapping(value = "/schedule/reset.do", method = RequestMethod.GET)
	public String resetSchedule(@ModelAttribute("scheduleCheck") String scheduleCheck, Model model) {
		scheduleCheck = "no";
		model.addAttribute("scheduleCheck", scheduleCheck);
		return "redirect:/timetable/schedule/list.do";
	}
}
