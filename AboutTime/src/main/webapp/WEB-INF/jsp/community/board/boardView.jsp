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
							<h5 style="font-weight: bold;">댓글(2)</h5>
						</div>
						<div class="comment">
							<p class="comment-main">댓글입니다.</p>
							<p class="comment-sub">
								작성자[ <span>날자</span> ]
							</p>
						</div>
						<div class="comment">
							<p class="comment-main">댓글입니다.</p>
							<p class="comment-sub">
								작성자[ <span>날자</span> ]
							</p>
						</div>
					</div>
					<div class="commentEdit">
						<div class="input-group">
							<textarea class="form-control" rows="3" style="resize: none;"></textarea>
							<div class="input-group-addon" style="font-weight: bold;">등록</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>