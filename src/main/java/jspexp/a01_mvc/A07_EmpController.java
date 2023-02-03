package jspexp.a01_mvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspexp.a13_database.vo.Emp;

/**
 * Servlet implementation class A07_EmpController
 */
@WebServlet(name = "empList.do", urlPatterns = { "/empList.do" })
// WEB.xml에 일일이 servletname과 servleturl을 등록하는 것과 같은 효과를 준다.
public class A07_EmpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A08_empSercive service; // 상단에 선언
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A07_EmpController() {
        super();
         service = new A08_empSercive(); //상단에 선언된걸로 생성자 
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ename=request.getParameter("ename");
    	String job=request.getParameter("job");
    	String frSalS=request.getParameter("frSalS");
    	String toSalS=request.getParameter("toSalS");

    	// 모델데이터 선언
    	// 생성자를 통해서 서비스단 객체 생성
    	// 모델은 view단에 넘길 핵심 데이터
    	request.setAttribute("sch",service.getEmp(ename,job,frSalS,toSalS));
    	request.setAttribute("empList",service.empList());
    	//뷰단호출
    	String page="WEB-INF/a01_mvc/a07_empList.jsp";
    	request.getRequestDispatcher(page).forward(request,response);
	}
	
	
		

}
