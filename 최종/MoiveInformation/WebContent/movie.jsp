<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
* @설명 : 일별 박스오피스 REST 호출 - 서버측에서 호출하는 방식 예제
------------------------------------------------------------
-->
    <%
    // 파라메터 설정
   String targetDt = request.getParameter("targetDt")==null?"20120101":request.getParameter("targetDt");         //조회일자
   String itemPerPage = request.getParameter("itemPerPage")==null?"10":request.getParameter("itemPerPage");      //결과row수
   String multiMovieYn = request.getParameter("multiMovieYn")==null?"":request.getParameter("multiMovieYn");      //“Y” : 다양성 영화 “N” : 상업영화 (default : 전체)
   String repNationCd = request.getParameter("repNationCd")==null?"":request.getParameter("repNationCd");         //“K: : 한국영화 “F” : 외국영화 (default : 전체)
   String wideAreaCd = request.getParameter("wideAreaCd")==null?"":request.getParameter("wideAreaCd");            //“0105000000” 로서 조회된 지역코드

   // 발급키
   String key = "da46b02f1986121ca5ae31dc5d77048e";
   // KOBIS 오픈 API Rest Client를 통해 호출
    KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);

   // 일일 박스오피스 서비스 호출 (boolean isJson, String targetDt, String itemPerPage,String multiMovieYn, String repNationCd, String wideAreaCd)
    String dailyResponse = service.getDailyBoxOffice(true,targetDt,itemPerPage,multiMovieYn,repNationCd,wideAreaCd);

   // Json 라이브러리를 통해 Handling
   ObjectMapper mapper = new ObjectMapper();
   HashMap<String,Object> dailyResult = mapper.readValue(dailyResponse, HashMap.class);

   request.setAttribute("dailyResult",dailyResult);

   // KOBIS 오픈 API Rest Client를 통해 코드 서비스 호출 (boolean isJson, String comCode )
   String codeResponse = service.getComCodeList(true,"0105000000");
   HashMap<String,Object> codeResult = mapper.readValue(codeResponse, HashMap.class);
   request.setAttribute("codeResult",codeResult);
    %>

<html>
<head>
<meta charset="utf-8">
   <meta name="author" content="Kodinger">
   <meta name="viewport" content="width=device-width,initial-scale=1">
   <title>영화 정보</title>
   <meta name="description" content="Login - Register Template">
    <meta name="author" content="Lorenzo Angelino aka MrLolok">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   
       
    <!-- css -->
    <link rel="stylesheet" href="assets/css/reset19.css">
    <link rel="stylesheet" href="assets/css/style19.css">
    <link rel="stylesheet" href="loading.css">
    <link rel="stylesheet" href="assets/css/swiper.css">
    

<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">
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
                       
            <div class="moviebar">                
            <h3 id="movie-text">영화 정보</h3>                        
        </div>                          
               <div class="moviebar">     
   </div>    
   
</form>
            
    <div class="lejvalue">
   <c:out value="${dailyResult.boxOfficeResult.boxofficeType}"/>
   <c:out value="${dailyResult.boxOfficeResult.showRange}"/><br/>
   </div>
   
   <div class="tablelej">
   <table style="margin-left: auto; margin-right: auto;"  id="movieDate"  border="100" cellspacing="10" cellpadding="30" bordercolor="#999999" style="border-collapse;" rules="rows" frame="hsides">
      <tr id = "lejtr">
         <td>순위</td><td>영화명</td><td>개봉일</td><td>매출액</td><td>매출액점유율</td><td>매출액증감(전일대비)</td>
         <td>누적매출액</td><td>관객수</td><td>관객수증감(전일대비)</td><td>누적관객수</td><td>스크린수</td><td>상영횟수</td>
      </tr>
      
   <c:if test="${not empty dailyResult.boxOfficeResult.dailyBoxOfficeList}">
   <c:forEach items="${dailyResult.boxOfficeResult.dailyBoxOfficeList}" var="boxoffice">
      <tr>
         <td><c:out value="${boxoffice.rank }"/></td><td><c:out value="${boxoffice.movieNm }"/></td><td><c:out value="${boxoffice.openDt }"/></td><td><c:out value="${boxoffice.salesAmt }"/></td>
         <td><c:out value="${boxoffice.salesShare }"/></td><td><c:out value="${boxoffice.salesInten }"/>/<c:out value="${boxoffice.salesChange }"/></td><td><c:out value="${boxoffice.salesAcc }"/></td><td><c:out value="${boxoffice.audiCnt }"/></td>
         <td><c:out value="${boxoffice.audiInten }"/>/<c:out value="${boxoffice.audiChange }"/></td><td><c:out value="${boxoffice.audiAcc }"/></td><td><c:out value="${boxoffice.scrnCnt }"/></td>
         <td><c:out value="${boxoffice.showCnt }"/></td>
      </tr>
   </c:forEach>
   </c:if>

   </table>
   <form action="">
      <div class="lejinput">
      일자:<input type="text" name="targetDt" value="<%=targetDt %>">
      최대 출력갯수:<input type="text" name="itemPerPage" value="<%=itemPerPage %>">
      영화구분:<select name="multiMovieYn">
         <option value="">-전체-</option>
         <option value="Y"<c:if test="${param.multiMovieYn eq 'Y'}"> selected="seleted"</c:if>>다양성영화</option>
         <option value="N"<c:if test="${param.multiMovieYn eq 'N'}"> selected="seleted"</c:if>>상업영화</option>
      </select>
      국적:<select name="repNationCd">
         <option value="">-전체-</option>
         <option value="K"<c:if test="${param.repNationCd eq 'K'}"> selected="seleted"</c:if>>한국</option>
         <option value="F"<c:if test="${param.repNationCd eq 'F'}"> selected="seleted"</c:if>>외국</option>
         </select>
      지역:<select name="wideAreaCd">
         <option value="">-전체-</option>
         <c:forEach items="${codeResult.codes}" var="code">
         <option value="<c:out value="${code.fullCd}"/>"<c:if test="${param.wideAreaCd eq code.fullCd}"> selected="seleted"</c:if>><c:out value="${code.korNm}"/></option>
         </c:forEach>
         </select>
         </br>
         <div class="lejtype">
         <input type="submit" name="" value="조회">
         </div>
         </div>
            </div>
   </form>
     <footer id="footer" style="margin-top:500px;">
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