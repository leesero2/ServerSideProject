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
<%@ page import = "java.text.SimpleDateFormat" %>
<%@page import="net.sf.json.JSONArray"%>

<%@ page import="java.sql.Timestamp" %>
<%@ page import = "review.BoardDBBean" %>
<%@ page import = "review.ReviewDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%! //선언문 전역변수
   //int pageSize = 10;
	int pageSize = 10; //페이지 목록 최대화면 수 
   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<%
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null)
	{
		pageNum = "1";
	}
	
	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1) * pageSize + 1; // 11번부터 갖고온다는 말 
	int endRow = currentPage * pageSize;
		

   int count = 0;
   int number = 0;  // 얘는 
   

   List<ReviewDataBean> articleList = null;
   BoardDBBean dbPro = BoardDBBean.getInstance();
   count = dbPro.getArticleCount();
   
   if(count>0){
      articleList = dbPro.getArticles(startRow,pageSize);
   }
   
   number = count - (currentPage-1) * pageSize;
%>
<!--
------------------------------------------------------------
* @설명 : 영화코드 조회 REST 호출 - 서버측에서 호출하는 방식 예제
------------------------------------------------------------
-->
<html>
<head>
<style>
.paging {
	text-align: center;
	margin-bottom: 10px;
	}
	.paging a {
	display: inline-block;
	font-weight: bold;
	text-decoration: none;
	padding: 5px 8px;
	border: 1px solid #ccc;
	color: #000;
	background-color: #F5F5DC;
	}
	.paging a.select {
	color: #fff;
	background-color: #8181F7;
	}
	
</style>
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>이 영화는 뭐조</title>
	<meta name="description" content="Login - Register Template">
    <meta name="author" content="Lorenzo Angelino aka MrLolok">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="my-login.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <link rel="stylesheet" href="loading.css">
		 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  	<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
    <!-- css -->
    <link rel="stylesheet" href="assets/css/reset19.css">
    <link rel="stylesheet" href="assets/css/style19.css">
    <link rel="stylesheet" href="assets/css/swiper.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
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
                       
            <div class="moviebar">          		
            <h3 id="movie-text">리뷰 게시판 </h3>                        
        </div>				      	     
               <div class="moviebar">   
               <p style="text-align: right;">글 목록 (전체글<%=count %>)</p>
 <%if (count==0) { %>
 
<div class="container">
 <table> 
<tr>
<td align = "center">
게시판에 게시글이 없음.
</td>
</table> 
<% }  else  { %>  
                                                                                   
 <!--   <p>Resize the browser window to see the effect.</p> -->
  <div class="table-responsive-sm" >          
  <table class="table table-bordered" margin="10px">
    <thead>
      <tr>
        <th width="70" bgcolor="#8181F7" align="center">번호</th>
        <th align="center" width="400">영화 제목</th>
        <th align="center"  width="100">작성자</th>
        <th align="center"  width="150">작성일</th>
        <th align="center"  width="50">조회수</th>
        
        
      </tr>
         <%   	
   for(int i=0; i<articleList.size(); i++){
	   ReviewDataBean article = articleList.get(i);
	   
	   %>
     	<tr>
 	<td align="center"  width="70" ><%=number--%></td>      
      <td width="400">
      <a href="ReviewContent.jsp?num=<%=article.getReviewNumber()%>&pageNum=<%=currentPage%>">
          <%=article.getReviewMovieTitle() %> </a> 
      </td>
      
       <td width="100"><%=article.getWriter() %></td>
      <td align="center"  width="100" ><%=sdf.format(article.getReviewTime())%></td> 
     <th align="center"  width="50"><%=article.getReadcount() %></th>
   </tr>
   <%} %>
  </table>
  
  <%} %>  
 
	</div>    
	   	
       <a href = "ReviewWriteForm.jsp" class="btn btn-primary pull-right"  style= "margin-left: 93%;">글작성</a> 
    <% 
if(count>0) {
	int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
	int startPage = 1;
	
	if(currentPage % 10 != 0)
		startPage = (int) (currentPage/10)*10 + 1;
	else
		startPage = ((int)(currentPage/10)-1)*10+1;
	
	int pageBlock = 10; 
	
	int endPage = startPage + pageBlock - 1;
	if(endPage > pageCount) endPage = pageCount;
	

	if(startPage > 10) { %>
	
	
	<a  href="FreeWrite.jsp?pageNum=<%= startPage = 10 %>">이전</a>
	<%} 
	
	%><div class="paging">
	<% for (int i = startPage; i<= endPage; i++){ %> 
	 <!-- 여기가 핵심부분 -->
	<a class="select" href="FreeWrite.jsp?pageNum=<%= i%>">[<%=i %>]</a>
		
		<%}%></div><%
	
	if(endPage < pageCount) { %>
	<a href="FreeWrite.jsp?pageNum=<%= startPage + 10%>">다음</a>
	
	<% 
	} 
	}
	
	%>
   
</form>

  </div>
  
</div>




<!--     <a class="select" href="#">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a> -->


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
    

</body>
</html>