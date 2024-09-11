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
	h3 {
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
	<h3>회원목록조회/수정</h3>
		<form action="action1.jsp">
		<table border="1">
			
			<%
			request.setCharacterEncoding("utf-8");
			
			String num = request.getParameter("num");
			
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
			String sql = "select * from member_tbl_02 where custno = " + num;
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			rs.next();
			%>
			<tr>
				<td>회원번호</td>
				<td><input type="text" name="num" id="num" value='<%=rs.getString("custno")%>'></td>
			</tr>
			<tr>
				<td>회원이름</td>
				<td><input type="text" name="name" id="name" value='<%=rs.getString("custname")%>'></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" id="phone" placeholder="010-XXXX-XXXX" value='<%=rs.getString("phone")%>'></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" id="address" size="40" value='<%=rs.getString("address")%>'></td>
			</tr>
			<tr>
				<td>가입일자</td>
				<td><input type="text" name="date" id="date" placeholder="20231203" value='<%=rs.getString("joindate").substring(0, 10)%>'></td>
			</tr>
			<tr>
				<td>고객등급[A:VIP, B:일반, C:직원]</td>
				<td><input type="text" name="grade" id="grade" placeholder="A, B, C 중 입력" value='<%=rs.getString("grade")%>'></td>
			</tr>
			<tr>
				<td>도시코드</td>
				<td><input type="text" name="city" id="city" placeholder="01" value='<%=rs.getString("city")%>'></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
					<input type="submit" value="수정">
					<a href="membersearch.jsp"><input type="button" value="조회"></a>
				</td>
			</tr>
			
			<%
			
			rs.close();
			stmt.close();
			con.close();
			%>
			
		</table>
		</form>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>