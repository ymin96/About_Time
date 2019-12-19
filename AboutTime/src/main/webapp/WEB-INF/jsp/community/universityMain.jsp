<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="university-main">
		<div class="container">
			<div class="row">
				<div
					class="col-md-4 col-md-offset-1 col-sm-4 col-sm-offset-1 col-xs-12">
					<div class="headline">
						<a href="#">정보 게시판</a>
					</div>
					<div>
						<table class="table table-condensed">
							<c:forEach var="board" items="${bestBoards['info']}">
								<tr>
									<td><a href="/community/${university}/read/${board.num}">${board.title}<c:if
										test="${board.commentNum != 0}">
										<span style="font-weight: bold;"> (${board.commentNum})</span>
									</c:if></a></td>
									<td><p class="writer"><span class="glyphicon glyphicon-user" aria-hidden="true">${board.writer}</p></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<div
					class="col-md-4 col-md-offset-2 col-sm-4 col-sm-offset-2 col-xs-12">
					<div class="headline">
						<a href="#">자유 게시판</a>
					</div>
					<div>
						<table class="table table-condensed">
							<c:forEach var="board" items="${bestBoards['other']}">
								<tr>
									<td><a href="/community/${university}/read/${board.num}">${board.title}<c:if
										test="${board.commentNum != 0}">
										<span style="font-weight: bold;"> (${board.commentNum})</span>
									</c:if></a></td>
									<td><p class="writer"><span class="glyphicon glyphicon-user" aria-hidden="true">${board.writer}</p></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div
					class="col-md-4 col-md-offset-1 col-sm-4 col-sm-offset-1 col-xs-12">
					<div class="headline">
						<a href="#">유머 게시판</a>
					</div>
					<div>
						<table class="table table-condensed">
							<c:forEach var="board" items="${bestBoards['humor']}">
								<tr>
									<td><a href="/community/${university}/read/${board.num}">${board.title}<c:if
										test="${board.commentNum != 0}">
										<span style="font-weight: bold;"> (${board.commentNum})</span>
									</c:if></a></td>
									<td><p class="writer"><span class="glyphicon glyphicon-user" aria-hidden="true">${board.writer}</p></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<div
					class="col-md-4 col-md-offset-2 col-sm-4 col-sm-offset-2 col-xs-12">
					<div class="headline">
						<a href="#">질문 게시판</a>
					</div>
					<div>
						<table class="table table-condensed">
							<c:forEach var="board" items="${bestBoards['quest']}">
								<tr>
									<td><a href="/community/${university}/read/${board.num}">${board.title}<c:if
										test="${board.commentNum != 0}">
										<span style="font-weight: bold;"> (${board.commentNum})</span>
									</c:if></a></td>
									<td><p class="writer"><span class="glyphicon glyphicon-user" aria-hidden="true">${board.writer}</p></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>