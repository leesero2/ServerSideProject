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
    <%
    // 파라메터 설정
	String curPage = request.getParameter("curPage")==null?"1":request.getParameter("curPage");					//현재페이지
	String itemPerPage = request.getParameter("itemPerPage")==null?"10":request.getParameter("itemPerPage");		//결과row수
	String companyNm = request.getParameter("companyNm")==null?"":request.getParameter("companyNm");				//영화사명
	String ceoNm = request.getParameter("ceoNm")==null?"":request.getParameter("ceoNm");				//영화사 대표명
	String[] companyPartCdArr = request.getParameterValues("companyPartCdArr")==null? null:request.getParameterValues("companyPartCdArr"); //영화사분류	
	
	// 발급키
	String key = "da46b02f1986121ca5ae31dc5d77048e";
	// KOBIS 오픈 API Rest Client를 통해 호출
    KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);

	// 영화사코드조회 서비스 호출 (boolean isJson, String curPage, String itemPerPage, String companyNm, String ceoNm, String companyPartCd)
    String companyCdResponse = service.getCompanyList(true, curPage, itemPerPage, companyNm, ceoNm, companyPartCdArr);
	// Json 라이브러리를 통해 Handling
	ObjectMapper mapper = new ObjectMapper();
	HashMap<String,Object> result = mapper.readValue(companyCdResponse, HashMap.class);

	request.setAttribute("result",result);
	
	// KOBIS 오픈 API Rest Client를 통해 코드 서비스 호출 (boolean isJson, String comCode )
	String companyPartCdResponse = service.getComCodeList(true,"2601");
	HashMap<String,Object> companyPartCd = mapper.readValue(companyPartCdResponse, HashMap.class);
	request.setAttribute("companyPartCd",companyPartCd);

    %>
<html>
<head>
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>영화 정보</title>
	<meta name="description" content="Login - Register Template">
    <meta name="author" content="Lorenzo Angelino aka MrLolok">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="my-login.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <link rel="stylesheet" href="loading.css">
		 
    <!-- css -->
    <link rel="stylesheet" href="assets/css/reset19.css">
    <link rel="stylesheet" href="assets/css/style19.css">
    <link rel="stylesheet" href="assets/css/swiper.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이 영화는 뭐조</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
<%
	String companyPartCds = "[";
	if(companyPartCdArr!=null){
		for(int i=0;i<companyPartCdArr.length;i++){
			companyPartCds += "'"+companyPartCdArr[i]+"'";
			if(i+1<companyPartCdArr.length){
				companyPartCds += ",";
			}
		}
		companyPartCds += "]";
%>

$(function(){
	var companyPartCd = <%=companyPartCds%>;
	$(companyPartCd).each(function(){
		$("input[name='companyPartCdArr'][value='"+this+"']").prop("checked",true);
	});
});

<%
	}
%>
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
            <h3 id="movie-text">회사 정보</h3>                        
        </div>				      	     
               <div class="moviebar">     
	</div>    
	   	
       
   
</form>
    
    
	<c:out value="${result.companyListResult.totCnt}"/>
<div class="tablelej">
	<table style="margin-left: auto; margin-right: auto;" id="movieData" border="100" cellspacing="10" cellpadding="30" bordercolor="#999999" style="border-collapse;" rules="rows" frame="hsides">
		<tr id = "lejtr">
			<td width="80">영화사<br>코드</td><td width="100">영화사명<br>(영문)</td><td width="100">영화사분류</td><td width="70">대표자명</td><td width="90">필모리스트</td><td width="200">작품</td>
		</tr>	

	<c:if test="${not empty result.companyListResult.companyList}">
	<c:forEach items="${result.companyListResult.companyList}" var="company">
		<tr class = "lejcompany185">
			<td><c:out value="${company.companyCd }"/></td><td><c:out value="${company.companyNm }"/></td><td><c:out value="${company.companyNmEn }"/></td><td><c:out value="${company.companyPartNames }"/></td>
			<td><c:out value="${company.ceoNm}"/></td><td><c:out value="${company.filmoNames}"/></td>						
		</tr>
	</c:forEach>
	</c:if>
	</table>

	<form action="">
		<div class="lejinput">
		</div>
		<div class="lejinput">
		현재페이지 :<input type="text" name="curPage" value="<%=curPage %>">
		최대 출력갯수:<input type="text" name="itemPerPage" value="<%=itemPerPage %>">
		영화사명:<input type="text" name="companyNm" value="<%=companyNm %>">		
		대표자명:<input type="text" name="ceoNm" value="<%=ceoNm %>"> <br/>
		</div>
		<div class="lejinput">	
		<input type="submit" name="" value="조회">
		</div>
	</div></form>
	
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