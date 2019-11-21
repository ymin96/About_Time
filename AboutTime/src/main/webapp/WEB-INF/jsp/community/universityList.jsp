<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="university_list">
		<div class="container">
			<div class="row" style="margin-bottom: 10px">
				<div
					class="col-md-3 col-md-offset-9 col-sm-3 col-sm-offset-9 col-xs-12">
					<div class="input-group">
						<input class="form-control text-center" type="text" id="title"
							placeholder="학교명 입력">
						<div class="input-group-addon" style="font-weight: bold">
							<a href="javascript:void(0);" onclick="callSearch(this);return false;"
								style="text-decoration: none; color: rgb(87, 85, 85);">검색</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row text-center">
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="reg-header">

						<a class="headline" data-toggle="collapse" href="#seoul"
							aria-expanded="false">
							<h1>서울특별시</h1>
						</a>
						<div class="university collapse" id="seoul">
							<c:forEach var="item" items="${universityMap['서울특별시']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#jeonbuk"
							aria-expanded="false">
							<h1>전라북도</h1>
						</a>
						<div class="university collapse" id="jeonbuk">
							<c:forEach var="item" items="${universityMap['전라북도']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#deajeon"
							aria-expanded="false">
							<h1>대전광역시</h1>
						</a>
						<div class="university collapse" id="deajeon">
							<c:forEach var="item" items="${universityMap['대전광역시']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#jeonnam"
							aria-expanded="false">
							<h1>전라남도</h1>
						</a>
						<div class="university collapse" id="jeonnam">
							<c:forEach var="item" items="${universityMap['전라남도']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#gyeongnam"
							aria-expanded="false">
							<h1>경상남도</h1>
						</a>
						<div class="university collapse" id="gyeongnam">
							<c:forEach var="item" items="${universityMap['경상남도']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#sejong"
							aria-expanded="false">
							<h1>세종특별시</h1>
						</a>
						<div class="university collapse" id="sejong">
							<c:forEach var="item" items="${universityMap['세종특별자치시']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="reg-header">

						<a class="headline" data-toggle="collapse" href="#incheon"
							aria-expanded="false">
							<h1>인천·경기</h1>
						</a>
						<div class="university collapse" id="incheon">
							<c:forEach var="item" items="${universityMap['인천·경기']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#jeju"
							aria-expanded="false">
							<h1>제주도</h1>
						</a>
						<div class="university collapse" id="jeju">
							<c:forEach var="item" items="${universityMap['제주도']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#deagu"
							aria-expanded="false">
							<h1>대구광역시</h1>
						</a>
						<div class="university collapse" id="deagu">
							<c:forEach var="item" items="${universityMap['대구광역시']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#ulsan"
							aria-expanded="false">
							<h1>울산광역시</h1>
						</a>
						<div class="university collapse" id="ulsan">
							<c:forEach var="item" items="${universityMap['울산광역시']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#chungnam"
							aria-expanded="false">
							<h1>충청남도</h1>
						</a>
						<div class="university collapse" id="chungnam">
							<c:forEach var="item" items="${universityMap['충청남도']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="reg-header">

						<a class="headline" data-toggle="collapse" href="#gangwon"
							aria-expanded="false">
							<h1>강원도</h1>
						</a>
						<div class="university collapse" id="gangwon">
							<c:forEach var="item" items="${universityMap['강원도']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#gyeongbuk"
							aria-expanded="false">
							<h1>경상북도</h1>
						</a>
						<div class="university collapse" id="gyeongbuk">
							<c:forEach var="item" items="${universityMap['경상북도']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#gwangju"
							aria-expanded="false">
							<h1>광주광역시</h1>
						</a>
						<div class="university collapse" id="gwangju">
							<c:forEach var="item" items="${universityMap['광주광역시']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#busan"
							aria-expanded="false">
							<h1>부산광역시</h1>
						</a>
						<div class="university collapse" id="busan">
							<c:forEach var="item" items="${universityMap['부산광역시']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>

						<a class="headline" data-toggle="collapse" href="#chungbuk"
							aria-expanded="false">
							<h1>충청북도</h1>
						</a>
						<div class="university collapse" id="chungbuk">
							<c:forEach var="item" items="${universityMap['충청북도']}">
								<a class="btn btn-default btn-block" href="#" role="button">${item}</a>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>