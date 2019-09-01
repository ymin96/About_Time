<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html lang="ko-kr">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="/resources/bootstrap/css/kfonts2.css">
</head>
<title>헤더</title>
</head>
<body>
	<div class="container">
		<!-- Single button -->
		<h1>버튼 드롭다운</h1>
		<h4>일반적인 버튼 드롭 다운</h4>
		<div class="btn-group">
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown">
				버튼1 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">메뉴 1</a></li>
				<li><a href="#">메뉴 2</a></li>
				<li><a href="#">메뉴 3</a></li>
				<li class="divider"></li>
				<li><a href="#">다른 메뉴 </a></li>
			</ul>
		</div>
		<div class="btn-group">
			<button type="button" class="btn btn-default" data-toggle="dropdown">
				버튼2 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">메뉴 1</a></li>
				<li><a href="#">메뉴 2</a></li>
				<li><a href="#">메뉴 3</a></li>
				<li class="divider"></li>
				<li><a href="#">다른 메뉴 </a></li>
			</ul>
		</div>

		<div class="btn-group">
			<button type="button"
				class="btn btn-default btn-primary dropdown-toggle"
				data-toggle="dropdown">
				클릭 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">메뉴 1</a></li>
				<li><a href="#">메뉴 2</a></li>
				<li><a href="#">메뉴 3</a></li>
				<li class="divider"></li>
				<li><a href="#">다른 메뉴 </a></li>
			</ul>
		</div>

		<hr>

		<h4>분할된 버튼 드롭 다운</h4>
		<div class="btn-group">
			<button type="button" class="btn btn-default">버튼1</button>
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">메뉴 1</a></li>
				<li><a href="#">메뉴 2</a></li>
				<li><a href="#">메뉴 3</a></li>
				<li class="divider"></li>
				<li><a href="#">다른 메뉴 </a></li>
			</ul>
		</div>
		<div class="btn-group">
			<button type="button" class="btn btn-default btn-danger">
				버튼2</button>
			<button type="button"
				class="btn btn-default btn-danger dropdown-toggle"
				data-toggle="dropdown">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">메뉴 1</a></li>
				<li><a href="#">메뉴 2</a></li>
				<li><a href="#">메뉴 3</a></li>
				<li class="divider"></li>
				<li><a href="#">다른 메뉴 </a></li>
			</ul>
		</div>

		<hr>

		<h4>버튼 드롭 다운 크기 조절</h4>
		<div class="btn-group">
			<button type="button" class="btn btn-default btn-lg">버튼1</button>
			<button type="button" class="btn btn-default btn-lg dropdown-toggle"
				data-toggle="dropdown">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">메뉴 1</a></li>
				<li><a href="#">메뉴 2</a></li>
				<li><a href="#">메뉴 3</a></li>
				<li class="divider"></li>
				<li><a href="#">다른 메뉴 </a></li>
			</ul>
		</div>


		<div class="btn-group">
			<button type="button"
				class="btn btn-default btn-sm btn-primary dropdown-toggle"
				data-toggle="dropdown">
				클릭 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">메뉴 1</a></li>
				<li><a href="#">메뉴 2</a></li>
				<li><a href="#">메뉴 3</a></li>
				<li class="divider"></li>
				<li><a href="#">다른 메뉴 </a></li>
			</ul>
		</div>

		<hr>
		<h4>드롭업과 드롭다운 비교</h4>
		<div class="btn-group dropup">
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown">
				버튼1 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">메뉴 1</a></li>
				<li><a href="#">메뉴 2</a></li>
				<li><a href="#">메뉴 3</a></li>
				<li class="divider"></li>
				<li><a href="#">다른 메뉴 </a></li>
			</ul>
		</div>

		<div class="btn-group">
			<button type="button" class="btn btn-default" data-toggle="dropdown">
				버튼2 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">메뉴 1</a></li>
				<li><a href="#">메뉴 2</a></li>
				<li><a href="#">메뉴 3</a></li>
				<li class="divider"></li>
				<li><a href="#">다른 메뉴 </a></li>
			</ul>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>