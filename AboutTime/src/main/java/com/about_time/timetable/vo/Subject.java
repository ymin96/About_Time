package com.about_time.timetable.vo;

import java.util.List;

import lombok.Data;

@Data
public class Subject {
	private String title;          //�����
    private int division;           //�й�
    private int credit;             //����
    private String major;            //����
    private List<LectureTime> lectureTime;         //���� �ð�
}
