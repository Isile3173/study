<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JSTL : JSP Standard Tag Library 예제1</h2>
<h3>Core library</h3>
1) jsp 에서 변수 선언<br />
<%  int a = 10; %>
a 뱐수 : <%=a %>
<hr/>

2) 코어태그에서 변수(attribute) 선언<br/>
<c:set var="b">20</c:set>
<c:set var="c" value="20" />
b변수 : ${b}<br />
c변수 : ${c}<br />
b+c   : ${b+c}<br />
<c:set var="dt" value="<%=new java.util.Date() %>" />
오늘 날짜 : ${dt}<br />
<c:out value="60" />
<c:out value="70" ></c:out>
<hr />

3) b, c변수 제거<br/>
<c:remove var="b" />
<c:remove var="c" />
b+c : ${b+c}<br />

</body>
</html>