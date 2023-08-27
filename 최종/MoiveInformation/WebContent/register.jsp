<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <meta name="description" content="Login - Register Template">
    <meta name="author" content="Lorenzo Angelino aka MrLolok">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="register.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        body {
            background-color: #303641;
        }
    </style>
        <!-- css -->
    <link rel="stylesheet" href="assets/css/reset19.css">
    <link rel="stylesheet" href="assets/css/style19.css">
    <link rel="stylesheet" href="assets/css/swiper.css">
    <link rel="stylesheet" href="loading.css">
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
            </div>
        </div>
    </header>
    <!-- //header -->
    <div id="container-register">
        <div id="title">
            <i class="material-icons lock"><font color = "white" >lock</i> 회원가입
        </div>

        <form method="post" action = "registerPro.jsp"> <!-- 이부분을 추가 -->
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">face</i>
                </div>
                <input id="name" name = "id" placeholder="Name" type="text" required class="validate" autocomplete="off">
            </div>
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">face</i>
                </div>
                <input id="username" name = "pw" placeholder="Username" type="text" required class="validate" autocomplete="off">
            </div>

            <div class="clearfix"></div>

            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">vpn_key</i>
                </div>
                <input id="password" name = "phone" placeholder="Password" type="password" required class="validate" autocomplete="off">
            </div>
            
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">email</i>
                </div>
                <input id="Number" name = "name" placeholder="Number" type="text" required class="validate" autocomplete="off">
            </div>
            
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">email</i>
                </div>
                <input id="email" name = "email" placeholder="Email" type="email" required class="validate" autocomplete="off">
            </div>

            <div class="clearfix"></div>


             <div class="remember-me">
                <input type="checkbox">
                <span style="color: #DDD">I accept Terms of Service</span>
            </div> 
            <input type="submit" value="회원가입" />
        </form>
        <a href="main.jsp"><button id="register-link" margin-top = "15px">뒤로가기 </button></a>

        <div class="privacy">
            <a href="#">회사 정책</a>
        </div>

        <div class="register">
            이미 계정이 있으신가요?
           
            <a href="#"><button id="register-link">Log In here</button></a>
        </div>
    </div>
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
</body>

</html>
