<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    //String  id = "admin";
    session.setAttribute("id", "admin");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h2>아이디:<%=session.getAttribute("id") %></h2>
   <h2>아이디:${ sessionScope.id }</h2>
   <h2>아이디:${ id }</h2>
   <a href="b.jsp">b.jsp</a>
   <a href="c.jsp">c.jsp</a>
</body>
</html>



