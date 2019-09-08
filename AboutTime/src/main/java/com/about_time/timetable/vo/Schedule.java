package com.about_time.timetable.vo;

import java.util.List;

import lombok.Data;

@Data
public class Schedule {
	private int num; // ���� ��ȣ
	private List<Subject> subjectList; // ���� ����Ʈ
	private int sumCredit; // ���� �հ�
	private int sumMajor; // ���� ���� �հ�
	private int sumLibralArts; // ���� ���� �հ�
	private List<String> hollyDay; // ���� ����
	
	
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
