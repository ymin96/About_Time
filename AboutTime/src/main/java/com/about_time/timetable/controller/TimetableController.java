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
	
	//수강 과목 리스트 화면
	@RequestMapping("/subject/list.do")
	public String time(Model model,@ModelAttribute("subjectList") List<Subject> subjectList) throws Exception {
		model.addAttribute("subjectList", subjectList);
		return "timetable";
	}

	//과목 입력 화면
	@RequestMapping("/subject/addForm.do")
	public String add() throws Exception {
		return "addForm";
	}

	//과목 수정 화면
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

	//시간표 리스트 화면
	@RequestMapping(value = "schedule/list.do", method = RequestMethod.GET)
	public String combinationForm(@ModelAttribute("scheduleCheck") String scheduleCheck,
			@SessionAttribute(value = "scheduleList", required = false) ArrayList<Schedule> scheduleList,
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range,
			@RequestParam(required = false, defaultValue = "all") String convert, 
			Model model) {
		//조합된 시간표가 있는지 확인
		if (scheduleCheck.equals("false")) {
			//조합된 시간표가 없으면 조합 화면으로
			return "scheduleForm";
		} else {
			ArrayList<Schedule> scheduleListClone = (ArrayList<Schedule>)scheduleList.clone();
			
			//공강만 보여줄지 전체 다 보여줄지 선택
			if (convert.equals("only")) {
				//시간표 리스트에서 공강이 있는 시간표만 뽑아냄
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
			
			//페이지 네이션
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

	//시간표 조합
	@RequestMapping(value = "schedule/list.do", method = RequestMethod.POST)
	public String combination(Model model, @RequestParam("credit") int credit, @RequestParam("major") int major,
			@RequestParam("liberalArt") int liberal, @ModelAttribute("subjectList") List<Subject> subjectList,
			@ModelAttribute("scheduleCheck") String scheduleCheck) {

		List<Schedule> scheduleList = new ArrayList<>();
		Combination combination = new Combination(scheduleList, subjectList);
		model.addAttribute("scheduleList", combination.run(credit, major, liberal));
		
		scheduleCheck = "true"; //조합 했으므로 true로 변경
		model.addAttribute("scheduleCheck", scheduleCheck);
		return "redirect:/timetable/schedule/list.do";	//다시 시간표 리스트로 리다이렉션
	}
	
	//시간표 리스트 리셋
	@RequestMapping(value = "/schedule/reset.do", method = RequestMethod.GET)
	public String resetSchedule(@ModelAttribute("scheduleCheck") String scheduleCheck, Model model) {
		scheduleCheck = "false"; 
		model.addAttribute("scheduleCheck", scheduleCheck);
		return "redirect:/timetable/schedule/list.do";
	}
	
	@RequestMapping(value="/schedule/list/info.do")
	public String scheduleInfo(Model model,@RequestParam("idx")int idx,@ModelAttribute("scheduleList")ArrayList<Schedule> scheduleList) {
		model.addAttribute("subjects", scheduleList.get(idx-1).getSubjectList());
		return "scheduleInfo";
	}
}
