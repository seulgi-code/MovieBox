/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.53
 * Generated at: 2020-08-01 20:30:45 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"icon\" type=\"image/png\" href=\"/orm/images/icons/favicon.ico\"/>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/orm/vendor/bootstrap/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/orm/fonts/font-awesome-4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/orm/fonts/Linearicons-Free-v1.0.0/icon-font.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/orm/vendor/animate/animate.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/orm/vendor/css-hamburgers/hamburgers.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/orm/vendor/animsition/css/animsition.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/orm/vendor/select2/select2.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/orm/vendor/daterangepicker/daterangepicker.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/orm/css/util.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/orm/css/main.css\">\r\n");
      out.write("<script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-3.5.0.min.js\"></script>\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<script>\r\n");
      out.write("$(function(){\r\n");
      out.write("\t//회원가입 제약사항\r\n");
      out.write("\t$(\"button#login\").click(function(){\r\n");
      out.write("\t\tif($(\"input#id\").val()==\"\"){\r\n");
      out.write("\t\t\talert(\"아이디 입력하세요\");\r\n");
      out.write("\t\t\t$(\"input#id\").focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif($(\"input#name\").val()==\"\"){\r\n");
      out.write("\t\t\talert(\"이름 입력하세요\");\r\n");
      out.write("\t\t\t$(\"input#name\").focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif($(\"input#email\").val()==\"\"){\r\n");
      out.write("\t\t\talert(\"이메일 입력하세요\");\r\n");
      out.write("\t\t\t$(\"input#email\").focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(($(\"input#password1\").val() != $(\"input#password2\").val())){\r\n");
      out.write("\t\t\talert(\"비밀번호가 일치하지않습니다\");\r\n");
      out.write("\t\t\t$(\"input#password1\").val(\"\");\r\n");
      out.write("\t\t\t$(\"input#password2\").val(\"\");\r\n");
      out.write("\t\t\t$(\"input#password1\").focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(($(\"input#password2\").val().length < 9)){\r\n");
      out.write("\t\t\talert(\"형식에 맞춰 비밀번호를 작성해주세요\");\r\n");
      out.write("\t\t\t$(\"input#password1\").val(\"\");\r\n");
      out.write("\t\t\t$(\"input#password2\").val(\"\");\r\n");
      out.write("\t\t\t$(\"input#password1\").focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t$(\"input#password\").val($(\"input#password2\").val());\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("<body>\r\n");
      out.write("   <div class=\"limiter\">\r\n");
      out.write("      <div class=\"container-login100\">\r\n");
      out.write("         <div class=\"wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55\">\r\n");
      out.write("            <form class=\"login100-form validate-form flex-sb flex-w\" action=\"loginIdCheck.do\" method=\"post\">\r\n");
      out.write("               <span class=\"login100-form-title p-b-32\">\r\n");
      out.write("                  Account Login\r\n");
      out.write("               </span>\r\n");
      out.write("\r\n");
      out.write("               <span class=\"txt1 p-b-11\">\r\n");
      out.write("                  ID\r\n");
      out.write("               </span>\r\n");
      out.write("               <div class=\"wrap-input100 validate-input m-b-36\" data-validate = \"Username is required\">\r\n");
      out.write("                  <input class=\"input100\" type=\"text\" name=\"id\" id=\"id\" >\r\n");
      out.write("                  <span class=\"focus-input100\"></span>\r\n");
      out.write("               </div>\r\n");
      out.write("               <span class=\"txt1 p-b-11\">\r\n");
      out.write("                  Username\r\n");
      out.write("               </span>\r\n");
      out.write("               <div class=\"wrap-input100 validate-input m-b-36\" data-validate = \"Username is required\">\r\n");
      out.write("                  <input class=\"input100\" type=\"text\" name=\"name\" id=\"name\" >\r\n");
      out.write("                  <span class=\"focus-input100\"></span>\r\n");
      out.write("               </div>\r\n");
      out.write("               <span class=\"txt1 p-b-11\">\r\n");
      out.write("                  E-Mail\r\n");
      out.write("               </span>\r\n");
      out.write("               <div class=\"wrap-input100 validate-input m-b-36\" data-validate = \"Username is required\">\r\n");
      out.write("                  <input class=\"input100\" type=\"text\" name=\"email\" id=\"email\" >\r\n");
      out.write("                  <span class=\"focus-input100\"></span>\r\n");
      out.write("               </div>\r\n");
      out.write("               <span class=\"txt1 p-b-11\">\r\n");
      out.write("                  Birth\r\n");
      out.write("               </span>\r\n");
      out.write("               <div class=\"wrap-input100 validate-input m-b-36\"  data-validate = \"Username is required\">\r\n");
      out.write("                  <input class=\"input100\" type=\"text\" placeholder=\"19930410\" name=\"birth\" id=\"birth\" >\r\n");
      out.write("                  <span class=\"focus-input100\"></span>\r\n");
      out.write("               </div>\r\n");
      out.write("               <span class=\"txt1 p-b-11\">\r\n");
      out.write("                  Tel\r\n");
      out.write("               </span>\r\n");
      out.write("               <div class=\"wrap-input100 validate-input m-b-36\" data-validate = \"Username is required\">\r\n");
      out.write("                  <input class=\"input100\" type=\"text\" name=\"tel\" id=\"tel\" >\r\n");
      out.write("                  <span class=\"focus-input100\"></span>\r\n");
      out.write("               </div>\r\n");
      out.write("               \r\n");
      out.write("               <span class=\"txt1 p-b-11\">\r\n");
      out.write("                  Password\r\n");
      out.write("               </span>\r\n");
      out.write("               <div class=\"wrap-input100 validate-input m-b-12\" data-validate = \"Password is required\">\r\n");
      out.write("                  <span class=\"btn-show-pass\">\r\n");
      out.write("                     <i class=\"fa fa-eye\"></i>\r\n");
      out.write("                  </span>\r\n");
      out.write("                  <input class=\"input100\" type=\"password\" name=\"password1\" placeholder=\"9글자 이상\"  id=\"password1\" >\r\n");
      out.write("                  <span class=\"focus-input100\"></span>\r\n");
      out.write("               </div>\r\n");
      out.write("               <span class=\"txt1 p-b-11\">\r\n");
      out.write("                  Password confirm\r\n");
      out.write("               </span>\r\n");
      out.write("               <div class=\"wrap-input100 validate-input m-b-12\" data-validate = \"Password is required\">\r\n");
      out.write("                  <span class=\"btn-show-pass\">\r\n");
      out.write("                     <i class=\"fa fa-eye\"></i>\r\n");
      out.write("                  </span>\r\n");
      out.write("                  <input class=\"input100\" type=\"password\" name=\"password2\" id=\"password2\" >\r\n");
      out.write("                  <span class=\"focus-input100\"></span>\r\n");
      out.write("               </div>\r\n");
      out.write("               <input type=\"hidden\" name=\"password\" id=\"password\">\r\n");
      out.write("               <div class=\"flex-sb-m w-full p-b-48\">\r\n");
      out.write("                  <div class=\"contact100-form-checkbox\">\r\n");
      out.write("                     <input class=\"input-checkbox100\" id=\"ckb1\" type=\"checkbox\" name=\"remember-me\">\r\n");
      out.write("                     <label class=\"label-checkbox100\" for=\"ckb1\">\r\n");
      out.write("                        Remember me\r\n");
      out.write("                     </label>\r\n");
      out.write("                  </div>\r\n");
      out.write("\r\n");
      out.write("                  <div>\r\n");
      out.write("                     <a href=\"#\" class=\"txt3\">\r\n");
      out.write("                        Forgot Password?\r\n");
      out.write("                     </a>\r\n");
      out.write("                  </div>\r\n");
      out.write("               </div>\r\n");
      out.write("\r\n");
      out.write("               <div class=\"container-login100-form-btn\">\r\n");
      out.write("                  <button class=\"login100-form-btn\" id=\"login\" name=\"login\">\r\n");
      out.write("                     Login\r\n");
      out.write("                  </button>\r\n");
      out.write("               </div>\r\n");
      out.write("\r\n");
      out.write("            </form>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("   </div>\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("   <div id=\"dropDownSelect1\"></div>\r\n");
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
