<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.*"
       import="com.google.gson.Gson"
   %>
   
   <jsp:useBean id="Esch" class="jspexp.a13_database.vo.Emp"/>
   <jsp:useBean id="Edao" class="jspexp.a13_database.A02_EmpDao"/>
   <jsp:setProperty property="*" name="Esch"/>
	<c:if test="${empty param.ename }">${Esch.setEname("") }</c:if>
   <c:if test="${empty param.job }">${Esch.setJob("") }</c:if>
  	<%--  <c:if test="${empty param.frSal }">${sch.setFrSal(9999) }</c:if> --%>
   <c:if test="${empty param.toSal }">${Esch.setToSal(9999) }</c:if>
  
   <jsp:useBean id="gson" class="com.google.gson.Gson"/>
  ${ gson.toJson(Edao.getEmpSch(Esch))}