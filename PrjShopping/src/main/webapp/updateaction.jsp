<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include  file = "DBConnection.jsp" %>    

<%  // 수정을 위해 넘어오는 정보처리
    int     custno    = Integer.parseInt(request.getParameter("custno"));
    String  phone     = request.getParameter("phone");
    String  address   = request.getParameter("address");
    String  grade     = request.getParameter("grade");
    String  city      = request.getParameter("city");

   // db 정보 고침
   sql    =  "UPDATE MEMBER_TBL SET ";
   sql   +=  " PHONE    = ?, ";
   sql   +=  " ADDRESS  = ?, ";
   sql   +=  " GRADE    = ?, ";
   sql   +=  " CITY     = ?  ";
   sql   +=  " WHERE   CUSTNO = ? ";
   
   pstmt  =  conn.prepareStatement(sql);
   pstmt.setString(1, phone    );
   pstmt.setString(2, address );
   pstmt.setString(3, grade    );
   pstmt.setString(4, city    );
   pstmt.setInt(5, custno); 
   
   pstmt.executeQuery();
   
   pstmt.close();
   conn.close();
   
   // 페이지 이동 -> list2.jsp
   String  loc  = "list2.jsp";
   response.sendRedirect( loc );
%>    
    
    
    
    
    
    
    
    
    
    
    
    
    
    