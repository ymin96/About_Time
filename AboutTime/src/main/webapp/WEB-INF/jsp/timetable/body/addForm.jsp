<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<body class="addForm">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-12  register-box">
			<form>
				<div class="form-group">
					<label>과목명</label> <input id="title" type="text" class="form-control"
						placeholder="과목명 입력">
				</div>
				<!-- form-group end.// -->
				<div class="row">
					<div class="form-group col-md-2 col-sm-2 col-xs-4">
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsMajor1" value="전공" checked> 전공
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsMajor2" value="교양"> 교양
							</label>
						</div>
					</div>
					<div
						class="form-group col-md-offset-2 col-md-3 col-sm-offset-2 col-sm-3 col-xs-offset-1 col-xs-3">
						<label>학점</label> <select id="inputCredit" class="form-control">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
						</select>
					</div>
					<!-- form-group end.// -->
					<div
						class="form-group col-md-offset-2 col-md-3 col-sm-offset-2 col-sm-3  col-xs-offset-1 col-xs-3">
						<label>분반</label> <select id="inputDivision" class="form-control">
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
				<div class="row" id="first-row">
					<div
						class="col-md-offset-2 col-md-2 col-sm-offset-2 col-sm-2  col-xs-offset-2 col-xs-2">
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
						<div class="toggle-box">
							<p>1교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off" id="monday1"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>2교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>3교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>4교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>5교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>6교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>7교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>8교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>9교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"></div>
					</div>
				</div>
				<!-- form-group// -->
			</form>
			<button class="btn btn-primary btn-block" id="register">
						등록</button>
			
		</div>
	</div>
</body>
<script>
	$(document).ready(function(){
		<!-- 스크린 사이즈에 따른 height값 변화 -->
		var cw = $('.toggle-box').width();
		$('.toggle-box').css({'height':cw+'px'});
		$('.toggle-box').css({'line-height':cw+'px'});
		
		$( window ).resize( function() {
			var cw = $('.toggle-box').width();
			$('.toggle-box').css({'height':cw+'px'});
			$('.toggle-box').css({'line-height':cw+'px'});
		});
		
		<!-- 토글버튼 클릭 이벤트 -->
		$('.toggle-button').click(function(){
			if($(this).hasClass("toggle-button-off")){
				$(this).removeClass("toggle-button-off");
				$(this).addClass("toggle-button-on");
			}
			else{
				$(this).removeClass("toggle-button-on");
				$(this).addClass("toggle-button-off");
			}
		});
	});
</script>