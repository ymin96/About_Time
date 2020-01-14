<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="sidebar">
		<ul>
			<li class="list-group-item" id="modifyInfoSideBar"><a href="/member/modifyInfo">회원 정보 수정</a></li>
			<li class="list-group-item" id="modifyPWSideBar"><a href="/member/modifyPW">비밀번호 수정</a></li>
			<li class="list-group-item"><a href="#">시간표 수정</a></li>
		</ul>
	</div>
</body>
<script>
	$(document).ready(function(){
		var target = location.pathname.split("/")[2]
		if(target === "modifyInfo"){
			$('#modifyInfoSideBar').addClass("active");
		}
		else if(target === "modifyPW"){
			$('#modifyPWSideBar').addClass("active");
		}
	});
</script>