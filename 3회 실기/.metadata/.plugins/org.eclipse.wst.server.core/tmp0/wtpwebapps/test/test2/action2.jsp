<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");%>
	<%
		String JUMIN = request.getParameter("t_jumin");
		String NAME = request.getParameter("T_t_name");
		String CHOICE_NO = request.getParameter("t_choice_no");
		String TIME = request.getParameter("t_time");
		String AREA = request.getParameter("t_area");
		String CONFIRM = request.getParameter("T_CONFIRM");
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		String sql = "insert into tbl_vote2 values(?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, JUMIN);
		pstmt.setString(2, NAME);
		pstmt.setString(3, CHOICE_NO);
		pstmt.setString(4, TIME);
		pstmt.setString(5, AREA);
		pstmt.setString(6, CONFIRM);
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
		pageContext.forward("voteresult.jsp");
	%>
</body>
</html>