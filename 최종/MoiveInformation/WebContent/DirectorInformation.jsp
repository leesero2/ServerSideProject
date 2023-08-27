<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
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

 <%
    // 파라메터 설정
   String curPage = request.getParameter("curPage")==null?"1":request.getParameter("curPage");               //현재페이지
   String itemPerPage = request.getParameter("itemPerPage")==null?"10":request.getParameter("itemPerPage");      //결과row수
   String peopleNm = request.getParameter("peopleNm")==null?"":request.getParameter("peopleNm");            //영화인명
   String filmoNames = request.getParameter("filmoNames")==null?"":request.getParameter("filmoNames");            //영화인 대표명
   
   // 발급키
   String key = "da46b02f1986121ca5ae31dc5d77048e";
   // KOBIS 오픈 API Rest Client를 통해 호출
    KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);

   // 영화사코드조회 서비스 호출 
    String peopleCdResponse = service.getPeopleList(true, curPage, itemPerPage, peopleNm, filmoNames);
   // Json 라이브러리를 통해 Handling
   ObjectMapper mapper = new ObjectMapper();
   HashMap<String,Object> result = mapper.readValue(peopleCdResponse, HashMap.class);

   request.setAttribute("result",result);
   
   
    %>


<head>
   <meta name="author" content="Kodinger">
   <meta name="viewport" content="width=device-width,initial-scale=1">
   <title>감독 정보</title>
   <meta name="description" content="Login - Register Template">
    <meta name="author" content="Lorenzo Angelino aka MrLolok">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <meta charset="utf-8">
  <meta name="description" content="">
  <meta name="author" content="">   
    <!-- css -->
    <link rel="stylesheet" href="assets/css/reset19.css">
    <link rel="stylesheet" href="assets/css/style19.css">
    <link rel="stylesheet" href="assets/css/swiper.css">
    <link rel="stylesheet" href="main.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="loading.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">

  <title>Small Business - Start Bootstrap Template</title>

<script type="text/javascript">
    
    $(function() {
        var w = $(window).width(),
          h = $(window).height();
        $('mNav .container').height(h - 60);
        $('body').prepend('<div id="overlay">');
        $('#ydg0704_1').click(function() {$('html').addClass('active');});
        $('#close-menu').click(function() {$('html').removeClass('active');});
        $('#overlay').click(function() {$('html').removeClass('active');});
        $(window).resize(function() {
          var w = $(window).width(),
            h = $(window).height();
          //$('section').width(w);
          $('section').height(h);
          $('menu .container').height(h - 60);
        });

      });
    
    </script>
   
    
    <!-- HTLM5shiv ie6~8 -->
    <!--[if lt IE 9]> 
      <script src="assets/js/html5shiv.min.js"></script>
      <script type="text/javascript">
         alert("현재 브라우저는 지원하지 않습니다. 크롬 브라우저를 추천합니다.!");
      </script>
   <![endif]-->
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
    
    <menu>
    <div class="logo"><a href=""><span class="ion-camera"></span></a></div>
     <span id="close-menu"><img src="assets/img/x.png"></span></span>
     <div class="container">
       <div class="box">
         <ul>
           <li><a href="#">Fashion</a></li>
           <li><a href="#">Fashion Shows</a></li>
           <li><a href="#">Culture</a></li>
           <li><a href="#">Magazine</a></li>
           <li><a href="#">Met Gala</a></li>
           <li><a href="#">Videos</a></li>
           <li><a href="" target="_blank">Subscribe</a></li>
         </ul>
         <ul>
           <li><a href="#">Promotions</a></li>
           <li><a href="#">Vogue Archive</a></li>
           <li><a href="#">Log In</a> | <a href="#">Register</a></li>
         </ul>
         <ul>
           <li><a class="ion-social-facebook" href="#" target="_blank"></a></li>
           <li><a class="ion-social-twitter" href="#" target="_blank"></a></li>
           <li><a class="ion-social-googleplus" href="#" target="_blank"></a></li>
           <li><a class="ion-social-pinterest" href="#" target="_blank"></a></li>
           <li><a class="ion-social-instagram" href="#" target="_blank"></a></li>
         </ul>
         <div class="sign-up">
           <a href="#">               Sign up for Newsletter             <span class="ion-arrow-right-c"></span>            </a>
         </div>
       </div>
     </div>
   </menu>
    
    
    
    <!-- 윤동근 1번째 손대는 부분  -->
        <div class="slider">
           <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide ss1">
                        <div class="container">
                            <div class="row">
                                <h3>나쁜녀석들 포에버</h3>
                                <p>윾쾌한 형들의 액션 </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide ss2">
                        <div class="container">
                            <div class="row">
                                <h3>버즈 오브 프레이 할리 퀸의 해방</h3>
                                <p>할리퀸만 보고 끄면 됨 </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide ss3">
                        <div class="container">
                            <div class="row">
                                <h3>블랙 위도우</h3>
                                <p>절벽에서 떨어진 자의 과거 </p>
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
    <!-- //banner -->
    
  <!-- Page Content -->    
 <form>
                       
            <div class="moviebar">                
            <h3 id="movie-text"><font color="black">감독 정보</font></h3>                            
        </div>                          
            <div class="moviebar">        
   </div>             
</form>

   <div class="tablelej">
   <table style="margin-left: auto; margin-right: auto;" id="movieData" border="100" cellspacing="10" cellpadding="30" bordercolor="#999999" style="border-collapse;" rules="rows" frame="hsides">
      <tr id = "lejtr">
         <td><b>영화인코드</b></td><td><b>영화인명</b></td><td><b>영문명</b></td><td><b>분야</b></td><td><b>필모리스트</b></td>
      </tr>
   <c:if test="${not empty result.peopleListResult.peopleList}">
   <c:forEach items="${result.peopleListResult.peopleList}" var="people">
      <tr>
         <td><c:out value="${people.peopleCd }"/></td><td><c:out value="${people.peopleNm }"/></td><td><c:out value="${people.peopleNmEn }"/></td><td><c:out value="${people.repRoleNm}"/></td>
         <td><c:out value="${people.filmoNames}"/></td>                  
      </tr>
   </c:forEach>
   </c:if>
  
   </table>
   
   <form action="">
   <div class="lejinput">
      현재페이지 :<input type="text" name="curPage" value="<%=curPage %>">
      최대 출력갯수:<input type="text" name="itemPerPage" value="<%=itemPerPage %>">
      영화인명:<input type="text" name="peopleNm" value="<%=peopleNm %>">      
      필모그래피:<input type="text" name="filmoNames" value="<%=filmoNames %>"> <br/>
   </div>
   <div class="lejtype">
      <input type="submit" name="" value="조회">
   </div>
    </div>
   </form>
 
  <!-- /.container -->

  <!-- Footer -->
  <footer id="footer" style="margin-top:700px;">
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