package com.about_time.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.about_time.member.mapper.ScheduleMapper;

@Service
public class ScheduleService {

	@Autowired
	ScheduleMapper scheduleMapper;
}
