<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="UTF-8">
    <title>회원정보 수정</title>
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
    
</head>

<body>

 <header id="header">
                <div class="header clearfix" style="padding-left:50px;padding-right:50px;">
                    <h1>
                        <a href="#">
                            <em><img src="assets/img/logo.png" alt="MEGABOX"></em>
                            <strong><img src="assets/img/logo-sub.png" alt="LIFE THEATER"></strong>
                        </a>    
                    </h1>
                    <nav id="mNav">
                        <h2 class="ir_so">이 영환 뭐조</h2>
                        <a href="#" class="ham"><span></span></a>
                    </nav>
                    <nav class="nav">
                        <ul class="clearfix">
                            <li><a href="sample1.jsp" method="post">영화정보</a></li>
                            <li><a href="director.jsp" method="post">감독정보</a></li>
                            <li><a href="Actor.jsp" method="post">배우정보</a></li>
                            <li><a href="information.jsp" method="post">Company</a></li>
                            <li><a href="notice.jsp" method="post">공지사항</a></li>
                            <li><a href="login1.jsp" method="post">로그인</a></li>  
                        </ul>
                    </nav>    
                </div>
    </header>
    	
    <div id="container-modify">
        <div id="title">
            <i class="material-icons lock"><font color = "white" >lock</i> 회원정보 수정
        </div>

        <form>
           
            <div class="clearfix"></div>

            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">vpn_key</i>
                </div>
                <input id="password" placeholder="Password" type="password" required class="validate" autocomplete="off">
            </div>
            
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">email</i>
                </div>
                <input id="Number" placeholder="PHONE" type="text" required class="validate" autocomplete="off">
            </div>
            
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">email</i>
                </div>
                <input id="email" placeholder="Email" type="email" required class="validate" autocomplete="off">
            </div>

            <div class="clearfix"></div>


            
            <a href="#"><button id="register-link" margin-top = "15px">수정하기 </button></a>
            <a href="#"><button id="register-link" margin-top = "15px">뒤로가기 </button></a>
        </form>

        

    </div>
</body>

</html>
