<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>분류</th>
							<th>제목</th>
							<th>작성자</th>
							<th>추천</th>
							<th>조회</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 col-sm-2 col-xs-3">
				<a href="/community/${title}/list/edit" class="btn btn-primary">글쓰기</a>
			</div>
			<div
				class="col-md-4 col-md-offset-1 col-sm-4 col-sm-offset-1 col-xs-9">
				<div class="input-group" style="margin-bottom: 10px;">
					<div class="input-group-btn">
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown" aria-expanded="false">
							제목 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">제목</a></li>
							<li><a href="#">제목+내용</a></li>
							<li><a href="#">작성자</a></li>
						</ul>
					</div>
					<input class="form-control text-center" type="text" id="search">
					<div class="input-group-addon" style="font-weight: bold">
						<a href="#" style="text-decoration: none; color: rgb(87, 85, 85);">검색</a>
					</div>
				</div>
			</div>
			<div
				class="col-md-4 col-md-offset-1 col-sm-3 col-sm-offset-1 col-xs-12">
				<ul class="pagination" style="margin: 0; float: right;">
					<li><a href="#" aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span>
					</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>