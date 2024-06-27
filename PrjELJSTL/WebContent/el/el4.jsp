<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="user" uri="http://www.hth.com/test/mytld.tld"  %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
* 표현언어에서 자바 클래스 접근*<br/>
1) new 연산자 이용<br/>
<%@page import="net.el.*" %>
<%
   String  x ="3", y="5";
   Compute comp = new Compute(); 
   out.print("합:" + comp.plus(x,y)+"<br/>");
   out.print("차:" + comp.minus(x,y)+"<br/>");
   out.print("곱:" + comp.multi(x,y)+"<br/>");
   out.print("몫:" + comp.divide(x,y)+"<br/>");
   out.print("합:" + Compute.add(x,y)+"<br/>");   
%>
<hr>
2) 자바빈즈 이용<br/>
<jsp:useBean id="comp2" class="net.el.Compute" scope="page" />
<%
	out.print("합:" + comp2.plus(x,y)+"<br/>");
	out.print("차:" + comp2.minus(x,y)+"<br/>");
	out.print("곱:" + comp2.multi(x,y)+"<br/>");
	out.print("몫:" + comp2.divide(x,y)+"<br/>");
%>
<hr/>
3) EL 이용<br/>
java Math.sqrt() 호출 예제<br/>
<br/>
sqrt(25) : ${user:mysqrt(25)  } <br />
4) EL 이용<br/>
WEB-INF/tlds/mytld.tld 파일 생성<br>
합 : ${user:add(3,5) }<br/>
차 : ${user:sub(3,5) }<br/>
<hr/>
</body>
</html>