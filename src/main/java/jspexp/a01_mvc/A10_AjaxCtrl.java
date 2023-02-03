package jspexp.a01_mvc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A10_AjaxCtrl
 */
@WebServlet(name = "empAjax.do", urlPatterns = { "/empAjax.do" })
public class A10_AjaxCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A08_empSercive service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A10_AjaxCtrl() {
    	
        super();
        service = new A08_empSercive();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청값 처리
				String ename = request.getParameter("ename");
				String job = request.getParameter("job");
				String frSal = request.getParameter("frSal");
				String toSal = request.getParameter("toSal");
				// 서비스단
				String json = service.empAjax(ename,job,frSal,toSal);

				//view(초기화면/json 데이터)
				if(ename==null){
			request.getRequestDispatcher(
					"WEB-INF\\a01_mvc\\a10_ajaxEmp.html").forward(request, response);
				}else{
				response.setCharacterEncoding("utf-8");
				 PrintWriter out = response.getWriter();
				 out.print(json);
				}

	}

}
