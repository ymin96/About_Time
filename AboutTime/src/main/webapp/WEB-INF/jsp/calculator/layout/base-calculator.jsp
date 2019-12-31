<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="/resources/bootstrap/css/kfonts2.css">
<link rel="stylesheet" href="/resources/static/css/common/layout.css">
<link rel="stylesheet" href="/resources/static/css/common/header.css">
<link rel="stylesheet" href="/resources/static/css/common/footer.css">
<link rel="stylesheet" href="/resources/static/css/common/content-edge.css">
<link rel="stylesheet" href="/resources/static/css/calculator/calculator.css">
<style>
</style>
</head>
<title>어바웃 타임</title>
<body>
	<div class="wrap">
		<header>
			<tiles:insertAttribute name='header' />
		</header>
		<div>
			<tiles:insertAttribute name='body' />
		</div>
		<footer>
			<tiles:insertAttribute name='footer' />
		</footer>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
		<script src="/resources/static/js/header.js"></script>
		<script src="/resources/static/js/calculator/calculator.js"></script>
	</div>
</body>
</html>