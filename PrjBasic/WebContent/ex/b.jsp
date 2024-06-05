<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>로그인된 아이디:<%=session.getAttribute("id") %></h2>
    <h2>로그인된 아이디:${sessionScope.id }</h2>
    <h2>로그인된 아이디:${ id }</h2>
    <a href="a.jsp">a.jsp</a>
    <a href="c.jsp">c.jsp</a>
</body>










</html>