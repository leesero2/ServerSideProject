<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.Timestamp" %>
<%@ page import = "movie.BoardDBBean" %>
<%@ page import = "movie.MovieDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>
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
   

   List<MovieDataBean> articleList = null;
   BoardDBBean dbPro = BoardDBBean.getInstance();
   count = dbPro.getArticleCount();
   
   if(count>0){
      articleList = dbPro.getArticles();
   }
   
   number = count - (currentPage-1) * pageSize;
%>



<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="format-detection" content="telephone=no">
    <meta name="author" content="webstoryboy">
    <meta name="description" content="메가박스 사이트 따라하면서 배우는 튜토리얼입니다.">
    <meta name="keywords" content="메가박스, 유투브, 영화, 최신영화, 영화관, CGV, 롯데시네마, 웹스토리보이, 웹스, 사이트 만들기, 따라하기, 이미지 슬라이드">
    <title>이 영환 뭐조</title>

    <!-- css -->
    <link rel="stylesheet" href="assets/css/reset19.css">
    <link rel="stylesheet" href="assets/css/style19.css">
    <link rel="stylesheet" href="assets/css/swiper.css">
    <link rel="stylesheet" href="loading.css">
    
    <!-- 파비콘 -->
    <!-- 
    <link rel="shortcut icon" href="assets/icons/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="assets/icons/favicon_72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="96x96" href="assets/icons/favicon_96.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/icons/favicon_144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="192x192" href="assets/icons/favicon_192.png" />
     -->
    <!-- 페이스북 메타 태그 -->
    <meta property="og:title" content="메가박스 사이트 만들기" />
    <meta property="og:url" content="https://github.com/webstoryboy/megabox2019" />
    <meta property="og:image" content="https://webstoryboy.github.io/megabox2019/mega.jpg" />
    <meta property="og:description" content="메가박스 사이트 따라하면서 배우는 튜토리얼입니다." />
   
    <!-- 트위터 메타 태그 -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="메가박스 사이트 만들기">
    <meta name="twitter:url" content="https://github.com/webstoryboy/megabox2019/">
    <meta name="twitter:image" content="https://webstoryboy.github.io/megabox2019/mega.jpg">
    <meta name="twitter:description" content="메가박스 사이트 따라하면서 배우는 튜토리얼입니다.">
    
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   
    
    
   
    
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
  <h2>Tada!</h2>
  <p>Some text in my newly loaded page..</p>
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
<!-- <div class="flip-box">
    <div class="box"></div>
</div>
 -->

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
    
    
    <section id="movie">
        <div class="container">
            <div class="row">
                <h2 class="ir_so">영화장르</h2>
                <div class="movie">
                    <div class="movie_title">
                        <ul class="clearfix">
                              <li class="active" style="margin-left: 320px;"><a href="#">추천 영화</a></li>
                          <!--   <li><a href="#">액션</a></li>
                            <li><a href="#">로맨스</a></li>
                            <li><a href="#">스릴러</a></li> -->
                        </ul>
                    </div>
                   
                    
                    <div class="movie_chart">
                    
                                   <div class="swiper-container2">
                                   
                           <div class="chart_cont1 swiper-wrapper">
                           <%-- <p style="text-align: right;">글 목록 (전체글<%=count %>)</p> --%>
                            <%if (count==0) { %>
 
				<div class="container" style="height: 400px; width: 300px;">
				 <table> 
				<tr>
				<td align = "center">
				게시판에 게시글이 없음.
			</td>
			</table> 
				<% }  else  {   
                               	
   					for(int i=0; i<articleList.size(); i++){
					   MovieDataBean article = articleList.get(i);
	   
							   %>  
          							
                               <div class="swiper-slide" onclick="location.href='MovieContent.jsp?num=<%=article.getMovieNumber()%>'" >
                               
                                   <div class="poster" >
                                    <a href="MovieContent.jsp"></a>
                                       <figure>
                                           <img src="moviePhoto/<%=article.getMoviePoster()%>" alt="<%=article.getMovieTitle()%>">
                                       </figure>
                                       <div class="rank"><strong>추천</strong></div>
                                       <!-- <div class="mx">
                                           <span class="icon m ir_pm"></span>
                                       </div>  -->
                                   </div>
                                   <div class="infor">
                                       <h3><span class="<%=article.getMovieAge()%>"></span> <strong><%=article.getMovieTitle()%></strong></h3>
                                       <div class="infor_btn">
                                          
                                         
                                       </div> 
                                   </div>
                               </div>
                            
                                <%} } %>  
                               
                              </div>
                </div>
            </div>
            </div>
            </div>
            
        </div>
    </section>  
                              
    
    
   
    
    
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
    <!-- //footer -->
    

    <!-- 트레일러 -->
    <aside role="complementary" id="blackout" class="overlay">
        <div id="trailerModal" class="modal">
            <div id="trailer"></div><!-- YouTube 플레이어로 대체되는 부분 -->
        </div>
        <button id="hideTrailer" class="modal_close">닫기</button>
    </aside>
    
    
    <!-- 자바스크립트 라이브러리 -->
    <script src="assets/js/jquery.min_1.12.4.js"></script>
    <script src="assets/js/modernizr-custom.js"></script>
    <script src="assets/js/ie-checker.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/iframe_api.js"></script>
    <script src="assets/js/movie.js"></script>
    
    <script type="text/javascript">
       //옆 메뉴 나오게하는 쿼리
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
          //$('section').height(h);
            $('menu .container').height(h - 60);
        });

      });
    
    </script>
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