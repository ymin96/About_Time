<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>No</th>
							<th>분류</th>
							<th>제목</th>
							<th>작성자</th>
							<th>조회</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="board" items="${boardList}" varStatus="status">
							<c:choose>
								<c:when test="${board.commentNum != 0}">
									<tr style="border-left: 3px #337ab7 solid">
								</c:when>
								<c:otherwise>
									<tr>
								</c:otherwise>
							</c:choose>
							<th>${board.num}</th>
							<td>${board.category}</td>
							<td><a href="/community/${university}/read/${board.num}">${board.title}<c:if
										test="${board.commentNum != 0}">
										<span style="font-weight: bold;"> (${board.commentNum})</span>
									</c:if></a></td>
							<td>${board.writer}</td>
							<td>${board.hits}</td>
							<td>${board.simpleListDate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 col-sm-2 col-xs-3">
				<a href="javascript:void(0);"
					onclick="loginCheck('/community/${university}/edit')"
					class="btn btn-primary">글쓰기</a>
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
				<!-- pagination{s} -->
				<div id="paginationBox">
					<ul class="pagination" style="margin: 0; float: right;">
						<c:if test="${pagination.prev}">
							<li class="page-item"><a class="page-link" href="#"
								onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
						</c:if>
						<c:forEach begin="${pagination.startPage}"
							end="${pagination.endPage}" var="idx">
							<li
								class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a
								class="page-link" href="#"
								onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">
									${idx} </a></li>
						</c:forEach>
						<c:if test="${pagination.next}">
							<li class="page-item"><a class="page-link" href="#"
								onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')">Next</a></li>
						</c:if>
					</ul>
				</div>
				<!-- pagination{e} -->
			</div>
		</div>
	</div>
</body>
<script>
	//이전 버튼 이벤트
	function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;

		var url = "/community/${university}/list";

		url = url + "?page=" + page;
		url = url + "&range=" + range;
		var parameters = divideParameter();
		for (var i = 0; i < parameters.length; i++) {
			url = url + "&" + parameters[i];
		}

		location.href = url;
	}

	//페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "/community/${university}/list";

		url = url + "?page=" + page;
		url = url + "&range=" + range;
		var parameters = divideParameter();
		for (var i = 0; i < parameters.length; i++) {
			url = url + "&" + parameters[i];
		}

		location.href = url;
	}

	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;

		var url = "/community/${university}/list";

		url = url + "?page=" + page;
		url = url + "&range=" + range;
		var parameters = divideParameter();
		for (var i = 0; i < parameters.length; i++) {
			url = url + "&" + parameters[i];
		}

		location.href = url;
	}
</script>