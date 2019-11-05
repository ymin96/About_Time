<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4 col-xs-12 content-box">
				<div class="reg-header">
					<h3>회원가입</h3>
				</div>
				<form method="POST">
					<div class="form-group" id="uid-group">
						<label class="control-label" for="uid">아이디</label> <input
							type="text" id="uid" class="form-control"
							aria-describedby="help-uid">
					</div>
					<div class="form-group" id="uname-group">
						<label for="uname">별명</label> <input type="text" id="uname"
							class="form-control">
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="upw">비밀번호</label> <input type="password" id="upw"
								class="form-control">
						</div>
						<div class="form-group col-md-6">
							<label for="upw-check">비밀번호 확인</label> <input type="text"
								id="upw-check" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label for="email">이메일</label> <input type="text" id="email"
							class="form-control">
					</div>
					<button type="submit" class="btn btn-primary">가입하기</button>
				</form>
			</div>
		</div>
	</div>
</body>