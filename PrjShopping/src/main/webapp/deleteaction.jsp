<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBConnection.jsp" %>    
<%
    // 넘어온 회원정보를 이용하여 삭제 - db 에서
    String   req_custno  =  request.getParameter("custno");
    int      custno      =  Integer.parseInt( req_custno );
    
    sql      =  "DELETE  FROM  MEMBER_TBL ";
    sql     +=  " WHERE  CUSTNO = ? ";
    pstmt    =  conn.prepareStatement( sql );
    pstmt.setInt( 1, custno );
    
    pstmt.executeQuery();
    
    pstmt.close();
	conn.close();    
    
    // 삭제 후 조회페이지로 이동
    String url = "list2.jsp"; 
    response.sendRedirect(url);
%>    







