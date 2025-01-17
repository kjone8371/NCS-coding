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
	table, tr,td {
	text-align: center;
	}
</style>
<script type="text/javascript">
	function onsub() {
		const elementJumin = document.getElementById("jumin");
		const elementName = document.getElementById("name");
		const elementChoice_no = document.getElementById("choice_no");
		const elementTime = document.getElementById("time");
		const elementArea = document.getElementById("area");
		const elementConfirm =
		document.querySelector('input[name="T_CONFIRM"]:checked');
		if (elementJumin.value.length == "0") {
			alert('주민번호를 입력하여 주시기 바랍니다.');
			elementJumin.focus();
			return false;
		}
		if(elementJumin.value.length!=13){
			alert("주민번호는 13자리 만 입력 가능합니다.");
			elementJumin.focus();
			return false;
		}
		if (elementName.value.length == "0") {
			alert("성명을 입력하여 주시기 바랍니다.");
			elementName.focus();
			return false;
		}
		if (elementChoice_no.value.length == "0") {
			alert("후보번호를 입력하여 주시기 바랍니다.");
			elementChoice_no.focus();
			return false;
		}
		if (elementTime.value.length == "0") {
			alert("투표시간을 입력하여 주시기 바랍니다.");
			elementTime.focus();
			return false;
		}
		if (elementArea.value.length == "0") {
			alert("투표장소를 입력하여 주시기 바랍니다.");
			elementArea.focus();
			return false;
		}
		if (elementConfirm==null ) {
			alert("유권자확인을 선택하여 주시기 바랍니다.");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<%@ include file="header.jsp" %>
	<section>
		<h2>투표하기</h2>
		<form name="frm" action="action2.jsp">
			<table border="1">
			<%
			Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1234");
            String sql = "select * from tbl_vote2";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
			
			%>
				<tr>
					<td>주민번호</td>
					<td style="float: left"><input name="T_JUMIN" id="jumin"></td>
				</tr>
				<tr>
					<td>성명</td>
					<td style="float: left"><input name="T_NAME" id="name"></td>
				</tr>
				<tr>
					<td>후보번호</td>
					<td style="float: left">
						<select placeholder="후보번호 선택"  name="T_CHOICE_NO" id="choice_no">
							<option value="">==후보번호선택==</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
				</tr>
				<tr> 
					<td>투표시간</td>
					<td style="float:left"><input name="T_TIME"id="time"></td> 
				</tr>
				<tr>
					<td>투표장소</td>
					<td style="float:left"><input name="T_AREA"id="area"></td>
				</tr>
				<tr>
					<td>유권자 확인</td>
					<td style="float: left">
						<input type="radio" name="T_CONFIRM" value="y">확인
						<input type="radio" name="T_CONFIRM" value="N">미확인
					</td>
				</tr>
				<tr> 
					<td colspan="2" style="text-align:center">
						<input type="submit" value="투표하기" onclick="return onsub()" />
					 	<input type="reset" value="다시쓰기" />
					</td>
				</tr>
			</table>
		</form> 
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>