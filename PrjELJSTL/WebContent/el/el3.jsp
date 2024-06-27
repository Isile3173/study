<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
* EL 내장객체 <br>
<%
    String name = "길동이";
    request.setAttribute("name", "춘향이");
    session.setAttribute("name", "춘향이2");
    application.setAttribute("name", "춘향이3");
%>
이름 : <%=name %><br>
이름 : ${name }<br> <!-- name attribute  검색 -->
<hr/>

1) 페이지 Scope <br/>
<% pageContext.setAttribute("kor", "100"); %>
JSP : <%=pageContext.getAttribute("kor") %><br>
EL  : ${pageScope.kor }<br>
EL  : ${ kor }<br>
<hr>

2) request Scope <br/>
<% request.setAttribute("eng", "200"); %>
JSP : <%=request.getAttribute("eng") %><br>
EL  : ${requestScope.eng }<br>
EL  : ${ eng }<br>
<hr>

3) session Scope <br/>
<% session.setAttribute("mat", "300"); %>
JSP : <%=session.getAttribute("mat") %><br>
EL  : ${sessionScope.mat }<br>
EL  : ${ mat }<br>
<hr>

4) application Scope <br/>
<% application.setAttribute("sci", "1000"); %>
JSP : <%=application.getAttribute("sci") %><br>
EL  : ${applicationScope.sci }<br>
EL  : ${ sci }<br>
<hr>



</body>
</html>







