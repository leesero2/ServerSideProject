<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<%@ page import = "review.BoardDBBean" %>
    <%@ page import = "review.ReviewDataBean" %>
    <%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>

 

<html>

 

<head>

 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width"  initial-scale="1">

<!-- 반응형 웹설정 -->

<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- css참조 -->

<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="loading.css">
 <link rel="stylesheet" href="assets/css/reset19.css">
    <link rel="stylesheet" href="assets/css/style19.css">
    <link rel="stylesheet" href="assets/css/swiper.css">
<title>이 영화는 뭐조</title>

</head>

 

<body>

<%
int num = Integer.parseInt(request.getParameter("num"));
String pageNum = request.getParameter("pageNum");

SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

try{
	BoardDBBean dbPro = BoardDBBean.getInstance();
	ReviewDataBean article = dbPro.getArticle(num);

%>
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
    
    
    
 

 


 

    <div class="container">

        <div class="row">

            <form method="post" action="noticePro.jsp"><!--------------------------------------------------------------------------------------------------------------------->

                <!-- 작성된 글은, 아래의 submit을 통해 writeAction.jsp로 보냄 -->

                <table class="table table-striped"

                    style="border: 1px solid #dddddd; margin-top:20px;">

                    <thead>

                        <!-- 테이블 속성 -->

                        <tr>

                            <th style=" text-align:center; width: 149px;">글 번호</th>
                            <td style=" text-align:center; width: 149px;"><%=article.getReviewNumber()%></td>
                            
                            <th style=" text-align:center; width: 149px;">작성자</th>
                            <td style=" text-align:center; width: 149px;"><%=article.getWriter()%></td>
                            
                            <th style=" text-align:center; width: 149px;">조회수</th>
                            <td style=" text-align:center; width: 149px;"><%=article.getReadcount()%></td>

                        </tr>
                  
                        <tr>

                            <th style=" text-align:center; ">영화 제목</th>
                            <td colspan="3"><%=article.getReviewMovieTitle()%></td>
                            <th style=" text-align:center; ">시간</th>
                            <td style=" text-align:center; "><%= sdf.format(article.getReviewTime())%></td>

                        </tr>
                    </thead>
                    <tbody>

                        <tr>

                            <td colspan="6" style="height: 500px; width: 1400px; margin: auto; background-color: #ffffff;"> <%=article.getReviewContent()%></td>


                        </tr>
                        
                        

                    </tbody>
               <tr>
                  <td colspan="4"></td>
                  <td colspan="2"><input type="button" value="글 목록" style="padding: 5px; margin-right: -4px;margin-left: 150px;"  onclick="document.location.href='Review.jsp?&pageNum=<%=pageNum%>'">
                  <input type="button" value="글 수정" style="padding: 5px;"onclick="document.location.href='ReviewUpdateForm.jsp?num=<%=article.getReviewNumber()%>&pageNum=<%=pageNum%>'">
                  <input type="button" value="글 삭제" style="padding: 5px; margin-left: -4px;"onclick="document.location.href='ReviewDeleteForm.jsp?num=<%=article.getReviewNumber()%>&pageNum=<%=pageNum%>'"></td> 
               </tr>
                </table>

            </form>

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
 }catch(Exception e){} 
 %>

    <!-- 부트스트랩에서 제공하는 자바스크립트 참조 -->

</body>

 

</html>


