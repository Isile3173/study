<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap"%>
<%@ include file="DBConnection.jsp" %>    
    
 <%  
    // 회원 정보 list 가져오기 : scriptlet
    sql            = "SELECT * FROM MEMBER_TBL";
    sql           += " ORDER BY CUSTNO ASC";
    // System.out.println(sql);
    
    pstmt           = conn.prepareStatement( sql );
    ResultSet  rs   = pstmt.executeQuery();
    
    String     tag  = "";    
    while( rs.next() ) {
   	  int     custno   = rs.getInt("custno");
   	  String  custname = rs.getString("custname"); 
   	  String  phone    = rs.getString("phone"); 
   	  String  address  = rs.getString("address"); 
   	  String  joindate = rs.getString("joindate"); 
   	  joindate         = joindate.substring(0, 10);
   	  String  grade    = rs.getString("grade");
   	  if ( grade == null ) grade ="D";
   	   	
      switch( grade ) {
      case "A": case "a":  grade = "VIP";  break;
      case "B": case "b":  grade = "일반";  break;
      case "C": case "c":  grade = "직원";  break;
      case "D": case "d":  grade = "손님";  break;  		      
      }		
			  
   	  HashMap<String, String>  map = new HashMap<> (); 
   	  map.put("01" , "서울");  map.put("02" , "부산");
   	  map.put("03" , "대구");  map.put("04" , "인천");
   	  map.put("05" , "대전");  map.put("06" , "광주");
   	  map.put("41" , "울릉");  map.put("07" , "제주");

	  String  city     = rs.getString("city");
      city             = map.get(city); 
	  
      String fmt  = "";
      fmt        += "<tr>";
      fmt        += "<td>%d</td>";
      fmt        += "<td><a href='view.jsp?custno=%d'>%s</a></td>";
      fmt        += "<td>%s</td>";
      fmt        += "<td>%s</td>";
      fmt        += "<td>%s</td>";
      fmt        += "<td>%s</td>";      
      fmt        += "<td>%s</td>";      
      fmt        += "</tr>";
 	  
      tag       += String.format(fmt, 
    		  custno, custno, custname, phone, 
    		  address, joindate, grade, city ); 
   	  
   }  // while end   
  %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/common.css" />
<style>
  td {text-align:center;}
  /*
  tbody tr { background :#fff;  }
  tbody tr:hover { background :#ff0;  }
  */
</style>

</head>
<body>
 <%@ include file="header.jsp" %>    
 
 <div class="container">
   <div class="content">
      <h2>홈쇼핑 회원 목록</h2>
      <table>
        <colgroup>
          <col width="11%">
          <col width="11%">
          <col width="17%">
          <col width="24%">
          <col width="15%">
          <col width="11%">
          <col width="11%">
        </colgroup>
        <thead>
          <tr>
            <th>회원번호</th>
            <th>회원이름</th>
            <th>전화번호</th>
            <th>주소</th>
            <th>가입일자</th>
            <th>고객등급</th>
            <th>거주지역</th>
          </tr>
        </thead>
        <tbody>
          
           <%=tag %>        	 
        
        </tbody>
      </table>
   </div>
 </div>
 
 <%@ include file="footer.jsp" %>    
</body>
</html>







