package jspexp.a01_mvc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A11_AjaxDept
 */
@WebServlet(name = "ajaxDept.do", urlPatterns = { "/ajaxDept.do" })
public class A11_AjaxDept extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A10_deptService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A11_AjaxDept() {
        super();
        service = new A10_deptService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String dname = request.getParameter("dname");
		String loc = request.getParameter("loc");
		String Djson = service.deptAjax(dname,loc);
		if(dname==null) {
			request.getRequestDispatcher("WEB-INF\\a01_mvc\\a11_ajaxDept.html").forward(request, response);
		}else {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print(Djson);
		}
	}

}
