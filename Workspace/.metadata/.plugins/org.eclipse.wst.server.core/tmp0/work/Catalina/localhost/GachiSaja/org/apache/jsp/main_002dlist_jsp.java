/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.40
 * Generated at: 2019-04-19 00:01:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import DataBase.DBManager;

public final class main_002dlist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.SQLException");
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.sql.PreparedStatement");
    _jspx_imports_classes.add("DataBase.DBManager");
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

      out.write("    \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("  <title>Bootstrap Example</title>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\r\n");
      out.write("  <style>\r\n");
      out.write("    /* Remove the navbar's default margin-bottom and rounded borders */ \r\n");
      out.write("    .navbar {\r\n");
      out.write("      margin-bottom: 0;\r\n");
      out.write("      border-radius: 0;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */\r\n");
      out.write("    .row.content {height: 930px}\r\n");
      out.write("    \r\n");
      out.write("    /* Set gray background color and 100% height */\r\n");
      out.write("    .sidenav {\r\n");
      out.write("      padding-top: 20px;\r\n");
      out.write("      background-color: #f1f1f1;\r\n");
      out.write("      height: 100%;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    /* Set black background color, white text and some padding */\r\n");
      out.write("    footer {\r\n");
      out.write("      background-color: #555;\r\n");
      out.write("      color: white;\r\n");
      out.write("      padding: 15px;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    /* On small screens, set height to 'auto' for sidenav and grid */\r\n");
      out.write("    @media screen and (max-width: 767px) {\r\n");
      out.write("      .sidenav {\r\n");
      out.write("        height: auto;\r\n");
      out.write("        padding: 15px;\r\n");
      out.write("      }\r\n");
      out.write("      .row.content {height:auto;} \r\n");
      out.write("    }\r\n");
      out.write("  </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-inverse\">\r\n");
      out.write("  <div class=\"container-fluid\">\r\n");
      out.write("    <div class=\"navbar-header\">\r\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\r\n");
      out.write("        <span class=\"icon-bar\"></span>\r\n");
      out.write("        <span class=\"icon-bar\"></span>\r\n");
      out.write("        <span class=\"icon-bar\"></span>                        \r\n");
      out.write("      </button>\r\n");
      out.write("      <a class=\"navbar-brand\" href=\"http://localhost/GachiSaja/main.jsp\">\r\n");
      out.write("      \t<img src=\"image/lion.png\" width=\"30\" height=\"30\" border=\"0\">\r\n");
      out.write("      </a>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\r\n");
      out.write("      <ul class=\"nav navbar-nav\">\r\n");
      out.write("        <li class=\"active\"><a href=\"list.jsp\" >구매하기</a></li>\r\n");
      out.write("        <li><a href=\"write.jsp\">판매하기</a></li>\r\n");
      out.write("        <li><a href=\"#\">카테고리</a></li>\r\n");
      out.write("        <li><a href=\"#\">Support</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("        <li><a href=\"signin.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("  \r\n");
      out.write("<div class=\"container-fluid text-center\">    \r\n");
      out.write("  <div class=\"row content\">\r\n");
      out.write("    <div class=\"col-sm-2 sidenav\">\r\n");
      out.write("      <p><a href=\"#\">가치사자란?</a></p>\r\n");
      out.write("      <p><a href=\"#\">채용</a></p>\r\n");
      out.write("      <p><a href=\"#\">후원하기</a></p>\r\n");
      out.write("    </div>\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("<form>\r\n");

	String pageStr = request.getParameter("page");
	int pageNum = 0;
	try {
		pageNum = Integer.parseInt(pageStr);
	} catch(NumberFormatException e) {
		pageNum = 1;
	}
	int startRow = 0;
	int endRow = 0;
	endRow = pageNum * 10;
	startRow = endRow - 9;
	int total = 0;
	try {
		DBManager db = DBManager.getInstance();
		Connection con = db.open();                 //  asc
		
		String sql2 = "select count(*) from gachisajapost";
		PreparedStatement stmt2 = con.prepareStatement(sql2);
		ResultSet rs2 = stmt2.executeQuery();
		if(rs2.next()) {
			total = rs2.getInt("count(*)");
		}
		
		String sql = "select * from gachisajapost order by id desc" +
		             "    limit ?, 10";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setInt(1, startRow - 1);
		ResultSet rs = stmt.executeQuery();

		while(rs.next()) {
			String id = rs.getString("id");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String hit = rs.getString("hit");
			String id2 = rs.getString("id2");
		
		}
		
		int startPage = 0;
		startPage = (pageNum - 1) / 10 * 10 + 1;
		
		int endPage = 0;
		endPage = startPage + 9;
		
		int totalPage = 0; // 전체 페이지 수 4
		if(total % 10 == 0) { // 10 20 30 40
			totalPage = total / 10;
		} else {
			totalPage = total / 10 + 1;
		}
		if(endPage > totalPage) endPage = totalPage;
		
		out.println("<ul class=\"pagination\">");
		for(int i = startPage; i <= endPage; i++) {

      out.write("\t\t\t\r\n");
      out.write("\t\t\t<li class=\"page-item\">\r\n");
      out.write("\t\t\t\t<a class=\"page-link\" href=\"list.jsp?page=");
      out.print(i);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t");
      out.print(i);
      out.write("\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t</li>\r\n");

		}
		out.println("</ul>");
		
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}	

      out.write("\r\n");
      out.write("    \r\n");
      out.write("      </form>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("\t</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"col-sm-2 sidenav\">\r\n");
      out.write("      <div class=\"well\">\r\n");
      out.write("        <p>\r\n");
      out.write("        \t</button>\r\n");
      out.write("      \t\t<a href=\"https://www.bloter.net\">\r\n");
      out.write("      \t\t<img src=\"image/bloter.png\" width=\"100\" height=\"30\" border=\"0\"></a>\r\n");
      out.write("      \t</p>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"well\">\r\n");
      out.write("        <p>\r\n");
      out.write("        \t</button>\r\n");
      out.write("      \t\t<a href=\"https://www.zdnet.co.kr\">\r\n");
      out.write("      \t\t<img src=\"image/zdnet.png\" width=\"100\" height=\"30\" border=\"0\"></a>\r\n");
      out.write("     \t</p>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<footer class=\"container-fluid text-center\">\r\n");
      out.write("  <p>Copyright 2019. SunbinMinchul Co., Ltd. All rights reserved.</p>\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
