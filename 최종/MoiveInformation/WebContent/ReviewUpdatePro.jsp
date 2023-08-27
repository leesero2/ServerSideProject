<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<%@ page import = "review.BoardDBBean" %> 
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>

 <% String id = (String)session.getAttribute("id");
  if(id==null || id.equals("")) {
	  response.sendRedirect("login.jsp");
	  return;
  }
  %>

<jsp:useBean id="article" scope="page" class="review.ReviewDataBean">
   <jsp:setProperty name="article" property="*"/> 
</jsp:useBean>
<% 
   BoardDBBean dbPro = BoardDBBean.getInstance(); 
   int check = dbPro.updateArticle(article);
   
   if(check==1) {
%>
   <meta http-equiv="Refresh" content="0;url=Review.jsp" > 
<% }else{%>
   <script type="text/javascript">
      alert("비밀번호가 맞지 않습니다."); 
      history.go(-1);
   </script>
<% } %>
