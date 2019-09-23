package com.about_time.timetable.vo;

import lombok.Data;

@Data
public class LectureTime {
	private String day;         //강의 요일
    private int time;           //강의 교시
    
    
    
    public int getDaytoInt(){
        if(this.day.equals("월"))
            return 1;
        else if(this.day.equals("화"))
            return 2;
        else if(this.day.equals("수"))
            return 3;
        else if(this.day.equals("목"))
            return 4;
        else if(this.day.equals("금"))
            return 5;
        return -1;
    }


    
    
	public LectureTime(String day, int time) {
		super();
		this.day = day;
		this.time = time;
	}


	public LectureTime() {
		super();
	}
}
