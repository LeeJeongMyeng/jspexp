package jspexp.a01_mvc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class A01_MemberController
 */
@WebServlet(name = "MemberController.do", urlPatterns = { "/MemberController.do" })
public class A01_MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     private A01_MemberService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01_MemberController() {
        super();
        service = new A01_MemberService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		System.out.println(id+pass);
		boolean answer = service.getLogin(id,pass);
		System.out.println(answer);
		if(id==null || id.equals("")) {
			request.getRequestDispatcher("WEB-INF\\homework\\a01_0109.html").forward(request, response);	
		}else {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print(answer);
		}
	}

}
