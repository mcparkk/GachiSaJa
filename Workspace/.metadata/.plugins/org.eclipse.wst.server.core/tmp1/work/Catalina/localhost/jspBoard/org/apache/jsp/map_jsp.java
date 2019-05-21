/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.40
 * Generated at: 2019-04-18 02:13:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class map_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<div id=\"map\" style=\"width:500px;height:400px;\"></div>\r\n");
      out.write("<script type=\"text/javascript\" src=\"//dapi.kakao.com/v2/maps/sdk.js?appkey=81a7a3d4384ceceaf0c31274cb89951c\"></script>\r\n");
      out.write("<script src=\"http://code.jquery.com/jquery-3.1.1.min.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("\tfunction move() {\r\n");
      out.write("\t\t$.ajax( { \r\n");
      out.write("\t\t\turl: 'https://dapi.kakao.com/v2/local/search/address.json',\r\n");
      out.write("\t\t\ttype: 'get',\r\n");
      out.write("\t\t\tbeforeSend : function(xhr){\r\n");
      out.write("\t            xhr.setRequestHeader(\"Authorization\", \"KakaoAK fdb64201d3821d501e2220b67f1b10ae\");\r\n");
      out.write("\t        },\r\n");
      out.write("\t\t\tdata: { \"query\" : \"용인 처인구 원천로 11-110\" },\r\n");
      out.write("\t\t\tsuccess: function(result) {\r\n");
      out.write("\t\t\t\tdocuments = result.documents;\r\n");
      out.write("\t\t\t\tdoc = documents[0];\r\n");
      out.write("\t\t\t\troad_address = doc.road_address;\r\n");
      out.write("\t\t\t\tx = road_address.x;\r\n");
      out.write("\t\t\t\ty = road_address.y;\r\n");
      out.write("\t\t\t\tconsole.log(x, y);\r\n");
      out.write("\t\t\t\tmap(y, x);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t} );\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction map(y, x) {\r\n");
      out.write("\t\tvar container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스\r\n");
      out.write("\t\tvar options = { //지도를 생성할 때 필요한 기본 옵션\r\n");
      out.write("\t\t\tcenter: new daum.maps.LatLng(y, x), //지도의 중심좌표.\r\n");
      out.write("\t\t\tlevel: 3 //지도의 레벨(확대, 축소 정도)\r\n");
      out.write("\t\t};\r\n");
      out.write("\t\tvar map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
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
