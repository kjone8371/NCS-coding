/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2024-09-04 16:11:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.test3;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class insert_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/test3/header.jsp", Long.valueOf(1725463859579L));
    _jspx_dependants.put("/test3/footer.jsp", Long.valueOf(1725463903646L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("\tsection {\r\n");
      out.write("\tmargin-bottom: 10%;\r\n");
      out.write("\t}\r\n");
      out.write("\th3 {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\t}\r\n");
      out.write("\ttable {\r\n");
      out.write("\tmargin-left: auto;\r\n");
      out.write("\tmargin-right: auto;\r\n");
      out.write("\t}\r\n");
      out.write("\ttable, tr, td {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("<script>\r\n");
      out.write("\tfunction onsub(){\r\n");
      out.write("\t\tconst num = document.getElementById(\"num\");\r\n");
      out.write("\t\tconst name = document.getElementById(\"name\");\r\n");
      out.write("\t\tconst phone = document.getElementById(\"phone\");\r\n");
      out.write("\t\tconst address = document.getElementById(\"address\");\r\n");
      out.write("\t\tconst date = document.getElementById(\"date\");\r\n");
      out.write("\t\tconst grade = document.getElementById(\"grade\");\r\n");
      out.write("\t\tconst city = document.getElementById(\"city\");\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tif(num.value == \"\"){\r\n");
      out.write("\t\t\talert(\"회원번호를 입력하세요.\");\r\n");
      out.write("\t\t\tnum.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(name.value == \"\"){\r\n");
      out.write("\t\t\talert(\"회원이름을 입력하세요.\");\r\n");
      out.write("\t\t\tname.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(phone.value == \"\"){\r\n");
      out.write("\t\t\talert(\"전화번호를 입력하세요.\");\r\n");
      out.write("\t\t\tphone.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(address.value == \"\"){\r\n");
      out.write("\t\t\talert(\"주소를 입력하세요.\");\r\n");
      out.write("\t\t\taddress.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(date.value == \"\"){\r\n");
      out.write("\t\t\talert(\"가입일자를 입력하세요.\");\r\n");
      out.write("\t\t\tdate.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(grade.value == \"\"){\r\n");
      out.write("\t\t\talert(\"고객등급을 입력하세요.\");\r\n");
      out.write("\t\t\tgrade.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(city.value == \"\"){\r\n");
      out.write("\t\t\talert(\"도시코드를 입력하세요.\");\r\n");
      out.write("\t\t\tcity.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\talert(\"회원등록이 완료되었습니다.\");\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("\theader {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tpadding: 10px;\r\n");
      out.write("\tbackground-color: gray;\r\n");
      out.write("\t}\r\n");
      out.write("\tnav {\r\n");
      out.write("\tbackground-color: skyblue;\r\n");
      out.write("\t}\r\n");
      out.write("\ta {\r\n");
      out.write("\tmargin-left: 5px;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<header>\r\n");
      out.write("\t\t<h2>홈쇼핑 회원 관리 프로그램 ver 1.0</h2>\r\n");
      out.write("\t</header>\r\n");
      out.write("\t<nav>\r\n");
      out.write("\t\t<a href=\"insert.jsp\">회원등록</a>\r\n");
      out.write("\t\t<a href=\"membersearch.jsp\">회원목록조회/수정</a>\r\n");
      out.write("\t\t<a href=\"search.jsp\">회원매출</a>\r\n");
      out.write("\t\t<a href=\"index.jsp\">홈으로</a>\r\n");
      out.write("\t</nav>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\t<section>\r\n");
      out.write("\t<h3>회원목록조회/수정</h3>\r\n");
      out.write("\t\t<form action=\"action.jsp\">\r\n");
      out.write("\t\t<table border=\"1\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t");

			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
			String sql = "select custno from member_tbl_02";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			String number = "";
			
			while(rs.next()){
				number = Integer.toString(Integer.parseInt(rs.getString("custno")) + 1);
			}
			
      out.write("\r\n");
      out.write("\t\t\t\t<td>회원번호(자동생성)</td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"num\" id=\"num\" value=");
      out.print(number);
      out.write("></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>회원이름</td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"name\" id=\"name\"></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>전화번호</td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"phone\" id=\"phone\" placeholder=\"010-XXXX-XXXX\"></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>주소</td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"address\" id=\"address\" size=\"40\"></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>가입일자</td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"date\" id=\"date\" placeholder=\"20231203\"></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>고객등급[A:VIP, B:일반, C:직원]</td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"grade\" id=\"grade\" placeholder=\"A, B, C 중 입력\"></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>도시코드</td>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"city\" id=\"city\" placeholder=\"01\"></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" style=\"text-align: center;\">\r\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"등록\" onclick=\"return onsub()\">\r\n");
      out.write("\t\t\t\t\t<a href=\"membersearch.jsp\"><input type=\"button\" value=\"조회\"></a>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t");

			
			rs.close();
			stmt.close();
			con.close();
			
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</section>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("\tfooter {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tbackground-color: gray;\r\n");
      out.write("\tpadding: 10px;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<footer>\r\n");
      out.write("\t\t<strong>\r\n");
      out.write("\t\tHDWAODNIWADIOWADA.....\r\n");
      out.write("\t\t</strong>\r\n");
      out.write("\t</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
