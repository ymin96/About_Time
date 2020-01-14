package com.about_time.community.vo;


import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class Board {
	private int num;	//게시글 번호
	private String title;	//제목
	private String contents;	//내용
	private String university;	//학교
	private Date regDate;	//글 작성 시간
	private Date updateDate;	//글 최종 수정 시간
	private String simpleUpdateDate; //게시판 상제 내용에 보여질 Date 심플 포멧
	private String simpleListDate; //게시글 리스트에 보여질 Date 심플 포멧
	private String writer;	//작성자
	private int hits;	//조회수
	private String category;	//분류
	private int commentNum;	//댓글수
	private String uid; //실제 등록 ID
	
	public void setUpdateDate(Date date) {
		this.updateDate = date;
		//게시글 상세보기에 보여질 Date 초기화
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd(hh:mm:ss)");
		this.simpleUpdateDate = format.format(date);
		
		//게시글 리스트에 보여질 Date 초기화
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat timeFormat = new SimpleDateFormat("hh:mm");
		String today = dateFormat.format(new Date());
		if(today.equals(dateFormat.format(date)))
			this.simpleListDate = timeFormat.format(date);
		else
			this.simpleListDate = dateFormat.format(date);
		
	}
}
