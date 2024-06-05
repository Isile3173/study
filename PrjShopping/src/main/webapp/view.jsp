<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBConnection.jsp" %>    

<% // 회원정보 보기
   // 서버에서 해야될 일 - 넘어온 custno 로 db 조회   
   // http://localhost:8080/PrjShopping/view.jsp?custno=10009
   
   String   req_custno  =  request.getParameter("custno"); 
   int      custno      =  Integer.parseInt(req_custno);  
   
   sql     =  "SELECT * FROM MEMBER_TBL ";
   sql    +=  " WHERE CUSTNO = ?";
   pstmt   =  conn.prepareStatement(sql);
   pstmt.setInt(1, custno);
   
   ResultSet rs = pstmt.executeQuery();
   String    custname = "",  phone = "", address = "",
		     joindate = "",  grade = "", city = "";
   if( rs.next() ) { // 자료가 존재하면
	   custno    = rs.getInt("custno");
	   custname  = rs.getString("custname");
	   phone     = rs.getString("phone");
	   address   = rs.getString("address");
	   joindate  = rs.getString("joindate");	   
	   grade     = rs.getString("grade");
	   switch(grade.toUpperCase()) {
	   case "A":  grade = "VIP"; break; 
	   case "B":  grade = "일반"; break; 
	   case "C":  grade = "직원"; break; 
	   case "D":  grade = "손님"; break; 
	   }
	   HashMap<String, String>  map = new HashMap<> (); 
   	   map.put("01" , "서울");  map.put("02" , "부산");
   	   map.put("03" , "대구");  map.put("04" , "인천");
   	   map.put("05" , "대전");  map.put("06" , "광주");
   	   map.put("41" , "울릉");  map.put("07" , "제주");

	   city         =  rs.getString("city"); 
       city         = map.get(city); 
	   
   }
   rs.close();
   pstmt.close();
   conn.close();
   
%>    

<!-- 조회된 결과 화면 출력 -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/common.css" />

<script>
  window.onload = function() {
	  const  btnUpdateEl = document.querySelector('#btnUpdate');	  
	  const  btnDeleteEl = document.querySelector('#btnDelete');
	  const  btnAddEl    = document.querySelector('#btnAdd');
	  
	  let    custno      =  <%=custno%>;  
	  
	  btnUpdateEl.addEventListener('click', function(e) {
		  let   loc      =  'update.jsp?custno=' + custno;
		  location.href  =  loc;
	  })
	  btnDeleteEl.addEventListener('click', function(e) {
		 // let   loc      =  'deleteaction.jsp?custno=<%=custno%>';
		  let   loc      =  'delete?custno=<%=custno%>';  //servlet
		  location.href  =  loc;
	  })
	  btnAddEl.addEventListener('click', function(e) {
		  let   loc      =  'index.jsp';
		  location.href  =  loc;
	  })
	  
  }
</script>

</head>
<body>
<%@ include file="header.jsp" %>    
 
 <div class="container">
  <div class="content">
      
      <h2>홈쇼핑 회원조회 화면</h2> 
      <table>
        <colgroup>
          <col width="40%">
          <col width="60%">
        </colgroup>
        <tbody> 
          <tr>
           <th>회원번호</th>
           <td><%=custno %></td>
          </tr>
          <tr>
           <th>회원이름</th>
           <td><%=custname %></td>
          </tr>
          <tr>
           <th>전화번호</th>
           <td><%= phone %> </td>
          </tr>
          <tr>
           <th>주소</th>
           <td><%= address %></td>
          </tr>
          <tr>
           <th>가입일</th>
           <td><%= joindate %></td>
          </tr>
          <tr>
           <th>고객등급</th>
           <td><%=grade %></td>
          </tr>
          <tr>
           <th>거주도시</th>
           <td><%= city %></td>
          </tr>

        </tbody>
      </table>
      
      <div class="btn_group" style="text-align:center">
         <button id="btnUpdate">수정</button>
         <button id="btnDelete">삭제</button>
         <button id="btnAdd">추가</button>
         <button type="button" onclick="history.back()">뒤로가기</button>
      </div>     
   
  </div>
 </div>
 
 <%@ include file="footer.jsp" %>    
</body>
</html>















