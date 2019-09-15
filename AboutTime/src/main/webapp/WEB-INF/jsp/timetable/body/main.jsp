<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<body>
	<div class="add-subject">
		<a class="btn btn-primary" href="#" role="button" ><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>
	</div>
	<div>
	<table class="table">
		<thead>
			<tr>
				<th>과목명</th>
				<th>전공 구분</th>
				<th>학점</th>
				<th>분반</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="subject" items="${subjectList}">
				<tr>
					<th>${subject.title}</th>
					<th>${subject.major}</th>
					<th>${subject.credit}</th>
					<th>${subject.division}</th>
					<th>삭제</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
</body>