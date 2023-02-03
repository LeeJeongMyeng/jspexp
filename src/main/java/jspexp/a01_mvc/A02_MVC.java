package jspexp.a01_mvc;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A02_MVC
 */
@WebServlet(name = "mvc02.do", urlPatterns = { "/mvc02.do" })
public class A02_MVC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		//뷰단 호출
		String page="WEB-INF\\a01_mvc\\a02_veiw.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request,response);
		
		
	}

}
