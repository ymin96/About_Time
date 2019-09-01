<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>부트스트랩 적용</title>
<link rel="stylesheet" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
</style>
</head>
<body>
	<div class="container">
		<header>
			<tiles:insertAttribute name="header" />
		</header>

		<div class="col-md-12">
			<tiles:insertAttribute name="body" />
		</div>
	</div>
	<footer>
		<tiles:insertAttribute name="footer" />
	</footer>
	<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>