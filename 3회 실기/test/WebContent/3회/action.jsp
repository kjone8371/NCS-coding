<%@page import="oracle.net.aso.s"%>
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
	
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String date = request.getParameter("date");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
	String sql = "insert into member_tbl_02 values(?, ?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1, num);
	pstmt.setString(2, name);
	pstmt.setString(3, phone);
	pstmt.setString(4, address);
	pstmt.setString(5, date);
	pstmt.setString(6, grade);
	pstmt.setString(7, city);
	pstmt.executeUpdate();
	pstmt.close();
	
	pageContext.forward("membersearch.jsp");
	
	%>
</body>
</html>