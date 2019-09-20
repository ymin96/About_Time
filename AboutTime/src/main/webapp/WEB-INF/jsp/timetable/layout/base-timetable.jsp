<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html lang="ko-kr">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="/resources/bootstrap/css/kfonts2.css">
<link rel="stylesheet" href="/resources/static/css/layout.css">
<link rel="stylesheet" href="/resources/static/css/header.css">
<link rel="stylesheet" href="/resources/static/css/footer.css">
<link rel="stylesheet"
	href="/resources/static/css/timetable/timetable-body.css">
<link rel="stylesheet" href="/resources/static/css/sidebar.css">
<link rel="stylesheet"
	href="/resources/static/css/timetable/registerForm-body.css">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
</style>
</head>
<title>어바웃 타임</title>
<body>
	<div class="wrap">
		<header>
			<tiles:insertAttribute name='header' />
		</header>
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<div class="sidebar">
						<tiles:insertAttribute name='sidebar' />
					</div>
				</div>
				<div class="col-md-10">
					<div class="body">
						<tiles:insertAttribute name='body' />
					</div>
				</div>
			</div>
		</div>
		<footer>
			<tiles:insertAttribute name='footer' />
		</footer>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="/resources/static/js/timetable.js"></script>

</body>
</html>