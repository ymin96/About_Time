<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="calculator">
		<div class="breadcrumbs">
			<div class="container">
				<div id="title-box">
					<p>학점계산기</p>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="content-box">
						<div class="reg-header">
							<h3>학점 계산기</h3>
						</div>
						<div style="margin-bottom: 10px;">
							<div class="row">
								<div class="col-xs-6">
									<div class="checkbox">
										<label> <input id="worst" type="checkbox"
											value="worst"> F학점 포함
										</label>
									</div>
								</div>
								<div class="col-xs-6 text-right">
									<button id="init-form" type="button" class="btn btn-default">초기화</button>
								</div>
							</div>
						</div>
						<form id="calculator-form" class="form-horizontal"
							style="clear: both;">
							<div id="standard" class="form-group hidden">
								<div class="subject-group">
									<div class="row">
										<div class="col-md-6 col-xs-12">
											<input type="text" class="form-control subject-title"
												placeholder="과목명">
										</div>
										<div class="col-md-2 col-xs-5 option">
											<select class="form-control score">
												<option value="null" selected disabled hidden>점수</option>
												<option value="4.5">A+</option>
												<option value="4">A</option value="4.5">
												<option value="3.5">B+</option value="4.5">
												<option value="3">B</option value="4.5">
												<option value="2.5">C+</option value="4.5">
												<option value="2">C</option value="4.5">
												<option value="1.5">D+</option value="4.5">
												<option value="1">D</option>
												<option value="0">F</option value="4.5">
											</select>
										</div>
										<div class="col-md-2 col-xs-4 option">
											<select class="form-control credit">
												<option value="null" selected disabled hidden>학점</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
											</select>
										</div>
										<div class="col-md-2 col-xs-3">
											<div class="checkbox">
												<label> <input class="major" type="checkbox"
													value="major"> 전공
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group copy">
								<div class="subject-group">
									<div class="row">
										<div class="col-md-6 col-xs-12">
											<input type="text" class="form-control subject-title"
												placeholder="과목명">
										</div>
										<div class="col-md-2 col-xs-5 option">
											<select class="form-control score">
												<option value="null" selected disabled hidden>점수</option>
												<option value="4.5">A+</option>
												<option value="4">A</option value="4.5">
												<option value="3.5">B+</option value="4.5">
												<option value="3">B</option value="4.5">
												<option value="2.5">C+</option value="4.5">
												<option value="2">C</option value="4.5">
												<option value="1.5">D+</option value="4.5">
												<option value="1">D</option>
												<option value="0">F</option value="4.5">
											</select>
										</div>
										<div class="col-md-2 col-xs-4 option">
											<select class="form-control credit">
												<option value="null" selected disabled hidden>학점</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
											</select>
										</div>
										<div class="col-md-2 col-xs-3">
											<div class="checkbox">
												<label> <input class="major" type="checkbox"
													value="major"> 전공
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group copy">
								<div class="subject-group">
									<div class="row">
										<div class="col-md-6 col-xs-12">
											<input type="text" class="form-control subject-title"
												placeholder="과목명">
										</div>
										<div class="col-md-2 col-xs-5 option">
											<select class="form-control score">
												<option value="null" selected disabled hidden>점수</option>
												<option value="4.5">A+</option>
												<option value="4">A</option value="4.5">
												<option value="3.5">B+</option value="4.5">
												<option value="3">B</option value="4.5">
												<option value="2.5">C+</option value="4.5">
												<option value="2">C</option value="4.5">
												<option value="1.5">D+</option value="4.5">
												<option value="1">D</option>
												<option value="0">F</option value="4.5">
											</select>
										</div>
										<div class="col-md-2 col-xs-4 option">
											<select class="form-control credit">
												<option value="null" selected disabled hidden>학점</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
											</select>
										</div>
										<div class="col-md-2 col-xs-3">
											<div class="checkbox">
												<label> <input class="major" type="checkbox"
													value="major"> 전공
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group copy">
								<div class="subject-group">
									<div class="row">
										<div class="col-md-6 col-xs-12">
											<input type="text" class="form-control subject-title"
												placeholder="과목명">
										</div>
										<div class="col-md-2 col-xs-5 option">
											<select class="form-control score">
												<option value="null" selected disabled hidden>점수</option>
												<option value="4.5">A+</option>
												<option value="4">A</option value="4.5">
												<option value="3.5">B+</option value="4.5">
												<option value="3">B</option value="4.5">
												<option value="2.5">C+</option value="4.5">
												<option value="2">C</option value="4.5">
												<option value="1.5">D+</option value="4.5">
												<option value="1">D</option>
												<option value="0">F</option value="4.5">
											</select>
										</div>
										<div class="col-md-2 col-xs-4 option">
											<select class="form-control credit">
												<option value="null" selected disabled hidden>학점</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
											</select>
										</div>
										<div class="col-md-2 col-xs-3">
											<div class="checkbox">
												<label> <input class="major" type="checkbox"
													value="major"> 전공
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group copy">
								<div class="subject-group">
									<div class="row">
										<div class="col-md-6 col-xs-12">
											<input type="text" class="form-control subject-title"
												placeholder="과목명">
										</div>
										<div class="col-md-2 col-xs-5 option">
											<select class="form-control score">
												<option value="null" selected disabled hidden>점수</option>
												<option value="4.5">A+</option>
												<option value="4">A</option value="4.5">
												<option value="3.5">B+</option value="4.5">
												<option value="3">B</option value="4.5">
												<option value="2.5">C+</option value="4.5">
												<option value="2">C</option value="4.5">
												<option value="1.5">D+</option value="4.5">
												<option value="1">D</option>
												<option value="0">F</option value="4.5">
											</select>
										</div>
										<div class="col-md-2 col-xs-4 option">
											<select class="form-control credit">
												<option value="null" selected disabled hidden>학점</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
											</select>
										</div>
										<div class="col-md-2 col-xs-3">
											<div class="checkbox">
												<label> <input class="major" type="checkbox"
													value="major"> 전공
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group copy">
								<div class="subject-group">
									<div class="row">
										<div class="col-md-6 col-xs-12">
											<input type="text" class="form-control subject-title"
												placeholder="과목명">
										</div>
										<div class="col-md-2 col-xs-5 option">
											<select class="form-control score">
												<option value="null" selected disabled hidden>점수</option>
												<option value="4.5">A+</option>
												<option value="4">A</option value="4.5">
												<option value="3.5">B+</option value="4.5">
												<option value="3">B</option value="4.5">
												<option value="2.5">C+</option value="4.5">
												<option value="2">C</option value="4.5">
												<option value="1.5">D+</option value="4.5">
												<option value="1">D</option>
												<option value="0">F</option value="4.5">
											</select>
										</div>
										<div class="col-md-2 col-xs-4 option">
											<select class="form-control credit">
												<option value="null" selected disabled hidden>학점</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
											</select>
										</div>
										<div class="col-md-2 col-xs-3">
											<div class="checkbox">
												<label> <input class="major" type="checkbox"
													value="major"> 전공
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group copy">
								<div class="subject-group">
									<div class="row">
										<div class="col-md-6 col-xs-12">
											<input type="text" class="form-control subject-title"
												placeholder="과목명">
										</div>
										<div class="col-md-2 col-xs-5 option">
											<select class="form-control score">
												<option value="null" selected disabled hidden>점수</option>
												<option value="4.5">A+</option>
												<option value="4">A</option value="4.5">
												<option value="3.5">B+</option value="4.5">
												<option value="3">B</option value="4.5">
												<option value="2.5">C+</option value="4.5">
												<option value="2">C</option value="4.5">
												<option value="1.5">D+</option value="4.5">
												<option value="1">D</option>
												<option value="0">F</option value="4.5">
											</select>
										</div>
										<div class="col-md-2 col-xs-4 option">
											<select class="form-control credit">
												<option value="null" selected disabled hidden>학점</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
											</select>
										</div>
										<div class="col-md-2 col-xs-3">
											<div class="checkbox">
												<label> <input class="major" type="checkbox"
													value="major"> 전공
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
						<div class="row">
							<div class="col-xs-12 text-right">
								<button id="add-subject" type="button" class="btn btn-primary">과목추가</button>
								<button id="result" type="button" class="btn btn-success">계산</button>
							</div>
						</div>
					</div>
					<div id="result-box" class="hidden">
						<div class="text-center">
							<p style="font-size: 2rem;">
								총 평점 <span id="allAve"></span> 전공평점 <span id="majorAve"></span>
								이수학점 <span id="allCredit"></span> 전공이수 <span id="majorCredit"></span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>