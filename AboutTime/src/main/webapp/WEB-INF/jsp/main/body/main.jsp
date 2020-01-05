<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="main-page">
            <div class="banner">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="/resources/static/img/Banner1.jpg">
                        </div>
                        <div class="item">
                            <img src="/resources/static/img/Banner2.jpg">
                        </div>
                        <div class="item">
                            <img src="/resources/static/img/Banner3.jpg">
                        </div>
                        <div class="item">
                            <img src="/resources/static/img/Banner4.jpg">
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="container content-sm">
                <div class="text-center sub-title-box">
                    <h2>About Time</h2>
                    <p>다양한 기능이 있는 대학교 커뮤니티 사이트 입니다. </p>
                </div>
            </div>
            <div class="container-fluid parallaxBg">
                <div class="container text-center">
                    <div class="col-sm-3 col-xs-6">
                        <div class="element-box">
                            <span class="element">시간표</span>
                            <p>최적의 시간표를 찾아드립니다</p>
                        </div>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <div class="element-box">
                            <span class="element">식단표</span>
                            <p>매일 업데이트 되는 학식을 확인하세요</p>
                        </div>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <div class="element-box">
                            <span class="element">게시판</span>
                            <p>각 학교별로 분리되어 있습니다</p>
                        </div>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <div class="element-box">
                            <span class="element">계산기</span>
                            <p>간단하게 본인의 학점을 계산하세요</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="information">
                <div class="container">
                    <div class="row info-box" data-aos="fade-right">
                        <div class="col-sm-6 col-xs-12">
                            <div class="img-wrap">
                                <img src="/resources/static/img/시간표 최종.jpg">
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12 text-left">
                            <div class="head-line">
                                <h1>시간표</h1>
                            </div>
                            <div class="info-contents">
                                <p style="font-weight: bold;"><span>· </span> 수강신청 시간표를 만들때 원하는 과목만 입력해주면 자동으로 모든 조합의 시간표를 만들어 드립니다.</p>
                                <p>1. 과목 목록 탭에서는 과목 추가, 삭제, 수정이 가능합니다.</p>
                                <p>2. 과목 목록 탭 우측 상단에 있는 과목 추가를 눌러 듣고 싶은 과목을 추가합니다.</p>
                                <p>3. 시간표 목록 탭에 들어가 본인이 원하는 조건에 맞게 값을 입력합니다.</p>
                                <P>4. 만들어진 시간표는 목록 우측에 있는 (보기) 버튼으로 확인 할 수 있고 우측 상단에 있는 (공강) 버튼을 통해 
                                      공강이 있는 시간표도 확인 가능합니다.
                                </P>
                            </div>
                        </div>
                    </div>
                    <div class="row info-box" data-aos="fade-left">
                        <div class="col-sm-6 col-xs-12 text-left">
                            <div class="head-line">
                                <h1>식단표</h1>
                            </div>
                            <div class="info-contents">
                                <p style="font-weight: bold;"><span>· </span>각 학교의 기숙사 식단표를 확인 가능합니다.</p>
                                <p><span>- </span>식단표는 매일 새벽에 업데이트 됩니다.</p>
                                <p><span>- </span>API를 이용하지 않고 직접 스크래핑하여 제공되는 학교가 매우 적습니다.</p>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                            <div class="img-wrap">
                                <img src="/resources/static/img/식단표 최종.jpg">
                            </div>
                        </div>
                    </div>
                    <div class="row info-box" data-aos="fade-right">   
                        <div class="col-sm-6 col-xs-12 text-left">
                            <div class="img-wrap">
                                <img src="/resources/static/img/게시판 최종.jpg">
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                            <div class="head-line">
                                <h1>게시판</h1>
                            </div>
                            <div class="info-contents">
                                <p style="font-weight: bold;"><span>· </span>각 학교별로 커뮤니티 게시판 기능을 제공합니다.</p>
                                <p><span>- </span>게시글 확인을 제외한 모든 기능은 로그인 상태에서 이용 가능합니다.</p>
                                <p><span>- </span>학교 메인 페이지에선 달력에 메모 기능을 사용 가능합니다.</p>
                                <p><span>- </span>게시한 글이나 댓글은 본인만 수정, 삭제 가능합니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row info-box" data-aos="fade-left">
                        <div class="col-sm-6 col-xs-12 text-left">
                            <div class="head-line">
                                <h1>학점 계산기</h1>
                            </div>
                            <div class="info-contents">
                                <p style="font-weight: bold;"><span>· </span>본인의 학점을 손쉽게 계산 가능합니다.</p>
                                <p><span>- </span>현재는 4.5학점 기준으로만 이용 가능합니다.</p>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                            <div class="img-wrap">
                                <img src="/resources/static/img/계산기 최종.jpg">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="/resources/aos-animation/aos.js"></script>
</body>
<script>
    AOS.init({
        once: true
        });
</script>
