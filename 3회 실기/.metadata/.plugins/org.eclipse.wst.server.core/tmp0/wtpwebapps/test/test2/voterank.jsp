<%@ page language="java" contentType="text/html; charset=UTF-8" 
 pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후보자 등수</title>
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
        <h2>후보자 등수</h2>
        <table border="1">
            <tr>
                <td>후보번호</td>
                <td>성명</td>
                <td>총득표수</td>
            </tr>
            <%
                Class.forName("oracle.jdbc.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1234");
                String sql = "select x.cho, a.name, x.cnt from (select choice_no cho, count(choice_no) cnt from tbl_vote2 group by choice_no) x, tbl_register2 a where x.cho=a.no order by x.cnt desc";
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString("cho") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("cnt") %></td>
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
