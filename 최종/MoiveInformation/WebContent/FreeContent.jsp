<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
    <%@ page import = "movie.BoardDBBean" %>
    <%@ page import = "movie.MovieDataBean" %>
    <%@ page import = "java.text.SimpleDateFormat" %>
    <%@ page import="java.io.PrintWriter"%>
  
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="loading.css">

</head>
<body>
<%
int num = Integer.parseInt(request.getParameter("num"));
String pageNum = request.getParameter("pageNum");

SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

try{
	BoardDBBean dbPro = BoardDBBean.getInstance();
	MovieDataBean article = dbPro.getArticle(num);

%>

<p>글내용 보기</p>

<form>
<table>  
  <tr height="30">
    <td align="center" width="125" >글번호</td>
    <td align="center" width="125" align="center">
	     <%=article.getMovieTitle()%></td>
     <td align="center" width="125" >조회수</td>
    <td align="center" width="125" align="center">
	     <%=article.getMovieActor1()%></td> 
  </tr>
  <tr height="30">
    <td align="center" width="125" >작성자</td>
    <td align="center" width="125" align="center">
	     <%=article.getMovieActor2()%></td>
  <%--   <td align="center" width="125"  >작성일</td>
    <td align="center" width="125" align="center">
	     <%= sdf.format(article.getFreeTime())%></td> --%>
  </tr>
  <tr height="30">
    <td align="center" width="125">글제목</td>
    <td align="center" width="375" align="center" colspan="3">
	     <%=article.getMovieScore()%></td>
  </tr>
  <tr>
    <td align="center" width="125">글내용</td>
    <td align="left" width="375" colspan="3">
           <pre><%=article.getMovieStory()%></pre></td>
  </tr>
  <tr height="30">      
    <td colspan="4" align="right" > 
	  <%-- <input type="button" value="글수정" 
       onclick="document.location.href='updateForm.jsp?num=<%=article.getFreeNumber()%>&pageNum=<%=pageNum%>'">
	   
	  <input type="button" value="글삭제" 
       onclick="document.location.href='deleteForm.jsp?num=<%=article.getFreeNumber()%>&pageNum=<%=pageNum%>'"> --%>
	   	  
       <input type="button" value="글목록" 
       onclick="document.location.href='list.jsp?&pageNum=<%=pageNum%>'">
    </td>
  </tr>
</table>    
<%
 }catch(Exception e){} 
 %>
</form>  
</body>
</html>