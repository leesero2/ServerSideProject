<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Arrays"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService"%>
<%@page import="org.codehaus.jackson.map.ObjectMapper"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Collection"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.util.JSONBuilder"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--
------------------------------------------------------------
* @설명 : 영화코드 조회 REST 호출 - 서버측에서 호출하는 방식 예제
------------------------------------------------------------
-->
<html>
<head>
   <meta name="author" content="Kodinger">
   <meta name="viewport" content="width=device-width,initial-scale=1">
   <title>영화 정보</title>
   <meta name="description" content="Login - Register Template">
    <meta name="author" content="Lorenzo Angelino aka MrLolok">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   
       <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
     <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
    <!-- css -->
    <link rel="stylesheet" href="assets/css/Event.css">
    <link rel="stylesheet" href="assets/css/evev.css">
    <link rel="stylesheet" href="assets/css/reset19.css">
    <link rel="stylesheet" href="assets/css/style19.css">
    <link rel="stylesheet" href="assets/css/swiper.css">
    <link rel="stylesheet" href="loading.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원 소개</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script type="text/javascript">


</script>
</head>
<body>
    <header id="header">
                <div class="header clearfix" style="padding-left:50px;padding-right:50px;">
                    <h1>
                        <a href="http://www.dit.ac.kr/main/index.php">
                            <em><img src="assets/img/logo.png" alt="MEGABOX"></em>
                        </a>    
                        <a href="main.jsp">
                        <em><img src="assets/img/dit.png" alt="LIFE THEATER"></em>
                        </a>
                    </h1>
                    <nav id="mNav">
                        <h2 class="ir_so">이 영환 뭐조</h2>
                        <a href="#" class="ham"><span id="ydg0704_1"></span></a>
                    </nav>
                    <nav class="nav">
                        <ul class="clearfix">
                        <!--  
                        <li><a href="#" method="post"><span>영화</span></a>
                               <ul class="ydg">
                                  <li><a href="#" method="post">현재 상영 영화</a></li>
                                  <li><a href="#" method="post">개봉 예정 영화</a></li>
                                  <li><a href="#" method="post">영화 상영 정보</a></li>
                               </ul>
                            </li>
                         -->   
                        <!--  
                        <li><a href="#" method="post"><span>영화</span></a>
                               <ul class="ydg">
                                  <li><a href="#" method="post">현재 상영 영화</a></li>
                                  <li><a href="#" method="post">개봉 예정 영화</a></li>
                                  <li><a href="#" method="post">영화 상영 정보</a></li>
                               </ul>
                            </li>
                         -->   
                            <li><a href="main.jsp" method="post"><span>정보</span></a>
                               <ul class="ydg">
                                  <li><a href="company.jsp" method="post">영화사</a></li>
                                  <li><a href="DirectorInformation.jsp" method="post">감독정보</a></li>
                                  <li><a href="movie.jsp" method="post">영화정보</a></li>
                               </ul>
                            </li>
                            <li> <a href="main.jsp" method="post"><span>공지사항</span></a>
                               <ul class="ydg">
                                  <li><a href="notice.jsp" method="post">공지</a></li>
                                  <li><a href="Event.jsp" method="post">이벤트</a></li>
                               </ul>
                            </li>
                            <li> <a href="main.jsp" method="post"><span>소개</span></a>
                               <ul class="ydg">
                                  <li><a href="DITintroduction.jsp" method="post">회사소개</a></li>
                                  <li><a href="DITemployee.jsp" method="post">직원소개</a></li>
                               </ul>
                            </li>
                            <li> <a href="main.jsp" method="post"><span>게시판</span></a>
                               <ul class="ydg">
                                  <li><a href="FreeWrite.jsp" method="post">자유게시판</a></li>
                                  <li><a href="Review.jsp" method="post">리뷰게시판</a></li>
                               </ul>
                            </li>
                            <li><a href="register.jsp" method="post"><span>회원가입</span></a>
                               <ul class="ydg">
                                  <li><a href="login.jsp" method="post">로그인</a></li>
                               </ul>
                            </li>
                        </ul>
                    </nav>    
                </div>
    </header>
    <!-- //header -->
    <section id="banner">
        <div class="banner_menu">
            <h2 class="ir_so">배너 영역</h2>
            
        </div>
        <div class="slider">
           <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide ss1">
                        <div class="container">
                            <div class="row">
                                <h3>어벤져스 : 앤드게임</h3>
                                <p>역대 최단 기간 1000만 관객 돌파 기록 </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide ss2">
                        <div class="container">
                            <div class="row">
                                <h3>어벤져스 : 앤드게임</h3>
                                <p>역대 최단 기간 1000만 관객 돌파 기록 </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide ss3">
                        <div class="container">
                            <div class="row">
                                <h3>어벤져스 : 앤드게임</h3>
                                <p>역대 최단 기간 1000만 관객 돌파 기록 </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
    </section>
    
    
           <form>
                       
        <div class="kbar">                
               <h3 id="toptext">직원 소개</h3>                        
        </div>                          
               <div class="kbar">     
      </div>    
<div class="tablelej">
   <table style="margin-left: auto; margin-right: auto;" id="movieData" border="100" cellspacing="10" cellpadding="30" bordercolor="#999999" style="border-collapse;" rules="rows" frame="hsides">
      <tr id = "lejtr">
         <td style="font-size: 30px;"><b>JSP로 뭉쳐진 떡잎방법대</b></td>
      </tr>         
      <tr id = "lejtr">
         <td style="font-size: 20px;"><b style="font-size: 25px;">조장:</b> 이지훈</td>
      </tr>   
      <tr id = "lejtr">
         <td style="font-size: 20px;"><b style="font-size: 25px;">조원:</b> 김기완 | 윤동근 | 이어진</td>
      </tr>      
   </table>
</div>   
   
       <div class="talbelejimg" >
    <ul style="text-align:center; margin-top:200px;">
       <li><img src="memberPhoto/2.jpeg"  style="height: 400px; width: 300px;"><div class="itm_tit"></div><div class="itm_date"></div></li>
       <li><img src="memberPhoto/1.JPG"  style="height: 400px; width: 300px;"><div class="itm_tit"></div><div class="itm_date"></div></li>
 		<li><img src="memberPhoto/3.jpeg"  style="height: 400px; width: 300px;"><div class="itm_tit"></div><div class="itm_date"></div></li>
		 <li><img src="memberPhoto/4.png"  style="height: 400px; width: 300px;"><div class="itm_tit"></div><div class="itm_date"></div></li>
    </ul>
        </div>
     <!--   <p>Resize the browser window to see the effect.</p> -->
 

 <footer id="footer" style="margin-top: 200px;">
        <div id="footer_sns">
            <div class="container">
                <div class="footer_sns">
                    <ul>
                        <li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
                        <li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
                        <li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
                        <li class="icon s4"><a href="#"><span class="ir_pm">구글 플레이</span></a></li>
                        <li class="icon s5"><a href="#"><span class="ir_pm">아이폰 앱스토어</span></a></li>
                    </ul>    
                    <div class="tel">
                        <a href="#">ARS <em>051-999-999</em></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer_infor">
            <div class="container">
                <div class="row">
                    <div class="footer_infor">
                        <h2><img src="assets/img/logo.png" alt="megabox"></h2>
                        
                        <address>
                            <p>부산광역시 부산진구 양지로 54<br><span class="bar2">대표자명 이어진</span> 개인정보보호 책임자 경영지원실 실장 김기완<br><span class="bar2">사업자등록번호 999-999-999</span> 통신판매업신고번호 제 833호</p>
                            <p>Copyright 2020 by  WHAT IS THIS MOVIE Inc. All right reserved</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </footer>
   
</body>
</html>