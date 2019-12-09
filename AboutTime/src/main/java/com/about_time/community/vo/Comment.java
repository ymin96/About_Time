package com.about_time.community.vo;

import java.util.Date;

import lombok.Data;

@Data
public class Comment {
	int num;
	int board_num;
	String writer;
	String contents;
	Date regDate;
	int grp;
	int seq;
	String target;
}
