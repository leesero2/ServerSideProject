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
    %>
    
    <jsp:getProperty name="member" property="id" /> 님 회원가입을 축하합니다. 
    
<%-- <%
	String LoginNumber = request.getParameter("loginNumber");
	String ID = request.getParameter("id");
	String PW = request.getParameter("pw");
	String Phone = request.getParameter("phone");
	String Name = request.getParameter("name");
	String Email = request.getParameter("email");
	
	Connection conn = null;
	PreparedStatement pstmt=null;
	String str= "";
	String str1= "";
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/WIM?serverTimezone=Asia/Seoul";
		String dbId = "purple";
		String dbPass="dlwlgns9462";
		//System.out.println("sdf");
		//str1 = "여기까지는 됨";
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		
		String sql = "insert into Login values (null,?,?,?,?,?)"; //그때그때 필요한 정보 할당한다.
		pstmt=conn.prepareStatement(sql);
	  //  pstmt.setString(1, LoginNumber); 
		pstmt.setString(1, ID);
		pstmt.setString(2, PW);
		pstmt.setString(3, Phone);
		pstmt.setString(4, Name);
		pstmt.setString(5, Email);
		
		pstmt.executeUpdate(); //insert, update 사용할 때 사용한다.
		
		response.sendRedirect("listTest.jsp");
		
		str = "members 테이블에 새로운 레코드를 추가했습니다.";  
		
	}catch(Exception e){
		e.printStackTrace();
		str="members 테이블에 새로운 레코드를 추가에 실패했습니다.";
	}finally{
		if(pstmt != null)
			try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null)
			try{conn.close();}catch(SQLException sqle){}
	}
%>      --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

</body>
</html>