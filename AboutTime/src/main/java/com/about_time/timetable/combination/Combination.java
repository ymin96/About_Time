package com.about_time.timetable.combination;


import java.util.List;

import com.about_time.timetable.vo.*;

import lombok.Data;

@Data
public class Combination {
	private List<Schedule> scheduleList; // ���� ����Ʈ
	private List<Subject> subjectList; // ���� ����Ʈ
	private int maxCredit; // �ִ� ����
	private int minMajor; // �ּ� ���� ����
	private int minLiberalArts; // �ּ� ���� ����

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
			// �����ٿ� ��ȣ ����
			schedule.setNum(i + 1);

			// ������ ���� üũ
			boolean visit[] = new boolean[6];

			for (Subject subject : temp) {
				List<LectureTime> lectureTimes = subject.getLectureTime();
				for (LectureTime lectureTime : lectureTimes) {
					visit[lectureTime.getDaytoInt()] = true;
				}
			}

			if (!visit[1])
				schedule.addHollyDay("��");
			if (!visit[2])
				schedule.addHollyDay("ȭ");
			if (!visit[3])
				schedule.addHollyDay("��");
			if (!visit[4])
				schedule.addHollyDay("��");
			if (!visit[5])
				schedule.addHollyDay("��");
		}
		return scheduleList;
	}

	// �ð�ǥ ������ �����ִ� �Լ�
	public void powerSet(List<Subject> subjectList, boolean[] visited, int n, int idx) {
		if (idx == n) {
			Schedule schedule = new Schedule();
			Subject subject;
			for (int i = 0; i < visited.length; i++) {
				if (visited[i] == true) {
					subject = subjectList.get(i);
					schedule.addSubject(subject);
					schedule.addSumCredit(subject.getCredit());
					if (subject.getMajor().equals("����"))
						schedule.addSumMajor(subject.getCredit());
					else
						schedule.addSumLibralArts(subject.getCredit());
				}
			}
			// ������ �������� ��ȿ���� �˻�
			if (isValid(schedule))
				scheduleList.add(schedule);
			return;
		}

		visited[idx] = false;
		powerSet(subjectList, visited, n, idx + 1);

		visited[idx] = true;
		powerSet(subjectList, visited, n, idx + 1);
	}

	// �������� ��ȿ�� ���������� �Ǵ�(�йݸ� �ٸ� ������ ��ġ����,�ð�ǥ�� ��ġ���� �Ǵ�)
	private boolean isValid(Schedule schedule) {
		int checked[][] = new int[6][10];
		// �ð�ǥ�� ������ ���ǿ� �´��� �˻�
		if ((schedule.getSumCredit() == maxCredit)
				&& (minMajor <= schedule.getSumMajor() && minLiberalArts <= schedule.getSumLibralArts())) {
			List<Subject> subjectList = schedule.getSubjectList();

			for (int i = 0; i < subjectList.size(); i++) {
				Subject subject = subjectList.get(i);
				// �̸��� ���� �йݸ� �ٸ� ������ ��ġ�� �˻�
				for (int j = i + 1; j < subjectList.size(); j++) {
					Subject temp = subjectList.get(j);
					if (subject.getTitle().equals(temp.getTitle()))
						return false;
				}

				List<LectureTime> lectureTimeList = subject.getLectureTime();

				// �ð�ǥ�� ��ġ���� �˻�
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
