<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
											<span class="glyphicon glyphicon-calendar" aria-hidden="true">${board.updateDate}</span>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="contents">${board.contents}</div>
					</div>
					<div class="comment-box">
						<div class="comment-header">
							<h5 style="font-weight: bold;">댓글(${fn:length(commentList)})</h5>
						</div>
						<c:forEach var="comment" items="${commentList}">
							<div class="comment" target="${comment.target}">
								<p class="comment-main">
									${comment.contents}
									<button onclick="recomment(this, ${comment.grp},${comment.writer})">
										<span class="glyphicon glyphicon-share-alt recomment-button"
											aria-hidden="true">답글</span>
									</button>
								</p>
								<p class="comment-sub">
									${comment.writer}[ <span>${comment.regDate}</span> ]
								</p>
							</div>
						</c:forEach>
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