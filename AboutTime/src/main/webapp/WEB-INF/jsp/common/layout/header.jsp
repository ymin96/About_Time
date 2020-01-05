<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="container">
		<div class="topbar">
			<ul class="login-bar">
				<c:choose>
					<c:when test="${sessionScope.ID == null}">
						<li><a href="/login">로그인</a></li>
						<li><a href="/register">회원가입</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="/member/modifyInfo">내 정보</a></li>
						<li><a href="/logout">로그아웃</a></li>
					</c:otherwise>
				</c:choose>

			</ul>
		</div>
	</div>

	<nav class="navbar navbar-default navbar-static-top" role="navigation"
		id="navbar-scroll">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/main"><img
					src="/resources/static/img/logo.png" alt="AboutTime"></a>
			</div>

			<div class="collapse navbar-collapse navbar-right"
				id="navbar-1-collapse">
				<ul class="nav navbar-nav">
					<li id="timetable" class="disable"><a href="/timetable/subject/list">시간표</a></li>
					<li id="carte" class="disable"><a href="/carte/list">식단표</a></li>
					<li id="community" class="disable"><a href="/community">게시판</a></li>
					<li id="calculator" class="disable"><a href="/calculator">학점계산기</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>