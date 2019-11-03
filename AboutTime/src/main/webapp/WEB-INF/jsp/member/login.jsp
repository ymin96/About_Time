<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4 col-xs-12 content-box">
				<div class="reg-header">
					<h2>로그인</h2>
				</div>
				<form method="POST">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon" id="uid" aria-hidden="true"><span
								class="glyphicon glyphicon-user" aria-hidden="true"></span></span> <input
								class="form-control" id="id" type="text" name="username"
								aria-describedby="uid" placeholder="아이디" />
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon" id="upw" aria-hidden="true"><span
								class="glyphicon glyphicon-eye-close" aria-hidden="true"></span></span>
							<input class="form-control" id="password" type="password"
								name="password" aria-describedby="upw" placeholder="비밀번호" />
						</div>
					</div>
					<input class="btn btn-primary submit" type="submit" value="로그인" />
				</form>
			</div>
		</div>
	</div>
</body>