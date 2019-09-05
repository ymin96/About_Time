<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<body>
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-12  register-box">
			<form>
				<div class="form-group">
					<label>과목명</label> <input type="text" class="form-control"
						placeholder="">
				</div>
				<!-- form-group end.// -->
				<div class="row">
					<div class="form-group col-md-2 col-sm-2 col-xs-4">
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios1" value="option1" checked> 전공
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios2" value="option2"> 교양
							</label>
						</div>
					</div>
					<div class="form-group col-md-offset-3 col-md-2 col-sm-offset-3 col-sm-2 col-xs-offset-1 col-xs-3">
						<label>학점</label> <input type="text" class="form-control">
					</div>
					<!-- form-group end.// -->
					<div class="form-group col-md-offset-3 col-md-2 col-sm-offset-3 col-sm-2  col-xs-offset-1 col-xs-3">
						<label>분반</label> <select id="inputState" class="form-control">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
						</select>
					</div>
					<!-- form-group end.// -->
				</div>
				<!-- form-group end.// -->
				<div class="row">
					<div class="col-md-offset-2 col-md-2 col-sm-offset-2 col-sm-2  col-xs-offset-2 col-xs-2">
						<p class="text-center">월</p>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<p class="text-center">화</p>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<p class="text-center">수</p>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<p class="text-center">목</p>	
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<p class="text-center">금</p>	
					</div>				
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<p class="text-center">1교시</p>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box"></div>
					</div>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block">
						Register</button>
				</div>
				<!-- form-group// -->
			</form>
		</div>
	</div>
</body>