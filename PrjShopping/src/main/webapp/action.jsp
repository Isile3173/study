<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBConnection.jsp" %>

<%
    // 넘어온값을 받아서 db 에 저장한후 조회페이지롤 이동
    /* name 속성의 값이다
    custname: aaa
	phone: 010-7234-1234
	address: 부산 진구 부전동
	joindate: 2023-08-25
	grade: B
	city: 02
	*/
	// 남어온값 처리
	String  custname   = request.getParameter("custname");
	String  phone      = request.getParameter("phone");
	String  address    = request.getParameter("address");
	String  joindate   = request.getParameter("joindate");
	String  grade      = request.getParameter("grade");
	String  city       = request.getParameter("city");
	
	/* out.print(custname);
	out.print(phone);
	out.print(address);
	out.print(joindate);
	out.print(grade);
	out.print(city); */
	
	// db 에 저장
	sql  = "INSERT INTO member_tbl ( ";
	sql += " custno,             custname, phone, address, ";
    sql += " joindate,           grade,    city ";
	sql += " ) VALUES ( ";
	sql += " SEQ_CUSTNO.NEXTVAL, ?,        ?,     ?,";
	sql += " sysdate,            ?,        ? )";
	
	System.out.println(sql);
	
	pstmt = conn.prepareStatement( sql );
	
	// 파라미터 (?) 설정
	pstmt.setString(1, custname); // 1 첫번째 ? custname
	pstmt.setString(2, phone);    
	pstmt.setString(3, address); 
	pstmt.setString(4, grade);
	pstmt.setString(5, city);
	
	// 저장실행
	pstmt.executeQuery();
	
	System.out.println("저장되었습니다");
	//out.print("<h2>저장되었습니다</h2>");
	
	pstmt.close();
	conn.close();
		
	String  loc = "list2.jsp";
	response.sendRedirect( loc ); //무조건 list.jsp 로 이동한다(jsp 문법)	
%>    
<!-- 
<a href="list.jsp">목록으로 이동</a>
<a href="index.jsp">이전으로</a>
<a href="javascript:history.back()">이전으로</a>

무조건 페이지 이동 (javascript 버전)
<script>
  location.href= 'list.jsp';
</script>
 -->








