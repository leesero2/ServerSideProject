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
    
</head>

<body>

 <header id="header">
        <div class="container">
            <div class="row">
                <div class="header clearfix">
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
                            <li><a href="#">영화정보</a></li>
                            <li><a href="#">감독정보</a></li>
                            <li><a href="#">Company</a></li>
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">로 그 인</a></li>
                        </ul>
                    </nav>    
                </div>
            </div>
        </div>
    </header>
    	
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
             <a href="#"><button id="register-link" margin-top = "15px">뒤로가기 </button></a>
         </form>

        <div class="privacy">
            <a href="#">회사 정책</a>
        </div> 

        <div class="register">
            이미 계정이 있으신가요?
           
            <a href="#"><button id="register-link">Log In here</button></a>
        </div>
    </div>
</body>

</html>
