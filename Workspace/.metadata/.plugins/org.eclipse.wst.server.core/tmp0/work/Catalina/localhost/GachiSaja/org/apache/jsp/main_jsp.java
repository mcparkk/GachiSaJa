/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.40
 * Generated at: 2019-04-19 07:57:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>Bootstrap Example</title>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n");
      out.write("<script\r\n");
      out.write("\tsrc=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\r\n");
      out.write("<script\r\n");
      out.write("\tsrc=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\r\n");
      out.write("<style>\r\n");
      out.write("/* Remove the navbar's default margin-bottom and rounded borders */\r\n");
      out.write(".navbar {\r\n");
      out.write("\tmargin-bottom: 0;\r\n");
      out.write("\tborder-radius: 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Set height of the grid so .sidenav can be 100% (adjust as needed) */\r\n");
      out.write(".row.content {\r\n");
      out.write("\theight: 930px\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Set gray background color and 100% height */\r\n");
      out.write(".sidenav {\r\n");
      out.write("\tpadding-top: 20px;\r\n");
      out.write("\tbackground-color: #f1f1f1;\r\n");
      out.write("\theight: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Set black background color, white text and some padding */\r\n");
      out.write("footer {\r\n");
      out.write("\tbackground-color: #555;\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("\tpadding: 15px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* On small screens, set height to 'auto' for sidenav and grid */\r\n");
      out.write("@media screen and (max-width: 767px) {\r\n");
      out.write("\t.sidenav {\r\n");
      out.write("\t\theight: auto;\r\n");
      out.write("\t\tpadding: 15px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.row.content {\r\n");
      out.write("\t\theight: auto;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<nav class=\"navbar navbar-inverse\">\r\n");
      out.write("\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\"\r\n");
      out.write("\t\t\t\t\tdata-target=\"#myNavbar\">\r\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span\r\n");
      out.write("\t\t\t\t\t\tclass=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t<a class=\"navbar-brand\" href=\"http://localhost/GachiSaja/main.jsp\">\r\n");
      out.write("\t\t\t\t\t<img src=\"image/lion.png\" width=\"30\" height=\"30\" border=\"0\">\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"collapse navbar-collapse\" id=\"myNavbar\">\r\n");
      out.write("\t\t\t\t<ul class=\"nav navbar-nav\">\r\n");
      out.write("\t\t\t\t\t<li class=\"active\"><a href=\"list.jsp\">구매하기</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"write.jsp\">판매하기</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">카테고리</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">Support</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t<ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("\t\t\t\t\t<li><a href=\"signin.jsp\"><span\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"glyphicon glyphicon-log-in\"></span> Login</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"container-fluid text-center\">\r\n");
      out.write("\t\t<div class=\"row content\">\r\n");
      out.write("\t\t\t<div class=\"col-sm-2 sidenav\">\r\n");
      out.write("\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t<a href=\"#\">가치사자란?</a>\r\n");
      out.write("\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t<a href=\"#\">채용</a>\r\n");
      out.write("\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t<a href=\"#\">후원하기</a>\r\n");
      out.write("\t\t\t\t</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-sm-8 text-center\">\r\n");
      out.write("\t\t\t\t<h2></h2>\r\n");
      out.write("\t\t\t\t<img src=\"image/lion.png\" width=\"100\" height=\"100\" align=\"center\">\r\n");
      out.write("\t\t\t\t<h1>가치사자</h1>\r\n");
      out.write("\t\t\t\t<p>혼자 구매하기에 너무 많은 묶음상품! 근처 이웃들과 대화하여 같이 사보는 건 어떨까요?</p>\r\n");
      out.write("\t\t\t\t<hr>\r\n");
      out.write("\t\t\t\t<h3>현재 위치 주변 거래</h3>\r\n");
      out.write("\t\t\t\t<h1></h1>\r\n");
      out.write("\t\t\t\t<!DOCTYPE html>\r\n");
      out.write("\t\t\t\t<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\" />\r\n");
      out.write("<title>Daum 지도 시작하기</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"map\" style=\"width: 980px; height: 550px;\"></div>\r\n");
      out.write("\t<script type=\"text/javascript\"\r\n");
      out.write("\t\tsrc=\"//dapi.kakao.com/v2/maps/sdk.js?appkey=63cd2fc1a7f268ba3fdbcf19b28ed9d3\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\tvar mapContainer = document.getElementById('map'), // 지도를 표시할 div \r\n");
      out.write("\t\tmapOption = {\r\n");
      out.write("\t\t\tcenter : new daum.maps.LatLng(37.566535, 126.977969190007), // 지도의 중심좌표\r\n");
      out.write("\t\t\tlevel : 3\r\n");
      out.write("\t\t// 지도의 확대 레벨 \r\n");
      out.write("\t\t};\r\n");
      out.write("\r\n");
      out.write("\t\tvar map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다\r\n");
      out.write("\r\n");
      out.write("\t\t// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 \r\n");
      out.write("\t\tif (navigator.geolocation) {\r\n");
      out.write("\r\n");
      out.write("\t\t\t// GeoLocation을 이용해서 접속 위치를 얻어옵니다\r\n");
      out.write("\t\t\tnavigator.geolocation.getCurrentPosition(function(position) {\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tvar lat = position.coords.latitude, // 위도\r\n");
      out.write("\t\t\t\tlon = position.coords.longitude; // 경도\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tvar locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다\r\n");
      out.write("\t\t\t\tmessage = '<div style=\"padding:5px;\">JSP책 판매합니다.</div>'; // 인포윈도우에 표시될 내용입니다\r\n");
      out.write("\t\t\t\t// 마커와 인포윈도우를 표시합니다\r\n");
      out.write("\t\t\t\tdisplayMarker(locPosition, message);\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\r\n");
      out.write("\t\t} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다\r\n");
      out.write("\r\n");
      out.write("\t\t\tvar locPosition = new daum.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'\r\n");
      out.write("\r\n");
      out.write("\t\t\tdisplayMarker(locPosition, message);\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t// 지도에 마커와 인포윈도우를 표시하는 함수입니다\r\n");
      out.write("\t\tfunction displayMarker(locPosition, message) {\r\n");
      out.write("\r\n");
      out.write("\t\t\t// 마커를 생성합니다\r\n");
      out.write("\t\t\tvar marker = new daum.maps.Marker({\r\n");
      out.write("\t\t\t\tmap : map,\r\n");
      out.write("\t\t\t\tposition : locPosition\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\r\n");
      out.write("\t\t\tvar iwContent = message, // 인포윈도우에 표시할 내용\r\n");
      out.write("\t\t\tiwRemoveable = true;\r\n");
      out.write("\r\n");
      out.write("\t\t\t// 인포윈도우를 생성합니다\r\n");
      out.write("\t\t\tvar infowindow = new daum.maps.InfoWindow({\r\n");
      out.write("\t\t\t\tcontent : iwContent,\r\n");
      out.write("\t\t\t\tremovable : iwRemoveable\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\r\n");
      out.write("\t\t\t// 인포윈도우를 마커위에 표시합니다 \r\n");
      out.write("\t\t\tinfowindow.open(map, marker);\r\n");
      out.write("\r\n");
      out.write("\t\t\t// 지도 중심좌표를 접속위치로 변경합니다\r\n");
      out.write("\t\t\tmap.setCenter(locPosition);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("</body>\r\n");
      out.write("\t\t\t\t</html>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-sm-2 sidenav\">\r\n");
      out.write("\t\t\t\t<div class=\"well\">\r\n");
      out.write("\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"https://www.bloter.net\"> <img src=\"image/bloter.png\"\r\n");
      out.write("\t\t\t\t\t\t\twidth=\"100\" height=\"30\" border=\"0\"></a>\r\n");
      out.write("\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"well\">\r\n");
      out.write("\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"https://www.zdnet.co.kr\"> <img src=\"image/zdnet.png\"\r\n");
      out.write("\t\t\t\t\t\t\twidth=\"100\" height=\"30\" border=\"0\"></a>\r\n");
      out.write("\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<footer class=\"container-fluid text-center\">\r\n");
      out.write("\t\t<p>Copyright 2019. SunbinMincheol Co., Ltd. All rights reserved.</p>\r\n");
      out.write("\t</footer>\r\n");
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