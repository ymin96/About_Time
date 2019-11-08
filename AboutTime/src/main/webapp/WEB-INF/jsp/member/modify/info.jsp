<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="modify">
		<div class="row">
			<div class="col-md-12">
				<div class="reg-header">
					<h3>회원 정보 수정</h3>
				</div>
				<div class="user-form">
					<form class="form-horizontal">
						<div class="form-group">
							<label for="uid" class="control-label col-sm-2 col-md-2 col-xs-3">아이디</label>
							<div class="col-md-5 col-sm-6 col-xs-9">
								<input type="text" id="uid" class="form-control" readonly>
							</div>
						</div>
						<div class="form-group">
							<label for="uname"
								class="control-label col-sm-2 col-md-2 col-xs-3">닉네임</label>
							<div class="col-md-5 col-sm-6 col-xs-9">
								<input type="text" id="uanme" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label for="upw" class="control-label col-sm-2 col-md-2 col-xs-3">비밀번호</label>
							<div class="col-md-5 col-sm-6 col-xs-9">
								<input type="password" id="upw" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label for="email"
								class="control-label col-sm-2 col-md-2 col-xs-3">이메일</label>
							<div class="col-md-5 col-sm-6 col-xs-9">
								<input type="email" id="email" " class=" form-control">
							</div>
						</div>
						<div class="col-md-offset-2 col-sm-offset-2 col-xs-offset-3">
							<button type="submit" class="btn btn-primary">수정</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>