/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M26
 * Generated at: 2017-10-26 07:12:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.ch12;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class transanction_005ftest_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n");
      out.write("\r\n");
      jspbook.ch12.Bank1Bean bb = null;
      bb = (jspbook.ch12.Bank1Bean) _jspx_page_context.getAttribute("bb", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (bb == null){
        bb = new jspbook.ch12.Bank1Bean();
        _jspx_page_context.setAttribute("bb", bb, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');
      jspbook.ch12.Bank2Bean bb2 = null;
      bb2 = (jspbook.ch12.Bank2Bean) _jspx_page_context.getAttribute("bb2", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (bb2 == null){
        bb2 = new jspbook.ch12.Bank2Bean();
        _jspx_page_context.setAttribute("bb2", bb2, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write("\r\n");
      out.write("\r\n");

	if(request.getMethod().equals("POST")){
		if(bb.transfer(Integer.parseInt(request.getParameter("bal"))))
				out.println("<script>alert('정상처리 되었습니다.')</script>");
		else
				out.println("<script>alert('수용한도를 초과했습니다.')</script>");
	}

	bb.getData();
	bb2.getData();

      out.write("\r\n");
      out.write("\r\n");
      out.write("<HTML>\r\n");
      out.write("<HEAD>\r\n");
      out.write("<TITLE>ch12 :트랜잭션 테스트 </TITLE> \r\n");
      out.write("</HEAD>\r\n");
      out.write("\r\n");
      out.write("<BODY>\r\n");
      out.write("<div align=\"CENTER\">\r\n");
      out.write("<H3>계좌현황</H3>\r\n");
      out.write("<HR>\r\n");
      out.write("\r\n");
      out.write("<table border=1 cellpadding=5 cellspacing=0>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>Bank1</td>\r\n");
      out.write("<td>이름 : ");
      out.print(bb.getAname() );
      out.write("</td>\r\n");
      out.write("<td>잔액 : ");
      out.print(bb.getBalance() );
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td>Bank2</td>\r\n");
      out.write("<td>이름 : ");
      out.print(bb2.getAname() );
      out.write("</td>\r\n");
      out.write("<td>잔액 : ");
      out.print(bb2.getBalance() );
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("<HR>\r\n");
      out.write("\r\n");
      out.write("<form name=form1 method=post>\r\n");
      out.write("이체금액 : <INPUT TYPE=\"text\" NAME=\"bal\" width=200 size=\"5\">\r\n");
      out.write("<input type=\"submit\" value=\"이체실행\" name=\"B1\"> <input type=\"reset\" value=\"다시입력\" name=\"B2\">\r\n");
      out.write("</form>\r\n");
      out.write("</div>\r\n");
      out.write("</BODY>\r\n");
      out.write("</HTML>");
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
