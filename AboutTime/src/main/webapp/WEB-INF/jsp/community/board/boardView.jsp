<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<body>
	<div class="board-view">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
					<div class="content-box">
						<div class="reg-header">
							<div class="row">
								<div class="col-md-9 col-sm-9 col-xs-12">
									<div class="board-title text-left">
										<h3>[${board.category}]${board.title}</h3>
									</div>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<div class="board-writer text-right">
										<p>
											<span class="glyphicon glyphicon-user" aria-hidden="true">${board.writer}</span>
										</p>
										<p>
											<span class="glyphicon glyphicon-calendar" aria-hidden="true">${board.simpleUpdateDate}</span>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="contents">${board.contents}</div>
						<c:if test="${board.uid == userID}">
							<div class="row" style="margin:0;">
								<div
									class="col-md-offset-10 col-md-1 col-sm-offset-10 col-sm-1 col-xs-3 col-xs-offset-6">
									<a href="#" class="btn btn-default" id="update">수정</a>
								</div>
								<div class="col-md-1 col-sm-1 col-xs-3">
									<a href="/community/${university}/delete/${board.num}" class="btn btn-primary" id="remove">삭제</a>
								</div>
							</div>
						</c:if>
					</div>
					<div class="comment-box">
						<div class="comment-header">
							<h5 style="font-weight: bold;">댓글(${fn:length(commentList)})</h5>
						</div>
					</div>
					<div class="commentEdit" style="margin-bottom: 20px;">
						<div class="input-group">
							<textarea class="form-control" rows="3" style="resize: none;"></textarea>
							<div class="input-group-addon"
								style="background-color: #337ab7; border: 1px solid #337ab7;">
								<a href="javascript:void(0);" onclick="commentRegister(this)">등록</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="/resources/static/js/community/boardView.js"></script>