<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	section {
	margin-bottom: 10%:
	}
	
	h3{
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
		<h3>회원매출</h3>
		<table border="1">
			<tr>
				<td>회원번호</td>
				<td>회원이름</td>
				<td>고객등급</td>
				<td>매출</td>
			</tr>
			<%
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
			String sql = "select x.custno, a.custname, a.grade, x.psum from (select custno, sum(price) psum from money_tbl_02 group by custno order by psum desc) x, member_tbl_02 a where x.custno = a.custno";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				String grade = "";
				if(rs.getString("grade").equals("A")){
					grade = "VIP";
				}else if(rs.getString("grade").equals("B")){
					grade = "일반";
				}else {
					grade = "직원";
				}
			%>
			<tr>
				<td><%=rs.getString("custno") %>
				<td><%=rs.getString("custname") %></td>
				<td><%=grade %></td>
				<td><%=rs.getString("psum") %></td>
			</tr>
			
			<%
			}
			rs.close();
			stmt.close();
			con.close();
			%>
			
			
		</table>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>