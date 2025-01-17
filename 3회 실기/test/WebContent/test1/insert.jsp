
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
<script>
	function onsub(){
		const num = document.getElementById("num");
		const name = document.getElementById("name");
		const phone = document.getElementById("phone");
		const address = document.getElementById("address");
		const date = document.getElementById("date");
		const grade = document.getElementById("grade");
		const city = document.getElementById("city");
		
		if(num.value == ""){
			alert("회원번호를 입력하세요.");
			num.focus();
			return false;
		}
		if(name.value == ""){
			alert("회원이름을 입력하세요.");
			name.focus();
			return false;
		}
		if(phone.value == ""){
			alert("전화번호를 입력하세요.");
			phone.focus();
			return false;
		}
		if(address.value == ""){
			alert("주소를 입력하세요.");
			address.focus();
			return false;
		}
		if(date.value == ""){
			alert("가입일자를 입력하세요.");
			date.focus();
			return false;
		}
		if(grade.value == ""){
			alert("고객등급을 입력하세요.");
			grade.focus();
			return false;
		}
		if(city.value == ""){
			alert("도시코드를 입력하세요.");
			city.focus();
			return false;
		}
		
		alert("회원등록이 완료되었습니다.");
		return true;
		
	}
</script>
</head>
<body>
	<%@ include file="header.jsp" %>
	<section>
		<h3>회원등록</h3>
		<form action="action.jsp">
		<table border="1">
			<tr>
				<%
				Class.forName("oracle.jdbc.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
				String sql = "select custno from member_tbl_02";
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				
				String number = "";
				
				while(rs.next()){
					number = Integer.toString(Integer.parseInt(rs.getString("custno")) + 1);
				}
				%>
				<td>회원번호(자동생성)</td>
				<td><input type="text" name="num" id="num" value=<%=number%>></td>
			</tr>
			<tr>
				<td>회원이름</td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" id="phone" placeholder="010-XXXX-XXXX"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" id="address" size="40"></td>
			<tr>
			<tr>
				<td>가입일자</td>
				<td><input type="text" name="date" id="date" placeholder="20231203">
			</tr>
			<tr>
				<td>고객등급[A:VIP, B:일반, C:직원]</td>
				<td><input type="text" name="grade" id="grade" placeholder="A, B, C 중 입력"></td>
			</tr>
			<tr>
				<td>도시코드</td>
				<td><input type="text" name="city" id="city" placeholder="01"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
					<input type="submit" value="등록" onclick="return onsub()">
					<a href="index.jsp"><input type="button" value="조회"></a>
				</td>
			</tr>
		</table>
		</form>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>