<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>배우 정보</title>
	
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="loading.css">
    <link rel="stylesheet" href="assets/css/reset19.css">
    <link rel="stylesheet" href="assets/css/style19.css">
    <link rel="stylesheet" href="assets/css/swiper.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Small Business - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="assets/css/small-business.css" rel="stylesheet">
  
  
   
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
                        <a href="pro1.jsp">
                        <strong><img src="assets/img/dit.png" alt="LIFE THEATER"></strong>
                        </a>
                    </h1>
                    <nav id="mNav">
                        <h2 class="ir_so">이 영환 뭐조</h2>
                        <a href="#" class="ham"><span id="ydg0704_1"></span></a>
                    </nav>
                    <nav class="nav">
                        <ul class="clearfix">
                            <li><a href="#" method="post"><span>정보</span></a>
                            	<ul class="ydg">
                            		<li><a href="#" method="post">영화사</a></li>
                            		<li><a href="#" method="post">감독정보</a></li>
                            		<li><a href="#" method="post">영화정보</a></li>
                            	</ul>
                            </li>
                            <li><a href="#" method="post"><span>공지사항</span></a>
                            	<ul class="ydg">
                            		<li><a href="#" method="post">영화사</a></li>
                            		<li><a href="#" method="post">감독정보</a></li>
                            		<li><a href="#" method="post">영화정보</a></li>
                            	</ul>
                            </li>
                            <li><a href="#" method="post"><span>소개</span></a>
                            	<ul class="ydg">
                            		<li><a href="#" method="post">영화사</a></li>
                            		<li><a href="#" method="post">감독정보</a></li>
                            		<li><a href="#" method="post">영화정보</a></li>
                            	</ul>
                            </li>
                            <li><a href="#" method="post"><span>게시판</span></a>
                            	<ul class="ydg">
                            		<li><a href="#" method="post">영화사</a></li>
                            		<li><a href="#" method="post">감독정보</a></li>
                            		<li><a href="#" method="post">영화정보</a></li>
                            	</ul>
                            </li>
                            <li><a href="#" method="post"><span>로그인</span></a>
                            	<ul class="ydg">
                            		<li><a href="#" method="post">영화사</a></li>
                            		<li><a href="#" method="post">감독정보</a></li>
                            		<li><a href="#" method="post">영화정보</a></li>
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
	        <a href="#">					Sign up for Newsletter				 <span class="ion-arrow-right-c"></span>				</a>
	      </div>
	    </div>
	  </div>
	</menu>
    
    
    
  <!-- Navigation -->
  <nav class="Navigation">
    <div class="container">
      <a class="navbar-brand" href="#">Start Bootstrap</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <!-- Heading Row -->
    <div class="row align-items-center my-5">
    
      <div class="col-lg-7">
      <!-- 감독 이미지 들어가는 부분-->
        <img class="img-fluid rounded mb-4 mb-lg-0" src="assets/img/posterYDG.jpg" alt="xxxx">
      </div>
      
      
      <!-- /.col-lg-8 
      	감독의 설명이 들어가는 부분	-->
      <div class="col-lg-5">
      
      <!-- 감독이름부분  시작-->
        <h2 class="font-weight-light">쿠엔틴 제롬 타란티노</h2>
        <h2 class="font-weight-light">(Quentin Jerome Tarantino)</h2>
      <!-- 감독이름부분  끝-->
      <!-- 감독 설명시작  -->
        <p>This is a template that is great for small businesses. It doesn't have too much fancy flare to it, but it makes a great use of the standard Bootstrap core components. Feel free to use this template for any project you want!</p>
      <!-- 감독 설명 끝  -->
        <a class="btn btn-primary" href="#">감독의 인터뷰</a>
      </div>
      <!-- 감독의 설명이 끝나는 부분	-->
      <!-- /.col-md-4 -->
    </div>
    <!-- /.row -->

    <!-- Call to Action Well -->
    <!-- 검은 div라인의 글을 적는 곳  (text-white m-0 : 글자 색을 흰색으로)-->
      <div class="card text-white bg-secondary my-5 py-4 text-center">
      <div class="card-body">
        <p class="text-white m-0">나도 쿠엔틴 타란티노 작품 느긋하게 감상하고싶다 아래는 감독의 영화</p>
      </div>
    </div>  

    <!-- Content Row -->
    <!-- 밑에 카드들의 범위 div -->
    <div class="row">
     <!-- 범위 내의 아이들 1번 -->
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Card 1</h2>
            <img src="assets/img/posterYDG.png">
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary btn-sm">More Info</a>
          </div>
        </div>
      </div>
     <!-- 범위 내의 아이들 2번 -->      
      <!-- /.col-md-4 -->
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Card 2</h2>
            <img src="assets/img/posterYDG.png">
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt pariatur voluptatem sunt quam eaque, vel, non in id dolore voluptates quos eligendi labore.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary btn-sm">More Info</a>
          </div>
        </div>
      </div>
     <!-- 범위 내의 아이들 3번 -->
      <!-- /.col-md-4 -->
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Card 3</h2>
            <img src="assets/img/posterYDG.png">
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary btn-sm">More Info</a>
          </div>
        </div>
      </div>
      <!-- /.col-md-4 -->
      
	<!-- /.col-md-4 -->
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Card 4</h2>
            <img src="assets/img/posterYDG.png">
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary btn-sm">More Info</a>
          </div>
        </div>
      </div>
      <!-- /.col-md-4 -->
      
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>
  
  

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>