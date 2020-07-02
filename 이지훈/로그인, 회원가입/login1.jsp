<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>이 영환 뭐조</title>
	<meta name="description" content="Login - Register Template">
    <meta name="author" content="Lorenzo Angelino aka MrLolok">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="my-login.css">
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
    
    
<!--네이버 -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<!--네이버-->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<div id="container-login">

        <div id="title">
            <i class="material-icons lock"><font color = "white" >lock</i> 로그인
        </div>
        

        <form method="post" action="loginPro.jsp">
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">face</i>
                </div>
                <input id="username" placeholder="Username" name ="id" type="text" required class="validate" autocomplete="off">
            </div>

            <div class="clearfix"></div>
			
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">vpn_key</i>
                </div>               
               <input id="password" placeholder="Password" name="pw" type="password" required class="validate" autocomplete="off">                
            </div>
            <div class="register">  
               
            <a href="#"><button id="register-link">로 그 인</button></a>
             <a href="#"><button id="register-link" onclick = "location.href = 'register.jsp '">회원가입 </button></a>
        </div>				
         	
         <%--    <input type="submit" value="Log In" />      --%>
               <div class="register">      
	   <div id="naverIdLogin"></div>
	</div>    
	   	
       
    </div>
</form>

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
    	
</body>
	
	
	<script type="text/javascript">
		
	/* 네이버로그인 */
	var naverLogin = new naver.LoginWithNaverId({
	        clientId : "INmwxZudy5l1O51qHff6",
	        callbackUrl : "http://localhost:8080/Practice/callback.jsp",
	        isPopup : false,
	        loginButton : {color : "green", type : 3, height : 50}
	        
	
	     })
	     naverLogin.init();
	     naverLogin.getLoginStatus(function (status) {
	      if (status) {
	         var gender = naverLogin.user.getGender();
	         var naverEmail = naverLogin.user.getEmail();
	         var nickname = naverLogin.user.getNickName();
	         var name = naverLogin.user.getName();
	         var profileImage = naverLogin.user.getProfileImage();
	         var birthday = naverLogin.user.getBirthday();         
	         var uniqId = naverLogin.user.getId();
	         var age = naverLogin.user.getAge();
			console.log("email : ", naverEmail);
			console.log("gender :", gender)
			console.log("name : ", name);
			console.log("nickname : ", nickname);
			console.log("profileImage : ", profileImage);
			console.log("birthday : ", birthday);
			console.log("uniqId : ", uniqId);
			console.log("age : ", age);
			
			document.getElementById("email").value = naverEmail;
	         
	         naverLogin.logout();
	         
	      } else {
	         console.log("AccessToken이 올바르지 않습니다.");
	      }
	   });
	     
	     
	    </script>
	   
</html>