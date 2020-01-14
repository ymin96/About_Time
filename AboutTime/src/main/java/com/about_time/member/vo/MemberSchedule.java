package com.about_time.member.vo;

import lombok.Data;

@Data
public class MemberSchedule {
	private String id;
	private String uid;
	private String start;
	private String end;
	private String title;
	private String contents;
}
