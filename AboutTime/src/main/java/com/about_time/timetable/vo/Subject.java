package com.about_time.timetable.vo;

import java.util.List;

import lombok.Data;

@Data
public class Subject {
	private int s_num;				//과목 번호
	private String title;          //과목명
    private int division;           //분반
    private int credit;             //학점
    private String major;            //전공
    private List<LectureTime> lectureTime;         //강의 시간
}
