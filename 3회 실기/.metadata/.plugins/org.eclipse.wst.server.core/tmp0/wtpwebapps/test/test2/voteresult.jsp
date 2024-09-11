<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>투표 결과 조회</title>
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
</head>
<body>
    <%@ include file="header.jsp" %>
    <section>
        <h2>투표결과조회</h2>
        <table border="1">
            <tr>
                <td>이름</td>
                <td>생년월일</td>
                <td>성별</td>
                <td>후보번호</td>
                <td>투표시간</td>
                <td>유권자확인</td>
            </tr>
            <%
                Class.forName("oracle.jdbc.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1234");
                String sql = "select * from tbl_vote2";
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                while (rs.next()) {
                    String gender = "";
                    String yn = "";
                    if (rs.getString("v_jumin").substring(6, 7).equals("3")) {
                        gender = "남";
                    } else {
                        gender = "여";
                    }
                    if (rs.getString("v_confirm").equals("y")) {
                        yn = "확인";
                    } else {
                        yn = "미확인";
                    }
            %>
            <tr>
                <td><%= rs.getString("v_name") %></td>
                <td><%="20" + rs.getString("v_jumin").substring(0, 2) + "년" + rs.getString("v_jumin").substring(2, 4) + "월" + rs.getString("v_jumin").substring(4, 6) + "일생" %></td>
                <td><%= gender %></td>
                <td><%= rs.getString("choice_no") %></td>
                <td><%= rs.getString("v_time").substring(0, 2) + ":" + rs.getString("v_time").substring(2, 4) %></td>
                <td><%= yn %></td>
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
