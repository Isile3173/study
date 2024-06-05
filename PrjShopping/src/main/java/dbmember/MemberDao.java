package dbmember;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MemberDao {
	
	private Connection conn;
	public MemberDao() {	
		conn = DBConn.getInstance();  // db open
	}
	
	// db 추가
	public void addMember(String custname, String phone, String address,
			String joindate, String grade, String city)
				throws SQLException {
				
		String  sql  = "INSERT INTO MEMBER_TBL ";
		sql  = "INSERT INTO member_tbl ( ";
		sql += " custno,             custname, phone, address, ";
	    sql += " joindate,           grade,    city ";
		sql += " ) VALUES ( ";
		sql += " SEQ_CUSTNO.NEXTVAL, ?,        ?,     ?,";
		sql += " sysdate,            ?,        ? )";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		// 파라미터 (?) 설정
		pstmt.setString(1, custname); // 1 첫번째 ? custname
		pstmt.setString(2, phone);    
		pstmt.setString(3, address); 
		pstmt.setString(4, grade);
		pstmt.setString(5, city);
		
		// 저장실행
		pstmt.executeQuery();
		
		pstmt.close();
		
	}

	// db 삭제
	// custno 로 삭제
	public void deleteMember(String custno) {
		
		String             sql   = "";
		PreparedStatement  pstmt = null;
		try {			
			sql    +=  "DELETE  FROM MEMBER_TBL ";
			sql    +=  " WHERE  CUSTNO = ? ";
			
			pstmt = conn.prepareStatement(sql);			
			pstmt.setInt(1,  Integer.parseInt(custno) );
			
			pstmt.executeQuery();			
			
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			try {
				if( pstmt != null ) pstmt.close();
			} catch (SQLException e) {
			}
		}
		
	}

	// db 수정
	public void updateMember(String custno, String phone, 
			String address, String grade, String city) {
		
		String            sql   =  "";
		PreparedStatement pstmt = null;		
		try {			
			sql    = "UPDATE MEMBER_TBL SET ";
			sql   += "  PHONE        = ? ";
			sql   += " ,ADDRESS      = ? ";
			sql   += " ,GRADE        = ? ";
			sql   += " ,CITY         = ? ";
			sql   += " WHERE  CUSTNO = ? ";
			pstmt  = conn.prepareStatement(sql);
			pstmt.setString(1, phone);
			pstmt.setString(2, address);
			pstmt.setString(3, grade);
			pstmt.setString(4, city);
			pstmt.setInt(5, Integer.parseInt( custno ) );
			
			pstmt.executeQuery();
			
			
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {	    
			try {
				if(conn != null) pstmt.close();
			} catch (SQLException e) {			
			}
		}
	}
	
		 
}










