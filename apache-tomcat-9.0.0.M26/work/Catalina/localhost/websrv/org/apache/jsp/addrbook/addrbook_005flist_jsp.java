/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M26
 * Generated at: 2017-10-19 05:55:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.addrbook;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import jspbook.addrbook.*;

public final class addrbook_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("jspbook.addrbook");
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
      			"addrbook_error.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html>\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"addrbook.css\" type=\"text/css\" media=\"screen\" />\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tfunction check(ab_id) {\r\n");
      out.write("\t\tpwd = prompt('수정/삭제 하려면 비밀번호를 넣으세요');\r\n");
      out.write("\t\tdocument.location.href=\"addrbook_control.jsp?action=edit&ab_id=\"+ab_id+\"&upasswd=\"+pwd;\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>주소록:목록화면</title>\n");
      out.write("\n");
      out.write("</head>\r\n");
      java.util.ArrayList datas = null;
      datas = (java.util.ArrayList) _jspx_page_context.getAttribute("datas", javax.servlet.jsp.PageContext.REQUEST_SCOPE);
      if (datas == null){
        datas = new java.util.ArrayList();
        _jspx_page_context.setAttribute("datas", datas, javax.servlet.jsp.PageContext.REQUEST_SCOPE);
      }
      out.write("\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<div align=\"center\"> \r\n");
      out.write("<H2>주소록:목록화면</H2>\r\n");
      out.write("<HR>\r\n");
      out.write("<form>\r\n");
      out.write("<a href=\"addrbook_form.jsp\">주소록 등록</a><P>\r\n");
      out.write("\r\n");
      out.write("\t\t<table border=\"1\">\r\n");
      out.write("\t\t\t<tr><th>번호</th><th>이 름</th><th>전화번호</th><th>생 일</th><th>회 사</th><th>메 모</th></tr>\r\n");
      out.write("\t\t\t");

				for(AddrBook  ab : (ArrayList<AddrBook>)datas) {
			
      out.write("\r\n");
      out.write("\t\t\t  <tr>\r\n");
      out.write("\t\t\t   <td><a href=\"javascript:check(");
      out.print(ab.getAb_id());
      out.write(')');
      out.write('"');
      out.write('>');
      out.print(ab.getAb_id() );
      out.write("</a></td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(ab.getAb_name() );
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(ab.getAb_tel() );
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(ab.getAb_birth() );
      out.write("</td>\n");
      out.write("\t\t\t\t<td>");
      out.print(ab.getAb_comdept() );
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(ab.getAb_memo() );
      out.write("</td>\r\n");
      out.write("\t\t\t  </tr>\r\n");
      out.write("\t\t\t ");

				}
			 
      out.write("\r\n");
      out.write("\t\t</table>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("</div>\n");
      out.write("</body>\n");
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
