<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
    import="jspexp.a13_database.*" 
   %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
/*
 
 */
</script>
</head>
<body>
<h2>파일업로드</h2>
<form action="a06_uploadFile.jsp" method="post" enctype="multipart/form-data">
   자료명:<input type="text" name="name"/><br>
   파일: <input type="file" id="file01" name="file01" multiple><br>
   		<input type="hidden" name="filenames"/>
   <input type="submit" value="업로드"/><br>
</form>
<div id="exp">
	<img id="img"/>
</div>

<%--
# fileupload처리
1. 환경 설정
   1) 업로드 모듈 설정
      cos.jar WEB-INF/lib
   2) 업로드 경로 설정
      C:\a01_javaexp\workspace\jspexp\src\main\webapp\a02_jsp\z02_upload
2. 업로드 폼(a05_uploadForm.jsp)
   1) form 속성 설정
      <form enctype="multipart/form-data"
   2) file객체 type 선언
      <input type="file" name="file01"/>
3. 업로드 처리(a06_uploadFile.jsp)
   1) 업로드 처리하는 lib 객체 import 처리
      <%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
      <%@page import="com.oreilly.servlet.MultipartRequest"%>  
   2) 경로 설정
      String loc = "업로드할 위치"
      int maxSize = 1024*1024*5; // 최대크기 설정
   3) 파일 업로드 하는 객체 선언으로 업로드가 된다.
      MultipartRequest multi = new MultipartRequest(
         loc,
         maxSize,
         "utf-8",
         new DefaultFileRenamePolicy()
      );
      // DefaultFileRenamePolicy: 중복시 저장 정책
   4) 업로드된 파일 정보 가져오기
      Enumeration<?> files = multi.getFileNames();
      if(files.hasMoreElements()){
         String ele = (String)files.nextElements();
         multi.getFilesystemName(ele); // 서버에서 업로드한 파일명
         multi.getOriginalFileName(ele); // 유저가 업로드한 파일명
         multi.getContentType(ele); // content타입
         multi.getFile(ele).length(); // 파일의 길이
      }
 --%>

</body>
<script>
var filearr=""; //파일명들을 담아주기위한 변수, <input type="hidden" value="!!여기!!에 심어줄거임"
       $("#file01").change(function () {   //<input file>을실행해서 파일 업로드 할떄마다 실행 
    	   $("input[name=filenames]").val('')
            var files = $("#file01")[0].files; // 제이쿼리로 파일들을 배열로 담음 
            console.log(files)
            for (var i = 0; i < files.length; i++) { // 파일배열의 길이만큼 반복
                if(i!=files.length-1 ) // 배열의 마지막번째가 아닐 경우
                filearr += files[i].name+"," // ,(콤마)구분자로 파일명을 나누기위해서 ,를 붙혀 파일명을 담음
                else{filearr += files[i].name}  //배열의 마지막번째(마지막파일)일 경우 ,를 붙히지않고 파일명만 붙힘
            }
            $("input[name=filenames]").val(filearr) //hidden에 담아서 같이 전송
            
           
        });


</script>
</html>