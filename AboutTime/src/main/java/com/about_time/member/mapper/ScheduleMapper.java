package com.about_time.member.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.about_time.member.vo.MemberSchedule;

@Mapper
@Repository
public interface ScheduleMapper {
	public void insertSchedule(MemberSchedule schedule);
}
