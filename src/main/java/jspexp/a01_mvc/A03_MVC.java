package jspexp.a01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspexp.a13_database.vo.Dept;

/**
 * Servlet implementation class A03_MVC
 */
@WebServlet(name = "mvc02_1.do", urlPatterns = { "/mvc02_1.do" })
public class A03_MVC extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A03_MVC() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1. 요청처리
		//2. 모델처리
		request.setAttribute("model01","홍길동");
		request.setAttribute("model02",25);
		request.setAttribute("dept",new Dept(10,"인사","서울강북"));
		//3. view단 호출
		String page = "WEB-INF\\a01_mvc\\a02_1_view.jsp"; //<h2>MVC 2단계(모델처리)</h2>
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
