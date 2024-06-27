<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   RequestDispatcher rd = request.getRequestDispatcher("el2.jsp");
   request.setAttribute("val", "hahahaha");
   rd.forward(request, response);
%>