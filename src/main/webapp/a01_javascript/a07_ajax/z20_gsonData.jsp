<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
    import="jspexp.a13_database.*"
    import="com.google.gson.Gson"
   %>
   	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%--
	jspexp.a13_database.A06_PareparedDao.getDeptList(Dept sch)
	 --%>
   
   <jsp:useBean id="sch" class="jspexp.a13_database.vo.Dept"/>
    <jsp:setProperty property="*" name="sch"/>
   <c:if test="${empty param.dname }">${sch.setDname("") }</c:if>
   <c:if test="${empty param.loc }">${sch.setLoc("") }</c:if>

   <jsp:useBean id="gson" class="com.google.gson.Gson"/>
   <jsp:useBean id="dao" class="jspexp.a13_database.A06_PareparedDao"/>
   ${gson.toJson(dao.getDeptList(sch))}
   
   