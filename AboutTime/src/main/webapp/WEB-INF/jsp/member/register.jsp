<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body class>
	<div class="container register">
		<div class="row">
			<div
				class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-12">
				<div class="content-box">
					<div class="reg-header">
						<h3>회원가입</h3>
					</div>
					<form method="POST">
						<div class="form-group" id="uid-group">
							<label class="control-label" for="uid">아이디</label> <input
								type="text" id="uid" class="form-control"
								aria-describedby="help-uid"> <span id="help-uid"
								class="help-block"></span>
						</div>
						<div class="form-group" id="uname-group">
							<label class="control-label" for="uname">별명</label> <input
								type="text" id="uname" class="form-control"
								aria-describedby="help-uname"> <span id="help-uname"
								class="help-block"></span>
						</div>
						<div class="row">
							<div class="form-group col-md-6" id="upw-group">
								<label for="upw">비밀번호</label> <input type="password" id="upw"
									class="form-control" aria-describedby="help-upw"> <span
									id="help-upw" class="help-block"></span>
							</div>
							<div class="form-group col-md-6">
								<label for="upw-check">비밀번호 확인</label> <input type="password"
									id="upw-check" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label for="email">이메일</label> <input type="email" id="email"
								class="form-control">
						</div>
					</form>
					<button class="btn btn-primary submit" id="register" type="buttom">가입하기</button>
				</div>
			</div>
		</div>
	</div>
</body>