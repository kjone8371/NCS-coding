<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String NO = request.getParameter("no");
	String NAME = request.getParameter("name");
	String CODE = request.getParameter("code");
	String SCHOOL = request.getParameter("school");
	String JUMIN = request.getParameter("jumin1");
	request.getParameter("jumin2");
	String MAJOR = request.getParameter("major");
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con =
	DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	System.out.printf(NO, NAME, CODE, SCHOOL, JUMIN, MAJOR);
	String sql = "insert into tbl_register2 values (?,?,?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, NO);
	pstmt.setString(2, NAME);
	pstmt.setString(3, CODE);
	pstmt.setString(4, SCHOOL);
	pstmt.setString(5, JUMIN);
	pstmt.setString(6, MAJOR);
	pstmt.executeUpdate();
	pstmt.close();
	con.close();
	pageContext.forward("husearch.jsp");
	
	%>
</body>
</html>