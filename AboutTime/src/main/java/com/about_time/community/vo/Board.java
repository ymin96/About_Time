package com.about_time.community.vo;


import java.util.Date;

import lombok.Data;

@Data
public class Board {
	private int num;
	private String title;
	private String contents;
	private String university;
	private Date regDate;
	private Date updateDate;
	private String writer;
	private int hits;
	private String category;
	private int commentNum;
}
