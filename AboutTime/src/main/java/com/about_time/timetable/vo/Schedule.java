package com.about_time.timetable.vo;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class Schedule {
	private int num; // 구분 번호
	private List<Subject> subjectList; // 과목 리스트
	private int sumCredit; // 학점 합계 
	private int sumMajor; // 전공 학점 합계
	private int sumLibralArts; // 교양 학점 합계
	private List<String> hollyDay; // 공강 요일
	
	public Schedule() {
        this.num = -1;
        this.sumCredit =0;
        this.sumLibralArts=0;
        this.sumMajor=0;
        this.subjectList = new ArrayList<Subject>();
        this.hollyDay = new ArrayList<String>();
    }

    public Schedule(ArrayList<Subject> subjectList, int sumCredit, int sumMajor, int sumLibralArts) {
        this.subjectList.addAll(subjectList);
        this.sumCredit = sumCredit;
        this.sumMajor = sumMajor;
        this.sumLibralArts = sumLibralArts;
    }
	
	public boolean isTitle(String title){
        for(Subject subject : subjectList){
            if(subject.getTitle().equals(title))
                return true;
        }
        return false;
    }
	
	public void addSubject(Subject subject){
        this.subjectList.add(subject);
    }

    public void addSumCredit(int credit){
        this.sumCredit+=credit;
    }

    public void addSumMajor(int major){
        this.sumMajor+=major;
    }

    public void addSumLibralArts(int num){
        this.sumLibralArts+=num;
    }

    public void addHollyDay(String hollyDay){
        this.hollyDay.add(hollyDay);
    }
    
    
}
