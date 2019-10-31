package com.about_time.member.vo;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class Member {
	private long id;
	private String uid;
	private String upw;
	private String email;
	private Date regDate;
	private Date updateDate;
	private List<MemberRole> roles;
	
}
