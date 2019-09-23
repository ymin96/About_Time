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
		<table class="table">
			<thead>
				<tr>
					<th>No</th>
					<th>과목명</th>
					<th>전공 구분</th>
					<th>학점</th>
					<th>분반</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="subject" items="${subjectList}" varStatus="status">
					<tr class='subject-row'>
						<th>${status.count}</th>
						<th><a
							href="/timetable/subject/update.do?idx=${status.index}">${subject.title}</a></th>
						<th>${subject.major}</th>
						<th>${subject.credit}</th>
						<th>${subject.division}</th>
						<th><a href="javascript:void(0);" onclick="callRemove(this)"
							value="${status.index}">삭제</a></th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script>
	function callRemove(arg) {

		$.ajax({
			type : "DELETE",
			url : "${contextPath}/timetable/subjects/" + $(arg).attr('value'),
			contentType : "application/json; charset=UTF-8",
			success : function() {
				$(arg).parent().parent().remove();
				$('.subject-row').each(function(index, item) {
					$(item).find('th:first').text(index + 1);
					$(item).find('a').attr('value', index);
				});
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	}
</script>