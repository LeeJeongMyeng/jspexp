<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.vo.*"
   %>
<%request.setCharacterEncoding("utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<h2>구매한 물건:${param.pname}</h2>
<h2>물건의 가격:${param.price}</h2>
<h2>구매한 갯수:${param.cnt}</h2>
<h2>총계 =  ${param.price*param.cnt}</h2>

