package com.about_time.community.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class Comment {
	int num;
	int board_num;
	String writer;
	String contents;
	Date regDate;
	String simpleRegDate;
	int grp;
	int seq;
	String target;
	
	public void setRegDate(Date date) {
		this.regDate = date;
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd(hh:mm:ss a)");
		this.simpleRegDate = format.format(date);
	}
}
