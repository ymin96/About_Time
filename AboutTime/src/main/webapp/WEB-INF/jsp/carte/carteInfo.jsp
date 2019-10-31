<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12 content-box">
				<div class="reg-header">
					<h2>${university.title}</h2>
				</div>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th></th>
							<c:forEach var="carte" items="${university.carteList}">
								<th class="text-center">${carte.day}</th>
							</c:forEach>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>아침</th>
							<c:forEach var="carte" items="${university.carteList}">
								<th class="text-center">${carte.breakfast}</th>
							</c:forEach>
						</tr>
						<tr>
							<th>점심</th>
							<c:forEach var="carte" items="${university.carteList}">
								<th class="text-center">${carte.lunch}</th>
							</c:forEach>
						</tr>

						<tr>
							<th>저녁</th>
							<c:forEach var="carte" items="${university.carteList}">
								<th class="text-center">${carte.supper}</th>
							</c:forEach>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>