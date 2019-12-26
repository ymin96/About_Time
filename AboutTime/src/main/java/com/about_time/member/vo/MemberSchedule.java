package com.about_time.member.vo;

import lombok.Data;

@Data
public class MemberSchedule {
	private int num;
	private String uid;
	private String startDate;
	private String endDate;
	private String title;
	private String contents;
}
