<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="calc" uri="http://www.hth.com/test/mytld.tld" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2>결과</h2>
 x : ${ param.x }와 ${ param.y } 의 합 : ${calc:add(param.x, param.y) }
</body>
</html>