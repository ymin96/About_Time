<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="modify">
		<div class="row">
			<div class="col-md-12" id="infoBox">
				<div class="row">
					<div class="col-md-12">
						<div class="reg-header">
							<h3>비밀번호 수정</h3>
						</div>
						<div class="user-form">
							<form class="form-horizontal">
								<div class="form-group">
									<label for="currentUpw"
										class="control-label col-sm-2 col-md-2 col-xs-3">현재
										비밀번호</label>
									<div class="col-md-5 col-sm-6 col-xs-9">
										<input type="password" id="currentUpw" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="newUpw"
										class="control-label col-sm-2 col-md-2 col-xs-3">새
										비밀번호</label>
									<div class="col-md-5 col-sm-6 col-xs-9">
										<input type="password" id="newUpw" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="newUpwCheck"
										class="control-label col-sm-2 col-md-2 col-xs-3">비밀번호
										확인</label>
									<div class="col-md-5 col-sm-6 col-xs-9">
										<input type="password" id="newUpwCheck" class="form-control">
									</div>
								</div>
								<div class="col-md-offset-2 col-sm-offset-2 col-xs-offset-3">
									<button type="button" id="register" class="btn btn-primary">수정</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="/resources/static/js/member/modifyPW.js"></script>