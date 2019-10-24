<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<div class="container">
		<div class="topbar">
			<ul class="login-bar">
				<li><a href="#">로그인</a></li>
				<li><a href="#">회원가입</a></li>
			</ul>
		</div>
	</div>

	<nav class="navbar navbar-default navbar-static-top" role="navigation" id="navbar-scroll">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/main.do"><img
					src="/resources/static/img/logo.png" alt="AboutTime"></a>
			</div>

			<div class="collapse navbar-collapse navbar-right"
				id="navbar-1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="/timetable/subject/list.do">시간표</a></li>
					<li><a href="/carte/list.do">식단표</a></li>
					<li><a href="#">게시판</a></li>
					<li><a href="#">점심내기</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>