<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<ul class="nav nav-pills nav-stacked">
		<li role="presentation" id="subjectSideBar"><a href="/timetable/subject/list.do">과목 목록</a></li>
		<li role="presentation" id="scheduleSideBar"><a href="/timetable/schedule/list.do">시간표 목록</a></li>
		<li role="presentation"><a href="#">시간표 비교</a></li>
	</ul>
</body>
<script>
	$(document).ready(function(){
		var target = location.pathname.split("/")[2]
		if(target === "subject"){
			$('#subjectSideBar').addClass("active");
		}
		else if(target === "schedule"){
			$('#scheduleSideBar').addClass("active");
		}
	});
</script>