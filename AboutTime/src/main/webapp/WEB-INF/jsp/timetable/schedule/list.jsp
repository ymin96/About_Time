<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<body class="list">
	<div class="add-subject">
		<a class="btn btn-primary" href="/timetable/subject/addForm.do"
			role="button">과목추가 <span class="glyphicon glyphicon-plus"
			aria-hidden="true"></span></a>
	</div>
	<div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>No</th>
					<th>전체 학점</th>
					<th>전공 학점</th>
					<th>교양 학점</th>
					<th>공강 요일</th>
					<th>상세보기</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="schedule" items="${scheduleList}" varStatus="status">
					<tr class='subject-row'>
						<th>${status.count}</th>
						<th>${schedule.sumCredit}점</th>
						<th>${schedule.sumMajor }점</th>
						<th>${schedule.sumLibralArts }점</th>
						<th><c:forEach var="day" items="${schedule.hollyDay}">${day} </c:forEach></th>
						<th>보기</th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>