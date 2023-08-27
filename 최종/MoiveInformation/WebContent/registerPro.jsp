<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import = "java.sql.*"%>    
<%@page import="User.MembersDBBean" %>

<% request.setCharacterEncoding("utf-8"); %>


 <jsp:useBean id="member" class="User.MembersDataBean">
    <jsp:setProperty name="member" property="*"/> <!-- //*은 모든걸 의미 이걸 사용해서 request 를 사용할 필요가 없음 그래서 훨씬 간결해진거임 
   하나하나 아이디 비밀번호를 request 파라매타로 받을 필요없이 *을 이용해 한번에 모든걸 받아오겠다는거임 
    
    --> 
    </jsp:useBean>
    
    <%
    MembersDBBean logon = MembersDBBean.getInstance(); 
    logon.insertMember(member);
    response.sendRedirect("login.jsp"); 
    %>
    
    <jsp:getProperty name="member" property="id" /> 님 회원가입을 축하합니다. 
    
    
    


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

</body>
</html>