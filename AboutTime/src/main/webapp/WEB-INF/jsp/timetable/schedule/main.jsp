<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body class="registerForm">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-12  register-box">
			<div class="reg-header">
				<h2>시간표 조합</h2>
			</div>
			<form class="form-horizontal">
				<div class="form-group">
					<label class="col-md-4 control-label">목표 학점</label>
					<div class="col-md-3">
						<select id="credit" class="form-control">
							<option>0</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label">최소 전공 학점</label>
					<div class="col-md-3">
						<select id="major" class="form-control">
							<option>0</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label">최소 교양 학점</label>
					<div class="col-md-3">
						<select id="liberalArt" class="form-control">
							<option>0</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
						</select>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>