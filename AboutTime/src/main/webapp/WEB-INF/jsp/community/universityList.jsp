<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="university_list">
		<div class="container">
			<div class="row">
				<c:forEach var="item" items="${universityMap}">
					<div class="col-md-4 col-sm-4 col-xs-12 text-center">
						<div class="headline">
							<h1>${item.key}</h1>
						</div>
						<!--  
						<div class="university">
							<c:forEach var="title" items="${item.value}">
								<a class="btn btn-default btn-block" href="#" role="button">${title}</a>
							</c:forEach>
						</div>
						-->
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>