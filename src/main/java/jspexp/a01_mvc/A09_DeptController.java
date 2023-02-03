package jspexp.a01_mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspexp.a13_database.vo.Dept;

/**
 * Servlet implementation class A09_DeptController
 */
@WebServlet(name = "deptList.do", urlPatterns = { "/deptList.do" })
public class A09_DeptController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private A10_deptService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A09_DeptController() {
        super();
        service = new A10_deptService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dname= request.getParameter("dname");
		String loc = request.getParameter("loc");
		
		Dept dsch = new Dept(dname,loc);
		
		request.setAttribute("deptList",service.getDeptList(dsch));
		String page ="WEB-INF/a01_mvc/a08_deptList.jsp";
		request.getRequestDispatcher(page).forward(request,response);
	}

}
