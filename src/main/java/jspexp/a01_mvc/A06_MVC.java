package jspexp.a01_mvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A06_MVC
 */
@WebServlet(name = "gugu.do", urlPatterns = { "/gugu.do" })
public class A06_MVC extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A06_MVC() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num01S = request.getParameter("num01");
		String num02S = request.getParameter("num02");
	
		if(num01S!=null){
			int num01 = Integer.parseInt(num01S);
			int num02 = Integer.parseInt(num02S);
			request.setAttribute("result",num01+"x"+ num02+"=" +(num01*num02));
		}
		
		String page= "WEB-INF\\a01_mvc\\a06_guguView.jsp";
		request.getRequestDispatcher(page).forward(request, response);
	}

}
