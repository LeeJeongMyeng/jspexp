<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.*"
   %>
<%request.setCharacterEncoding("utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
   <style type="text/css">
        .imgs_wrap {
            width: 600px;
            margin-top: 50px;
        }
        .imgs_wrap img {
            max-width: 200px;
        }
 
    </style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
var sel_files = [];

$(document).ready(function() {
    $("#input_imgs").on("change", handleImgsFilesSelect); //input file의상태가 변하면 함수실행
}); 

function handleImgsFilesSelect(e) {
    var files = e.target.files; // 해당 파일들을 선택
    var filesArr = Array.prototype.slice.call(files); //파일명을 배열화
    console.log(filesArr) //name:'ㅋㅋ.jpg'

    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")) {
            alert("확장자는 이미지 확장자만 가능합니다.");
            return;
        }

        sel_files.push(f);
		console.log("sel_files:"+sel_files)
        var reader = new FileReader();
        reader.onload = function(e) {
            var img_html = "<img src=\"" + e.target.result + "\" />";
            $(".imgs_wrap").append(img_html);
        }
        reader.readAsDataURL(f);
    });
}
</script>
</head>
<body>
<div>
        <h2><b>다중 이미지 미리보기</b></h2>
        <p class="title">다중 이미지 업로드</p>
        <input type="file" id="input_imgs" multiple />
    </div>
 
    <div>
        <div class="imgs_wrap">
            
        </div>
    </div>
</body>
<script>
/*

 */
</script>
</html>