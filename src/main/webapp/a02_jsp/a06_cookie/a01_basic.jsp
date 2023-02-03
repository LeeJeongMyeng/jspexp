<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"  
  import="jspexp.vo.*"  
    import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*" 
      
    %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<script type="text/javascript">
/*
 
*/
</script>

</head>
<body>

<%--
# Cookie란?
	1. 웹프로그래밍에 있어서 서버와 클라이언트간에 접속하여 처리된 정보를
		임시 저장하는 경우가 간간히 발생한다. 이때, 이 정보를 서버에 보관하여 사용하는 것을
		session이라고하고, 서버에 보관되는 메모리의 부담으로 클라이언트에 저장하는것을 쿠키라고한다.
		
	2. 쿠키의 생성시점
		1) 쿠키는 클라이언트에서 요청에 의해, 서버안에서 객체를 생성하여 response객체에 쿠키를 추가하여
			클라이언트에 보내어지면 클라이언트(브라우저)에서 지정한 경로에 저장이 된다.
	
	3. 쿠키의 활용 
		1) 쿠키가 서버에서 생성되어 클라이언트에 저장되면, 다시 요청 객체 request에 의해
			서버에 보내지면서 쿠키값을 key/value 형식으로 호출 하여 사용할 수 있다.
		2) 쿠키는 동일한 키로 addCookie로 할당하면 동일한 키로 설정된 내용을 변경해준다
			price==>3000
			price==>5000 (최종으로 설정된 값이 해당 쿠키의 key에 할당된다.)
	4. 쿠키의 소멸
		1) 쿠키는 서버에서 해당 쿠키의 키명과 유효시간으로 기능메서드로 설정하여 다시 클라이언트로 보내지면
			해당 시간이 지나게되었을 때, 클라이언트 안에서 사라진다.
		2) 삭제할 쿠키를 참조변수로 가져와서 setMaxAge(0)으로 설정하여
			다시 response.addCookie(참조변수); 처리하면 해당 쿠키값이 삭제가 된다.

# 쿠키의 구성
	1. 쿠키는 이름, 값, 유효시간, 도메인, 경로로 구성된다.
	2. 쿠키의 이름은 아스키 코드의 알파벳과 숫자만을 표함할 수 있다.
		ex) 한글의 경우 encoding을 저장했다가, decoding으로 가져와야한다.
	3. 콤마, 세미콜론, 공백 등의 문자는 포함할 수 없다.
	4. $로 시작할 수 없다.

# 쿠키의 생성과 읽기
	1.쿠키의 생성
		Cookie c1 = new Cookie("쿠키의 이름","쿠키의 값")
	2.쿠키의 전달
		쿠키는 response객체에 의해 클라이언트에 추가형식으로 전달된다.
		response.addCookie(c1);
	3.쿠키의 읽어오기
		쿠키는 요청객체(request)의 getCookies()메서드로 클라이언트에서 서버로 전달되어 읽어온다.
		쿠키는 배열로 읽어와서 각 데이터를 key, value형식으로 확인할 수 있다.
		Cookie[] cookies = request.getCookies();
		for(Cookie c:cookies){
			c.getName()
			c.getValue()
		}
		
		# 쿠키의 생성과 활용 과정#
		request
		response
		둘다 서버에 있는 코드에서 수행된다.
		1.request : 클라이언트에서 서버로 전달하는 데이터 ex)요청값
		(query string - ?key=value
		request.getParameter("key")),
		클라이언트에 저장된 쿠키값을 서버로 전송(request.getCookies())
		
		
		#쿠키생성 핵심코드
		1.쿠키 생성
			Cookie c1 = new Cookie(key,val);
			c1.setMaxAge(5*60*60*24) 초 분 시 날짜
			response.addCookie(c1)
		2. 쿠키확인
			Cookie[] carr = request.getCookies();
			if(carr!=null{
				for(Cookie : carr){
					c.getName(); c.getValue()
					//쿠키의 값
				}
			}
		3. 쿠키값의 변경
			변경할 쿠키의 키에 해당하는 값을 새로운 값으로 할당하여 다시response객체를 통해서 전달
			1) 반복문 안에서
			if(c.getName().equals("변경할 쿠키의 키")){
				response.addCookie(
					new Cookie(c.getName(),"변경할 값"));
			}
			2) 키를 알고있을 떄는 바로 처리
			response.addCookie(
			new Cookie("변경할 쿠키의 키","변경할 값"));
			cf) 쿠키는 동일한 키가 없을때는 새로운 쿠키가 생성이 되고
			동일한 키가 있을 떄는 변경된 값으로 기존 쿠키가 변경된다. 
		4.쿠키의 삭제
			해당 쿠키의 키를 기준으로 속성메서드 setMaxAge(0)으로 설정해서
			다시 response객체로 할당하면된다.
--%>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>