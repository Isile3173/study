<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    

<%  request.setCharacterEncoding("utf-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>코어 태그로 출력</h2>
  <c:set var="name" value="${ param.name }" /> 
  <c:set var="age" value="${ param.age }" /> 
  이름 : <c:out value="${name}" /><br/> 
  나이 : <c:out value="${age}" /><br/> 
 
  <c:if test="${name=='my'}">이건 나</c:if><br />
 
  <c:choose>
    <c:when test="${age<10}">어린이</c:when>
    <c:when test="${age<20}">청소년</c:when>
    <c:otherwise>어른</c:otherwise>
  </c:choose>
  <br />
 
  <c:forEach var="n" begin="1" end="${age }"  step="1">
     #
  </c:forEach>
  <hr>
  
  1~나이까지 홀수이면 빨강, 짝수이면 파랑<br/>
  <c:forEach var="n" begin="1" end="${age }"  step="1">
     <c:choose>
       <c:when test="${n%2 == 1 }">
         <span style="color:red">${n }</span>
       </c:when>
       <c:when test="${n%2 == 0 }">
         <span style="color:blue">${n }</span>       
       </c:when>
     </c:choose>
  </c:forEach>
  
  <hr />
  
  함수활용<br/>
  1) jsp 활용<br/>
  <%
      String name = request.getParameter("name").trim();
  %>
  이름의 문자열갯수 : <%= name.length() %><br/> 
  이름중 앞에서 3자 자르기 :<%= name.substring(0, 3) %><br />
  
  2) jstl fn 활용<br/>
  이름의 문자열갯수 : ${fn:length(name) }<br/> 
  이름중 앞에서 3자 자르기 :${fn:substring(name, 0, 3) }<br />
  문자열 바꾸기  : ${fn:replace(name,'b', 'P') }        
  
  
  
 
</body>
</html>