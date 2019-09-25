<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<body class="list">
	<div id="reset-schedule">
		<a class="btn btn-primary" href="/timetable/schedule/reset.do" role="button" >초기화 <span class="glyphicon glyphicon-refresh"
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
				<c:forEach var="schedule" items="${schedules}" varStatus="status">
					<tr class="subject-row <c:out value="${fn:length(schedule.hollyDay) != 0? 'success':'' }"/>">
						<th>${status.count + pagination.startList}</th>
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
	<!-- pagination{s} -->
	<div id="paginationBox">
		<ul class="pagination">
			<c:if test="${pagination.prev}">
				<li class="page-item"><a class="page-link" href="#"
					onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
			</c:if>
			<c:forEach begin="${pagination.startPage}"
				end="${pagination.endPage}" var="idx">
				<li
					class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a
					class="page-link" href="#"
					onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">
						${idx} </a></li>
			</c:forEach>
			<c:if test="${pagination.next}">
				<li class="page-item"><a class="page-link" href="#"
					onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')">Next</a></li>
			</c:if>
		</ul>
	</div>
	<!-- pagination{e} -->
</body>
<script>
//이전 버튼 이벤트
function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;

		var url = "${pageContext.request.contextPath}/timetable/schedule/list.do";

		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;
	}

  //페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "${pageContext.request.contextPath}/timetable/schedule/list.do";
		
		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;	
	}

	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;

		var url = "${pageContext.request.contextPath}/timetable/schedule/list.do";
		
		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;
	}
</script>