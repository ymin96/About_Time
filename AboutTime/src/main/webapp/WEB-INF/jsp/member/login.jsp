<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="container registerForm">
		<div class="row">
			<div class="col-md-12 register-box">
				<form class="login-form" method="POST">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<div class="row">
						<div class="input-field col s12">
							<input id="id" type="text" name="username" class="validate" />
							<label for="id">ID</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="password" type="password" name="password"
								class="validate" /> <label for="password">Password</label>
						</div>
					</div>
					<input class="login-btn waves-effect waves-light btn" type="submit"
						value="로그인" />
				</form>
			</div>
		</div>
	</div>
</body>