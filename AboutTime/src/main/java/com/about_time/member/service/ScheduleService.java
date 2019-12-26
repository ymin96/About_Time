package com.about_time.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.about_time.member.mapper.ScheduleMapper;
import com.about_time.member.vo.MemberSchedule;

@Service
public class ScheduleService {

	@Autowired
	ScheduleMapper scheduleMapper;
	
	public void insertSchedule(MemberSchedule schedule) {
		scheduleMapper.insertSchedule(schedule);
	}
}
