<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

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
										<h3>제목</h3>
									</div>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<div class="board-writer text-right">
										<p>
											<span class="glyphicon glyphicon-user" aria-hidden="true">Writer</span>
										</p>
										<p>
											<span class="glyphicon glyphicon-calendar" aria-hidden="true">Date</span>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="contents">내용</div>
					</div>
					<div class="comment-box">
						<div class="comment-header">
							<h5 style="font-weight: bold;">댓글(2)</h5>
						</div>
						<div class="comment">
							<p class="comment-main">
								댓글입니다.
								<button onclick="recomment(this)">
									<span class="glyphicon glyphicon-share-alt recomment-button"
										aria-hidden="true">답글</span>
								</button>
							</p>
							<p class="comment-sub">
								작성자[ <span>날자</span> ]
							</p>
						</div>
						<div class="comment recomment">
							<p class="target">
								<span class="glyphicon glyphicon-chevron-up" aria-hidden="true">타겟</span>
							</p>
							<p class="comment-main">
								대댓글입니다.
								<button onclick="recomment(this)">
									<span class="glyphicon glyphicon-share-alt recomment-button"
										aria-hidden="true">답글</span>
								</button>
							</p>
							<p class="comment-sub">
								작성자[ <span>날자</span> ]
							</p>
						</div>
					</div>
					<div class="commentEdit" style="margin-bottom: 20px;">
						<div class="input-group">
							<textarea class="form-control" rows="3" style="resize: none;"></textarea>
							<div class="input-group-addon"
								style="background-color: #337ab7; border: 1px solid #337ab7;">
								<a href="#">등록</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="/resources/static/js/community/boardView.js"></script>