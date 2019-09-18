<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<body class="registerForm">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-12  register-box">
			<form>
				<div class="form-group">
					<label>과목명</label> <input id="title" type="text"
						class="form-control" placeholder="과목명 입력">
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
						<div class="toggle-box toggle-button toggle-button-off"
							id="Monday1"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Tuesday1"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Wednesday1"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Thursday1"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Friday1"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>2교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Monday2"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Tuesday2"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Wednesday2"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Thursday2"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Friday2"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>3교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Monday3"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Tuesday3"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Wednesday3"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Thursday3"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Friday3"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>4교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Monday4"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Tuesday4"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Wednesday4"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Thursday4"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Friday4"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>5교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Monday5"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Tuesday5"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Wednesday5"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Thursday5"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Friday5"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>6교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Monday6"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Tuesday6"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Wednesday6"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Thursday6"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Friday6"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>7교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Monday7"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Tuesday7"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Wednesday7"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Thursday7"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Friday7"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>8교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Monday8"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Tuesday8"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Wednesday8"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Thursday8"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Friday8"></div>
					</div>
				</div>
				<div class="row toggle-box-row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box">
							<p>9교시</p>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Monday9"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Tuesday9"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Wednesday9"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Thursday9"></div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2">
						<div class="toggle-box toggle-button toggle-button-off"
							id="Friday9"></div>
					</div>
				</div>
				<!-- form-group// -->
			</form>
			<button class="btn btn-primary btn-block" type="button" id="register">등록</button>

		</div>
	</div>
</body>
<script>
	function daytoObjects(time){
		switch (time){
			case "Monday1":
				return {day:"월",time:1};
			case "Monday2":
				return {day:"월",time:2};
			case "Monday3":
				return {day:"월",time:3};
			case "Monday4":
				return {day:"월",time:4};
			case "Monday5":
				return {day:"월",time:5};
			case "Monday6":
				return {day:"월",time:6};
			case "Monday7":
				return {day:"월",time:7};
			case "Monday8":
				return {day:"월",time:8};
			case "Monday9":
				return {day:"월",time:9};
			case "Tuesday1":
				return {day:"화",time:1};
			case "Tuesday2":
				return {day:"화",time:2};
			case "Tuesday3":
				return {day:"화",time:3};
			case "Tuesday4":
				return {day:"화",time:4};
			case "Tuesday5":
				return {day:"화",time:5};
			case "Tuesday6":
				return {day:"화",time:6};
			case "Tuesday7":
				return {day:"화",time:7};
			case "Tuesday8":
				return {day:"화",time:8};
			case "Tuesday9":
				return {day:"화",time:9};
			case "Wednesday1":
				return {day:"수",time:1};
			case "Wednesday2":
				return {day:"수",time:2};
			case "Wednesday3":
				return {day:"수",time:3};
			case "Wednesday4":
				return {day:"수",time:4};
			case "Wednesday5":
				return {day:"수",time:5};
			case "Wednesday6":
				return {day:"수",time:6};
			case "Wednesday7":
				return {day:"수",time:7};
			case "Wednesday8":
				return {day:"수",time:8};
			case "Wednesday9":
				return {day:"수",time:9};
			case "Thursday1":
				return {day:"목",time:1};
			case "Thursday2":
				return {day:"목",time:2};
			case "Thursday3":
				return {day:"목",time:3};
			case "Thursday4":
				return {day:"목",time:4};
			case "Thursday5":
				return {day:"목",time:5};
			case "Thursday6":
				return {day:"목",time:6};
			case "Thursday7":
				return {day:"목",time:7};
			case "Thursday8":
				return {day:"목",time:8};
			case "Thursday9":
				return {day:"목",time:9};
			case "Friday1":
				return {day:"금",time:1};
			case "Friday2":
				return {day:"금",time:2};
			case "Friday3":
				return {day:"금",time:3};
			case "Friday4":
				return {day:"금",time:4};
			case "Friday5":
				return {day:"금",time:5};
			case "Friday6":
				return {day:"금",time:6};
			case "Friday7":
				return {day:"금",time:7};
			case "Friday8":
				return {day:"금",time:8};
			case "Friday9":
				return {day:"금",time:9};
		}
	};
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
		
		<!--Register 버튼 클릭 이벤트-->
		$("#register").click(function(){
			var subject={
				title:$('#title').val(),
				major:$(':radio[name="optionsRadios"]:checked').val(),
				credit:parseInt($('#inputCredit option:checked').val()),
				division:parseInt($('#inputDivision option:checked').val()),
				lectureTime:[]
			};
			$('.toggle-button-on').each(function(index, item){
				subject.lectureTime.push(daytoObjects($(this).attr('id')));
			});
			$.ajax({
				type:"POST",
				url:"${contextPath}/timetable/subjects",
				data:JSON.stringify(subject),
				contentType : "application/json; charset=UTF-8",
				success:function(){
					location.href="/timetable/subject/list.do";
				},
				error:function(request,status,error){
			        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			});
		});
	});
</script>