package com.about_time.timetable.combination;


import java.util.List;

import com.about_time.timetable.vo.*;

import lombok.Data;

@Data
public class Combination {
	private List<Schedule> scheduleList; //조합 리스트
	private List<Subject> subjectList; //과목 리스트
	private int maxCredit; //최대 학점
	private int minMajor; //최소 전공 학점
	private int minLiberalArts; //최소 교양 학점

	public Combination(List<Schedule> scheduleList, List<Subject> subjectList) {
		this.scheduleList = scheduleList;
		this.subjectList = subjectList;
		this.maxCredit = 0;
		this.minMajor = 0;
		this.minLiberalArts = 0;
	}

	public List<Schedule> run(int maxCredit, int minMajor, int minLiberalArts) {

		this.maxCredit = maxCredit;
		this.minMajor = minMajor;
		this.minLiberalArts = minLiberalArts;

		powerSet(subjectList, new boolean[subjectList.size()], subjectList.size(), 0);

		for (int i = 0; i < scheduleList.size(); i++) {
			Schedule schedule = scheduleList.get(i);
			List<Subject> temp = schedule.getSubjectList();
			//스케줄에 번호 지정
			schedule.setNum(i + 1);

			//공강인 요일 체크
			boolean visit[] = new boolean[6];

			for (Subject subject : temp) {
				List<LectureTime> lectureTimes = subject.getLectureTime();
				for (LectureTime lectureTime : lectureTimes) {
					visit[lectureTime.getDaytoInt()] = true;
				}
			}

			if (!visit[1])
				schedule.addHollyDay("월");
			if (!visit[2])
				schedule.addHollyDay("화");
			if (!visit[3])
				schedule.addHollyDay("수");
			if (!visit[4])
				schedule.addHollyDay("목");
			if (!visit[5])
				schedule.addHollyDay("금");
		}
		return scheduleList;
	}

	// 시간표 조합을 구해주는 함수
	public void powerSet(List<Subject> subjectList, boolean[] visited, int n, int idx) {
		if (idx == n) {
			Schedule schedule = new Schedule();
			Subject subject;
			for (int i = 0; i < visited.length; i++) {
				if (visited[i] == true) {
					subject = subjectList.get(i);
					schedule.addSubject(subject);
					schedule.addSumCredit(subject.getCredit());
					if (subject.getMajor().equals("전공"))
						schedule.addSumMajor(subject.getCredit());
					else
						schedule.addSumLibralArts(subject.getCredit());
				}
			}
			// 구해진 스케줄이 유효한지 검사
			if (isValid(schedule))
				scheduleList.add(schedule);
			return;
		}

		visited[idx] = false;
		powerSet(subjectList, visited, n, idx + 1);

		visited[idx] = true;
		powerSet(subjectList, visited, n, idx + 1);
	}

	//스케줄이 유효한 스케줄인지 판단(분반만 다른 과목이 겹치는지, 시간표가 겹치는지 판단)
	private boolean isValid(Schedule schedule) {
		int checked[][] = new int[6][10];
		// 시간표의 학점이 조건에 맞는지 검사
		if ((schedule.getSumCredit() == maxCredit)
				&& (minMajor <= schedule.getSumMajor() && minLiberalArts <= schedule.getSumLibralArts())) {
			List<Subject> subjectList = schedule.getSubjectList();

			for (int i = 0; i < subjectList.size(); i++) {
				Subject subject = subjectList.get(i);
				// 이름은 같고 분반만 다른 과목이 겹치는지 검사
				for (int j = i + 1; j < subjectList.size(); j++) {
					Subject temp = subjectList.get(j);
					if (subject.getTitle().equals(temp.getTitle()))
						return false;
				}

				List<LectureTime> lectureTimeList = subject.getLectureTime();

				// 시간표가 겹치는지 검사
				for (int j = 0; j < lectureTimeList.size(); j++) {
					LectureTime lectureTime = lectureTimeList.get(j);
					if (checked[lectureTime.getDaytoInt()][lectureTime.getTime()] == 1)
						return false;
					else
						checked[lectureTime.getDaytoInt()][lectureTime.getTime()] = 1;
				}
			}

			return true;
		}
		return false;
	}
}
