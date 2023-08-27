<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "free.BoardDBBean" %>
<%@ page import = "java.sql.Timestamp"%>
<% request.setCharacterEncoding("utf-8");%>
 <% String id = (String)session.getAttribute("id");
  if(id==null || id.equals("")) {
	  response.sendRedirect("login.jsp");
	  return;
  }
  %>
<jsp:useBean id="article" scope="page" class="free.FreeDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%
   article.setFreeTime(new Timestamp(System.currentTimeMillis()));
   //article.setIp(request.getRemoteAddr());

   BoardDBBean dbPro = BoardDBBean.getInstance();
   dbPro.insertArticle(article);
   
   response.sendRedirect("FreeWrite.jsp");
%>