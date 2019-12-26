<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="university-main">
		<div class="container">
			<div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div id="calendar"></div>
                        <div id="schedule-input" class="hidden content-box">
                            <form>
                                <div class="form-group">
                                    <label for="calendar-title">제목</label>
                                    <input type="text" class="form-control" id="calendar-title">
                                </div>
                                <div class="form-group">
                                    <label for="calendar-contents">내용</label>
                                    <textarea rows="3" class="form-control" id="calendar-contents" style="resize: none;"></textarea>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">
                                        <div class="form-group">
                                            <label for="startDate">시작일</label>
                                            <input type="date" class="form-control" id="startDate" readonly>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="form-group">
                                            <label for="endDate">종료일</label>
                                            <input type="date" class="form-control" id="endDate" readonly>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-right">
                                    <button id="input-cancel" type="button" class="btn btn-warning">취소</button>
                                    <button id="input-submit" type="button" class="btn btn-primary">등록</button>
                                </div>
                            </form>
                        </div>
                        <div id="schedule-view" class="hidden content-box">
                            <div class="header">
                                <h4><span>타이틀</span></h4>
                            </div>
                            <div class="contents">
                                <p>· 안녕</p>
                            </div>
                            <div class="text-right">
                                <button id="view-delete" type="button" class="btn btn-danger">삭제</button>
                                <button id="view-cancel" type="button" class="btn btn-primary">확인</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-md-offset-1 col-sm-6 col-xs-12">
                        <div class="headline">
                            <a href="#">Weekly Best</a>
                        </div>
                        <div>
                            <table class="table">
                                <tr>
                                    <th>1</th>
                                    <th>2</th>
                                </tr>
                                <tr>
                                    <th>3</th>
                                    <th>4</th>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12">
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
									<td><p class="writer">${board.writer}</p></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<div class="col-md-4 col-md-offset-3 col-sm-6 col-xs-12">
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
									<td><p class="writer">${board.writer}</p></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12">
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
									<td><p class="writer">${board.writer}</p></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<div class="col-md-4 col-md-offset-3 col-sm-6 col-xs-12">
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
									<td><p class="writer">${board.writer}</p></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="/resources/calendar/core/main.js"></script>
<script src="/resources/calendar/daygrid/main.js"></script>
<script src="/resources/calendar/interaction/main.js"></script>
<script src="/resources/static/js/community/universityMain.js"></script>
