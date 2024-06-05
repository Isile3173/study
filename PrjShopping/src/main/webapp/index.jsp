<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/common.css" />

</head>
<body>
 <%@ include file="header.jsp" %>    
 
 <div class="container">
  <div class="content">
    
    <!-- <form action="action.jsp" method="POST"> -->
    <form action="/PrjShopping/insert" method="POST">
      <h2>홈쇼핑 회원등록 화면</h2> 
      <table>
        <colgroup>
          <col width="40%">
          <col width="60%">
        </colgroup>
        <tbody> 
          <tr>
           <th>회원번호(자동발생)</th>
           <td><input type="text" value="" /></td>
          </tr>
          <tr>
           <th>회원이름</th>
           <td><input type="text" name="custname" value="aaa" /></td>
          </tr>
          <tr>
           <th>전화번호</th>
           <td><input type="text" name="phone" value="010-7234-1234" /></td>
          </tr>
          <tr>
           <th>주소</th>
           <td><input type="text" name="address" value="부산 진구 부전동" /></td>
          </tr>
          <tr>
           <th>가입일</th>
           <td><input type="text" name="joindate" value="2023-08-25" /></td>
          </tr>
          <tr>
           <th>고객등급</th>
           <td>
           <input type="radio" name="grade" id="aa" value="A" />
           <label for="aa">VIP</label>
           <input type="radio" name="grade" id="bb" value="B" />
           <label for="bb">일반</label>
           <input type="radio" name="grade" id="cc" value="C" />
           <label for="cc">직원</label>
           <input type="radio" name="grade" id= "dd" value="D"  checked/>
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















