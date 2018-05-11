package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Service_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.html");
    }

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Welcome ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\">\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div id=\"container\"> \n");
      out.write("            <div id=\"menuPane\">\n");
      out.write("                <input type=\"submit\" value=\"Add a costume\" name=\"addCostume\" id=\"addButton\"\n");
      out.write("                       onClick=\"showAddPane()\"/>\n");
      out.write("                <input type=\"submit\" value=\"Edit a costume info\" name=\"editCostume\" id=\"editButton\"\n");
      out.write("                       onClick=\"showEditPane()\"/>\n");
      out.write("                <input type=\"submit\" value=\"Show my products\" name=\"showCostumes\" id=\"showButton\"\n");
      out.write("                       onClick=\"showShowPane()\"/>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div id=\"productPane\">\n");
      out.write("                <div id=\"addPane\">\n");
      out.write("                    <form action=\"Quiz\" method=\"POST\" enctype=\"multipart/form-data\">\n");
      out.write("                        Enter costume title:<input type=\"text\" name=\"costumetitle\" value=\"Add costume title here\" /><br>\n");
      out.write("                        Enter costume detail:<input type=\"text\" name=\"costumedetails\" value=\"Add details here\" /><br>\n");
      out.write("                        Enter costume description:<textarea name=\"costumedescription\" rows=\"5\" cols=\"20\">\n");
      out.write("Add brief description here\n");
      out.write("                        </textarea><br>\n");
      out.write("                        Enter costume quantity:<input type=\"text\" name=\"costumeqty\" value=\"Put integer here\" /><br>\n");
      out.write("                        Enter costume tag:<input type=\"text\" name=\"costumetag\" value=\"i.e. Halloween or Anime\" /><br>\n");
      out.write("                        Costume category:<select name=\"costumecat\" size=\"1\">\n");
      out.write("                            <option>Bonnet</option>\n");
      out.write("                            <option>Pants</option>\n");
      out.write("                            <option>Jacket</option>\n");
      out.write("                            <option>Socks</option>\n");
      out.write("                            <option>Wigs</option>\n");
      out.write("                        </select>\n");
      out.write("                        <input type=\"file\" name=\"photo\">\n");
      out.write("                        <input type=\"submit\" value=\"submit\" name=\"submitbutton\" />\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div id=\"editPane\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div id=\"showPane\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"helperPane\">\n");
      out.write("            ");

               String toQuery = "select prodimg from weblabg3 where id = "+2;
                 
                
            
      out.write("\n");
      out.write("            <img src=\"WEB-INF/\">\n");
      out.write("           \n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div id=\"footPane\">\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    <script type=\"text/javascript\" src=\"scripts/script.js\"></script>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
