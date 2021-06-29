/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2021-06-28 15:11:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Welcome to the Dota World</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"statics/css/common.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"statics/css/login.css\">\n");
      out.write("    <script src=\"statics/js/jquery-3.6.0.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"statics/js/config.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"statics/js/util.js\" type=\"text/javascript\"></script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<main>\n");
      out.write("    <header>\n");
      out.write("        <nav>\n");
      out.write("            <div class=\"top\">\n");
      out.write("                <img src=\"statics/img/dota2_logo_horiz.png\" alt=\"\" class=\"img_logo\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"top2\"></div>\n");
      out.write("\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"homepage\">\n");
      out.write("            <div class=\"video\">\n");
      out.write("                <video muted1 autoplay=\"\" preload=\"auto\" loop=\"\" playsinline=\"\">\n");
      out.write("                    <source type=\"video/mp4\" src=\"statics/video/dota_montage_02.mp4\">\n");
      out.write("                </video>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"QuoteContainer\">\n");
      out.write("            <div>\n");
      out.write("                <div class=\"QuoteText\">“一款现代的多人游戏杰作”</div>\n");
      out.write("                <div class=\"QuoteCredit\">-《Destructoid》</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"HorizBar\"></div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"BottomFade\"></div>\n");
      out.write("        <div class=\"login\">\n");
      out.write("            <div>用户登陆</div>\n");
      out.write("            <div id=\"tabcon\">\n");
      out.write("                <div class=\"box show\">\n");
      out.write("                    <form action=\"user\" method=\"POST\" id=\"loginForm\">\n");
      out.write("                        <input class=\"user\" id=\"userName\" name=\"userName\" type=\"text\" value=\"\" /> <br>\n");
      out.write("                        <input type=\"password\" class=\"pwd\" id=\"userPwd\" name=\"userPwd\" value=\"\"/> <br />\n");
      out.write("                        <input name=\"rem\" type=\"checkbox\" value=\"1\" class=\"inputcheckbox\"/> <label>记住我</label>&nbsp;&nbsp;\n");
      out.write("                        <span id=\"msg\" style=\"color: red;font-size: 12px\"></span><br /><br />\n");
      out.write("                        <input type=\"button\" class=\"log\" value=\"登 陆\" onclick=\"checkLogin();\"/>&nbsp;&nbsp;&nbsp;<input type=\"reset\" value=\"取 消\" class=\"reg\">\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("</main>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
