<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="DBConnection.jsp" %>

<%  // custno 받아서 조회
    // http://localhost:8080/PrjShopping/update.jsp?custno=10007
    String   req_custno  =  request.getParameter("custno");
	int      custno      =  Integer.parseInt( req_custno );
	
	sql     =  "SELECT * FROM MEMBER_TBL ";
	sql    +=  " WHERE CUSTNO =  ? ";
	
	pstmt   =  conn.prepareStatement(sql);
	pstmt.setInt(1, custno);
	
	ResultSet  rs = pstmt.executeQuery();
	int     ocustno   = 0;
	String  custname = "",	phone = "", address = "",
		    joindate = "",  grade = "", city    = "";
	if( rs.next() ) {
		ocustno     = rs.getInt("custno");
		custname    = rs.getString("custname");
		phone       = rs.getString("phone");
		address     = rs.getString("address");
		joindate    = rs.getString("joindate");
		grade       = rs.getString("grade");  // code  A
		city        = rs.getString("city");   // code  01
	}
	
	rs.close();
	pstmt.close();
	conn.close();	
	
%>    
    
<!--   수정하기 위해 조회한 데이터 출력 
    -> 수정정보입력(input)
    -> updateaction.jsp 로 정보전달
 -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/common.css" />

<script>
   window.onload = function () {
	   const  cityOptionEl 
	      = document.querySelector('[name="city"] > option[value="<%=city%>"]');	      
	   cityOptionEl.selected = true;
   }
</script>

</head>
<body>
 <%@ include file="header.jsp" %>    
 
 <div class="container">
  <div class="content">
    
    <!-- <form action="updateaction.jsp" method="POST"> -->
    <form action="/PrjShopping/update" method="POST">
      <h2>홈쇼핑 회원등록 화면</h2> 
      <table>
        <colgroup>
          <col width="40%">
          <col width="60%">
        </colgroup>
        <tbody> 
          <tr>
           <th>회원번호</th>
           <td><input type="text" name="custno" value="<%=custno %>" readonly /></td>
          </tr>
          <tr>
           <th>회원이름</th>
           <td><input type="text"  value="<%=custname %>" readonly /></td>
          </tr>
          <tr>
           <th>전화번호</th>
           <td><input type="text" name="phone" value="<%=phone %>" /></td>
          </tr>
          <tr>
           <th>주소</th>
           <td><input type="text" name="address" value="<%=address %>" /></td>
          </tr>
          <tr>
           <th>가입일</th>
           <td><input type="text" value="<%=joindate %>"  readonly /></td>
          </tr>
          <tr>
           <th>고객등급<%=grade %></th>
           <td>
           <input type="radio" name="grade" id="aa" value="A"  
              <%  if(grade.equals("A"))  { %>
                     checked="checked"                 
              <%  } %>
           />
           <label for="aa">VIP</label>
           <input type="radio" name="grade" id="bb" value="B" 
              <%  if(grade.equals("B"))  { %>
                     checked                 
              <%  } %>
           />
           <label for="bb">일반</label>
           <input type="radio" name="grade" id="cc" value="C"
              <%  if(grade.equals("C"))  { %>
                     checked                 
              <%  } %>
            />
           <label for="cc">직원</label>
           <input type="radio" name="grade" id= "dd" value="D"
              <%  if(grade.equals("D"))  { %>
                     checked                 
              <%  } %>
            />
           <label for="dd">손님</label>
           </td>
          </tr>
          <tr>
           <th>거주도시코드</th>
           <td>
            <select name="city">
             <option value="01">서울</option>
             <option value="02">부산</option>
             <option value="03">대구</option>
             <option value="04">인천</option>
             <option value="05">대전</option>
             <option value="06">광주</option>
             <option value="41">울릉</option>
             <option value="07">제주</option>
           </select>
           </td>
          </tr>

        </tbody>
      </table>
      
      <div class="btn_group" style="text-align:center">
         <button type="submit">등록</button>
         <button type="button" onclick="history.back()">조회</button>
      </div>
      
    </form>    
   
  </div>
 </div>
 
 <%@ include file="footer.jsp" %>    
</body>
</html>















