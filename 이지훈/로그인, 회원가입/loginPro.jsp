<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="User.MembersDBBean" %>
    
    <% request.setCharacterEncoding("utf-8"); %>
    
    <%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    MembersDBBean logon = MembersDBBean.getInstance();
    int check = logon.userCheck(id, pw);
    
    if(check == 1){
    	session.setAttribute("id", id);
    	response.sendRedirect("pro1.jsp");
    
    }else if(check == 0){
    	
    
    
    %>
    <script>
    alert("응 비번이 안맞아~ 돌아가");
    history.go(-1); /* 이전페이지로 돌아가기 */
    </script>
    <%} else{ %>
    <script>
    alert("아이디가 안맞습니다.")
    history.go(-1);
    </script>
    <%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>