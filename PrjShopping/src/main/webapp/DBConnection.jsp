<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
	/* POST 방식 한글깨짐 방지 : 모든 jsp 파일에 추가  */
	request.setCharacterEncoding("utf-8");

   // db 에 저장
    // ojdbc11.jar 를 WEB-INF/lib 폴더에 복사해야한다
	Class.forName("oracle.jdbc.OracleDriver");
	String  dburl  = "jdbc:oracle:thin:@localhost:1521:xe";
	String  dbuid  = "jsp";
	String  dbpwd  = "1234";
	String  sql    = "";
	Connection        conn  = DriverManager.getConnection(dburl, dbuid, dbpwd);
	PreparedStatement pstmt = null;
	
	// out.print("Database 접속에 성공했습니다");
%>	





