<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
1) request 겍체 이용<br/>
아이디 : <%= request.getParameter("id") %><br/>
암  호 : <%= request.getParameter("passwd") %><br/>

2) EL 의 param 겍체 이용<br/>
아이디 : ${ param.id } <br/>
암  호 : ${ param.passwd }<br/>

3) EL 의 requestScope 겍체 이용(attribute 만 보임)<br/>
아이디 : ${requestScope.val } <br/>
아이디 : ${val } <br/>
암  호 : ${ passwd }<br/>

</body>
</html>