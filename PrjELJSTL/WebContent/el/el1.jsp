<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Test1</title>
</head>
<body>
 
 123 + 5<br/>
 <%out.print(456+7); %><br/>
 표현식    : <%=789+5 %><br/>
 표햔언어  : ${100+3 }<br/> 
 <hr />
 표현언어에서 사용하는 연산자<br/>
 더하기 : ${123+456 }<br/>
 빼기 : ${123-456 }<br/>
 곱하기 : ${123*456 }<br/>
 나누기 : ${123/456 }<br/>
 나누기 : ${5 div 6  }<br/>
 나머지 : ${5 mod 6  }<br/>
 2가 3보다 작다 : ${ 2 < 3 }<br/>
 2가 3보다 크다 : ${ 2 gt 3 }<br/>
 삼항연산자     : ${ (5 > 3)? 5 : 3 }<br/>
 HOST           : ${ header["host"] }<br/>
 User-Agent    : ${ header["User-Agent"] }<br/>
</body>
</html>




