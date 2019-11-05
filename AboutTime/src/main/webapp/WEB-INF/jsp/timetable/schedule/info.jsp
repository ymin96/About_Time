<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body class="registerForm scheduleInfo">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-12  register-box content-box">
			<div class="reg-header">
				<h2>시간표</h2>
			</div>
			
			<!-- 시간표 테이블 -->
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
			<div class="row info-box-row">
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box divide">
						<p>1교시</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Monday1"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Tuesday1"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Wednesday1"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Thursday1"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Friday1"></div>
				</div>
			</div>
			<div class="row info-box-row">
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box divide">
						<p>2교시</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Monday2"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Tuesday2"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Wednesday2"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Thursday2"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Friday2"></div>
				</div>
			</div>
			<div class="row info-box-row">
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box divide">
						<p>3교시</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Monday3"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Tuesday3"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Wednesday3"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Thursday3"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Friday3"></div>
				</div>
			</div>
			<div class="row info-box-row">
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box divide">
						<p>4교시</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Monday4"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Tuesday4"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Wednesday4"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Thursday4"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Friday4"></div>
				</div>
			</div>
			<div class="row info-box-row">
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box divide">
						<p>5교시</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Monday5"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Tuesday5"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Wednesday5"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Thursday5"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Friday5"></div>
				</div>
			</div>
			<div class="row info-box-row">
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box divide">
						<p>6교시</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Monday6"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Tuesday6"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Wednesday6"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Thursday6"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Friday6"></div>
				</div>
			</div>
			<div class="row info-box-row">
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box divide">
						<p>7교시</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Monday7"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Tuesday7"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Wednesday7"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Thursday7"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Friday7"></div>
				</div>
			</div>
			<div class="row info-box-row">
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box divide">
						<p>8교시</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Monday8"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Tuesday8"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Wednesday8"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Thursday8"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Friday8"></div>
				</div>
			</div>
			<div class="row info-box-row">
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box divide">
						<p>9교시</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Monday9"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Tuesday9"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Wednesday9"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Thursday9"></div>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2">
					<div class="info-box" id="Friday9"></div>
				</div>
			</div>

			<!-- 시간표 리스트 -->
			<table class="table">
				<thead>
					<tr>
						<th>No</th>
						<th>과목명</th>
						<th>전공 구분</th>
						<th>학점</th>
						<th>분반</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="subject" items="${subjects}" varStatus="status">
						<tr class='subject-row'>
							<th>${status.count}</th>
							<th>${subject.title}</th>
							<th>${subject.major}</th>
							<th>${subject.credit}</th>
							<th>${subject.division}</th>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
<script>
var colorList = new Array();
colorList.push("#FF4343");
colorList.push("#7C43FF");
colorList.push("#FF43A1");
colorList.push("#5050FF");
colorList.push("#FA43FF");
colorList.push("#4DE643");
colorList.push("#A5E643");
colorList.push("#BB43FF");
colorList.push("#508AFF");
colorList.push("#D6DB4B");
	$(document).ready(function(){
		<!-- 스크린 사이즈에 따른 height값 변화 -->
		var cw = $('.info-box').width();
		$('.info-box').css({'height':(cw/2)+'px'});
		$('.info-box').css({'line-height':(cw/2)+'px'});
		
		$( window ).resize( function() {
			var cw = $('.info-box').width();
			$('.info-box').css({'height':(cw/1.7)+'px'});
			$('.info-box').css({'line-height':(cw/2)+'px'});
		});
		
		<!-- 시간표 테이블 처리 -->
		<c:forEach var="subject" items="${subjects}" varStatus="status">
			var list = new Array();
			<c:forEach var="lectureTime" items="${subject.lectureTime}">
				list.push({day:"${lectureTime.day}",time:${lectureTime.time}});
			</c:forEach>
			for(var i=0;i<list.length;i++){
				var id = objectToDay(list[i]);
				$('#'+id).html("${subject.title}");
				$('#'+id).css('background-color',colorList[${status.index}]);
			}
		</c:forEach>
	});
</script>