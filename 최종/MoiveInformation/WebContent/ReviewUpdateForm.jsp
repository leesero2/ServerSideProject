<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
    <%@ page import = "review.BoardDBBean" %>
    <%@ page import = "review.ReviewDataBean" %>

<%@ page import="java.io.PrintWriter"%>
 <% String id = (String)session.getAttribute("id");
  if(id==null || id.equals("")) {
	  response.sendRedirect("login.jsp");
	  return;
  }
  %>
<!DOCTYPE html>

 

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
<%
int num = Integer.parseInt(request.getParameter("num"));
String pageNum = request.getParameter("pageNum");

  
  try{
      BoardDBBean dbPro = BoardDBBean.getInstance(); 
      ReviewDataBean article =  dbPro.updateGetArticle(num);

%>
<<header id="header">
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

 


            <div class="moviebar">          		
            <h3 id="movie-text">자유게시판</h3>                        
        </div>				      	     
               <div class="moviebar"> 
                <form method="post" action="ReviewUpdatePro.jsp?pageNum=<%=pageNum %>" onsubmit="return writeSave()">

                <!-- 작성된 글은, 아래의 submit을 통해 writeAction.jsp로 보냄 -->

                <table class="table table-striped"

                    style="text-align: center; border: 1px solid #dddddd">

                    <thead>

                        <!-- 테이블 속성 -->

                        <tr>

                            <th colspan="2"

                                style="background-color: #8181F7; text-align: center;">게시판

                                글쓰기</th>

                            <!-- 2개에 걸처 사용되도록 colspan="2" -->

                        </tr>

                    </thead>

 

                    <tbody>

                        <tr>

                            <td><textarea type="text" class="form-control"  placeholder="글 제목" name="reviewMovieTitle" 
                            maxlength="200" style="height: 40px; ime-mode:active; width: 1400px; margin: auto;" ><%=article.getReviewMovieTitle()%></textarea></td>

                                </tr>
                                 <tr>

                              <td style="background-color: #DAD9FF; text-align: left; margin-left: 20px;"><p style="margin-left: 30px;">작성자 아이디</p>
                               <input type="text"  placeholder="작성자" name="writer" style="height: 15px; width: 1400px; 
                               font-size: 15px; background-color: #DAD9FF; border:none;border-right:0px; border-top:0px; boder-left:0px; 
                               margin-left: 30px; boder-bottom:0px;"
                               value="<%=article.getWriter()%>">
  									<input type="hidden" name="reviewNumber" value="<%=article.getReviewNumber()%>"></td>
                                </tr>

                                <tr>

                            <td><textarea class="form-control" placeholder="내 용" name="reviewContent" maxlength="2048" align="center"    style="height: 500px; margin: auto; width: 1400px; margin: auto;" ><%=article.getReviewContent()%></textarea></td>

                            <!-- 장문의 글을 쓸수있는 textarea -->

                        </tr>
                        <tr>

                              <td><textarea type="text"class="form-control"  placeholder="비밀번호" name="passwd" style="height: 30px; width: 500px; margin: auto;"></textarea></td>
  
                                </tr>
                        
                        

                    </tbody>

                </table>

                <input type="submit"  class="btn btn-primary pull-right" value="수정하기">

            </form>
 				</div>

    <div class="container">

        <div class="row">

            

        </div>

    </div>
    

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

    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

 

    <!--애니메이션 담당할 제이쿼리 참조  -->

 

    <script src="js/bootstrap.js"></script>
<%
}catch(Exception e){}%>      
      
 

    <!-- 부트스트랩에서 제공하는 자바스크립트 참조 -->

</body>

 

</html>



