package dbmember;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// singleton 패턴 기법
public class DBConn {
	private  static String  driver = "oracle.jdbc.OracleDriver";
	private  static String  dburl  = "jdbc:oracle:thin:@localhost:1521:xe";
	private  static String  dbuid  = "jsp";
	private  static String  dbpwd  = "1234";
	
	private  static Connection  conn = null;
	
	private DBConn() { // 생성자 private
	}
	
	public static Connection getInstance() {		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(dburl, dbuid, dbpwd);
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		} catch (SQLException e) {			
			e.printStackTrace();
		}		
		return conn;
	}
	
	public  void close() {
		try {
			if( conn != null )	
				conn.close();
		} catch (SQLException e) {				
			e.printStackTrace();
		}
	}
	
	
}









