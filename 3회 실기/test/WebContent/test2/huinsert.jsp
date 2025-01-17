<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		const elementNo = document.getElementById("no");
		const elementName = document.getElementById("name");
		const elementCode = document.getElementById("code");
		const elementSchool = document.getElementById("school");
		const elementJumin1 = document.getElementById("jumin1");
		const elementJumin2 = document.getElementById("jumin2");
		const elementMajor = document.getElementById("major");
		const regExp = /[0-9]/; // 숫자인 경우
		
		if(elementNo.value.length == "0"){
			alert("후보 번호를 입력하여 주시기 바랍니다.");
			elementNo.focus();
			return false;
		}
		if(elementName.value.length == "0"){
			alert("후보 번호를 입력하여 주시기 바랍니다.");
			elementNo.focus();
			return false;
		}
		if(elementCode.value.length == "0"){
			alert("후보 번호를 입력하여 주시기 바랍니다.");
			elementNo.focus();
			return false;
		}
		if(elementSchool.value.length == "0"){
			alert("후보 번호를 입력하여 주시기 바랍니다.");
			elementNo.focus();
			return false;
		}
		if(elementJumin1.value.length == "0"){
			alert("후보 번호를 입력하여 주시기 바랍니다.");
			elementNo.focus();
			return false;
		}
		if(elementJumin2.value.length == "0"){
			alert("후보 번호를 입력하여 주시기 바랍니다.");
			elementNo.focus();
			return false;
		}
		if(elementMajor.value.length == "0"){
			alert("후보 번호를 입력하여 주시기 바랍니다.");
			elementNo.focus();
			return false;
		}
		if(regExp.test()){
			alert("후보 번호를 입력하여 주시기 바랍니다.");
			elementNo.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<%@ include file="header.jsp" %>
	<section>
		<h2>후보등록</h2>
		<form name="frm" method="get" action="action.jsp">
			<table border="1">
				<tr>
					<td>후보번호</td>
					<td><input type="text" name="no" id="no"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" id="name"></td>
				</tr>
				<tr>
					<td>팀번호</td>
					<td><select name="code" id="code">
						<option value="P1s">1팀</option>
						<option value="P2">2팀</option>
						<option value="P3">3팀</option>
						<option value="P4">4팀</option>
						<option value="P5">5팀</option>
						<option value="P6">6팀</option>
					</select>
				</tr>
				<tr>
					<td>학력</td>
					<td>
						<select name="school" id="school">
							<option value="">==학력을 선택하세요==</option>
							<option value="1">중졸</option>
							<option value="2">고졸</option>
							<option value="3">전문대졸</option>
							<option value="4">대졸</option>
							<option value="5">석사수료</option>
							<option value="6">석사취득</option>
							<option value="7">박사수료</option>
							<option value="8">박사취득</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>주민번호</td>
					<td>
						<input type="text" name="jumin1" id="jumin1">
						<input type="text" name="jumin2" id="jumin2">
					</td>
				</tr>
				<tr>
					<td>전공학년반</td>
					<td><input type="text" name="major" id="major"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="등록" onclick="return onsub()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>