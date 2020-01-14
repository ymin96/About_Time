<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="modify">
		<div class="row">
			<div class="col-md-12" id="infoBox">
				<div class="reg-header">
					<h3>회원 정보 수정</h3>
				</div>
				<div class="user-form">
					<form class="form-horizontal">
						<div class="form-group" id="uid-group">
							<label for="uid" class="control-label col-sm-2 col-md-2 col-xs-3">아이디</label>
							<div class="col-md-5 col-sm-6 col-xs-9">
								<input type="text" id="uid" class="form-control" value="${member.uid}" readonly>
							</div>
						</div>
						<div class="form-group" id="uname-group">
							<label for="uname"
								class="control-label col-sm-2 col-md-2 col-xs-3">닉네임</label>
							<div class="col-md-5 col-sm-6 col-xs-9">
								<input type="text" id="uname" class="form-control" value="${member.uname}">
							</div>
						</div>
						<div class="form-group" id="upw-group">
							<label for="upw" class="control-label col-sm-2 col-md-2 col-xs-3">비밀번호</label>
							<div class="col-md-5 col-sm-6 col-xs-9">
								<input type="password" id="upw" class="form-control">
							</div>
						</div>
						<div class="form-group" id="email-group">
							<label for="email"
								class="control-label col-sm-2 col-md-2 col-xs-3">이메일</label>
							<div class="col-md-5 col-sm-6 col-xs-9">
								<input type="email" id="email" " class=" form-control" value="${member.email}">
							</div>
						</div>
					</form>
					<div class="col-md-offset-2 col-sm-offset-2 col-xs-offset-3">
						<button class="btn btn-primary submit" id="register" type="button">수정</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="/resources/static/js/member/modifyInfo.js"></script>