<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="breadcrumbs">
		<div class="container">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div id="title">
					<a href="/community/${university}">${university}</a>
				</div>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<ul class="nav nav-pills" style="float:right;">
					<li role="presentation" id="all"><a href="/community/${university}/list">전체</a></li>
					<li role="presentation" id="info"><a href="/community/${university}/list?cate=info">정보</a></li>
					<li role="presentation" id="other"><a href="/community/${university}/list?cate=other">잡담</a></li>
					<li role="presentation" id="humor"><a href="/community/${university}/list?cate=humer">유머</a></li>
					<li role="presentation" id="quest"><a href="/community/${university}/list?cate=quest">질문</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
<script src="/resources/static/js/community/sideMenu.js"></script>