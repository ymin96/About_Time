package com.about_time.timetable.vo;

import lombok.Data;

@Data
public class LectureTime {
	private String day;         //���� ����
    private int time;           //���� ����
    
    public int getDaytoInt(){
        if(this.day.equals("��"))
            return 1;
        else if(this.day.equals("ȭ"))
            return 2;
        else if(this.day.equals("��"))
            return 3;
        else if(this.day.equals("��"))
            return 4;
        else if(this.day.equals("��"))
            return 5;
        return -1;
    }
}
