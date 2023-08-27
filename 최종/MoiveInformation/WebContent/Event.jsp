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
    <link rel="stylesheet" href="assets/css/swiper.css">
    <link rel="stylesheet" href="assets/css/style19.css">
    <link rel="stylesheet" href="loading.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script type="text/javascript">


</script>
</head>
<body onload="myFunction()" style="margin:0;">

<div id="loader"></div>

<div style="display:none;" id="myDiv" class="animate-bottom">
 
</div>

<script>
var myVar;

function myFunction() {
  myVar = setTimeout(showPage, 1000).fadeOut();
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}
</script>

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
       <form>
                       
        <div class="kbar">          		
            	<h3 id="toptext">이벤트</h3>                        
        </div>				      	     
               <div class="kbar">     
		</div>    
	   	</form>

       <section id="movie">
       
        <div class="container">
            <div class="row">
                <div class="movie">
                    <div class="movie_chart">
                        <div class="swiper-container2">
                           <div class="chart_cont1 swiper-wrapper">
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="eventPhoto/e1.jpg" srcset="eventPhoto/e1.jpg 2x" style="height: 500px; width: 250px;" alt="이벤트1">
                                       </figure>
                                       
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="eventPhoto/e2.jpg" srcset="eventPhoto/e2.jpg 2x" style="height: 500px; width: 250px;" alt="이벤트2">
                                       </figure>
                                      
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="eventPhoto/e3.jpg" srcset="eventPhoto/e3.jpg 2x" style="height: 500px; width: 250px;" alt="이벤트3">
                                       </figure>
                                       
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="eventPhoto/e4.jpg" srcset="eventPhoto/e4.jpg 2x" style="height: 500px; width: 250px;" alt="이벤트4">
                                       </figure>
                                       
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                          <img src="eventPhoto/e5.PNG" srcset="eventPhoto/e5.PNG 2x" style="height: 500px; width: 250px;" alt="이벤트5">
                                       </figure>
                                       
                                   </div>
                               </div>
                             <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                          <img src="assets/img/jjang.jpg" srcset="assets/img/poster01@2.jpg 2x" alt="이벤트6">
                                       </figure>
                                      
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="assets/img/jjang.jpg" srcset="assets/img/poster01@2.jpg 2x" alt="이벤트7">
                                       </figure>
                                       
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="assets/img/um.PNG" srcset="assets/img/poster01@2.jpg 2x" alt="이벤트8">
                                       </figure>
                                     
                                   </div>
                               </div>
                           </div>
                        </div>
                </div>
                </div>
            </div>
        </div>
    </section>
    
    </section>
    <div class="container">
    	<div class="k_event" >
    	<h1>이벤트</h1>
    	</div>
        <div class="row2">
    <ul class="img_lst_wrap">
    	<li><a href="Eventconnect.jsp"><img src=assets/img/jjang.jpg alt="<이벤트> 이벤트1"><div class="itm_tit"></div><div class="itm_date">2020.07.03 ~ 2020.07.08</div></a></li>
    	<li><a href="#"><img src="assets/img/jjang.jpg" alt="<이벤트> 이벤트2"><div class="itm_tit"></div><div class="itm_date">2020.07.03 ~ 2020.07.08</div></a></li>
    	<li><a href="#"><img src="assets/img/jjang.jpg" alt="<이벤트> 이벤트3"><div class="itm_tit"></div><div class="itm_date">2020.07.03 ~ 2020.07.08</div></a></li>
    </ul>
    <ul class="img_lst_wrap">
    	<li><a href="#"><img src="assets/img/jjang.jpg" alt="<이벤트> 이벤트4"><div class="itm_tit"></div><div class="itm_date">2020.07.03 ~ 2020.07.08</div></a></li>
    	<li><a href="#"><img src="assets/img/jjang.jpg" alt="<이벤트> 이벤트5"><div class="itm_tit"></div><div class="itm_date">2020.07.03 ~ 2020.07.08</div></a></li>
    </ul>
    <ul class="img_lst_wrap">
    	<li><a href="#"><img src="assets/img/jjang.jpg" alt="<이벤트> 이벤트6"><div class="itm_tit"></div><div class="itm_date">2020.07.03 ~ 2020.07.08</div></a></li>
    </ul>
        </div>

    </div>
           </div>                                                                        
 <!--   <p>Resize the browser window to see the effect.</p> -->
 

 <footer id="footer">
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
    
    
    
    
    <script src="assets/js/swiper.min.js"></script>
    <script>
        //배너 이미지 슬라이드
        var swiper = new Swiper('.swiper-container',{
            pagination: {
                el: '.swiper-pagination',
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            autoplay: {
                delay: 5000,
            },
        });
        
        //영화차트 이미지 슬라이드
        var swiper = new Swiper('.swiper-container2',{
            slidesPerView: 4,
            spaceBetween: 24,
//            mousewheel: {
//                invert: true,
//            },
            keyboard: {
                enabled: true,
                onlyInViewport: false,
            },
            autoplay: {
                delay: 6000,
            },
            breakpoints: {
                600: {
                    slidesPerView: 1.4,
                    spaceBetween: 24
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 24
                },
                960: {
                    slidesPerView: 3,
                    spaceBetween: 24
                }
            }
        });
        
        //영화차트 탭 메뉴
        var movBtn = $(".movie_title > ul > li");    
        var movCont = $(".movie_chart > div");  

        movCont.hide().eq(0).show();

        movBtn.click(function(e){
            e.preventDefault();
            var target = $(this);         
            var index = target.index();  
            movBtn.removeClass("active");   
            target.addClass("active");    
            movCont.css("display","none");
            movCont.eq(index).css("display","block");
        });
        
        //공지사항 탭 메뉴
        var tabMenu = $(".notice");

        //컨텐츠 내용을 숨겨주세요!
        tabMenu.find("ul > li > ul").hide();
        tabMenu.find("li.active > ul").show();

        function tabList(e){
            e.preventDefault();       //#의 기능을 차단
            var target = $(this);
            target.next().show().parent("li").addClass("active").siblings("li").removeClass("active").find("ul").hide();
            //버튼을 클릭하면 ~ div를 보여주고
            //부모의 li 태그에 클래스 추가하고
            //형제의 li 태그에 클래스 제거하고
            //제거한 자식의 div 태그를 숨겨줌 
        }

        tabMenu.find("ul > li > a").click(tabList).focus(tabList);
        
        
    </script>

</body>
</html>