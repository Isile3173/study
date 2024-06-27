<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    // jsp 방식
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    int    age  = Integer.parseInt(request.getParameter("age"));
    
    out.print("이름:" + name + "<br>");
    out.print("나이:" + age  + "<br>");
    
    if( age < 10 ) 
    	out.print("어린이<br>");
    else 
    	if( age < 20 )
    		out.print("청소년<br>");
    	else
    		out.print("어른이<br>");
   // 나이만큼 # 문자츨 출력
   for(int i=0;i<age;i++)
	   out.print("#");
   out.print("<hr/>");   
%>
</body>
</html>