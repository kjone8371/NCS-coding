<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	section {
	margin-bottom: 10%;
	}
	h2 {
	text-align: center;
	}
	table {
	margin-left: auto;
	margin-right: auto;
	}
	table, tr, td {
	text-align: center;
	}
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	<section>
		<h2>후보조회</h2>
		<table border="1">
			<tr>
				<td>후보번호 </td>
				<td>성명 </td>
				<td>반</td>
				<td>파트너</td>
				<td>학력</td>
				<td>주민번호</td>
				<td>전공학년반</td>
				<td>전화번호</td>
			</tr>
			<%
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
			String sql = "select * from tbl_register2 a, tbl_partner2 b where a.code=b.code";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
			%>
			<tr>
				<td> <%= rs.getString("code") %></td>
				<td> <%= rs.getString("name") %></td>
				<td> <%= rs.getString("class") %></td>
				<td> <%= rs.getString("partne") %></td>
				<td> <%= rs.getString("school") %></td>
				<td> <%= rs.getString("jumin") %></td>
				<td> <%= rs.getString("major") %></td>
				<td> <%= rs.getString("tel1") + "-" + rs.getString("tel2") %></td>
			</tr>
			<%
			}
			stmt.close();
			con.close();
			%>
		</table>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>