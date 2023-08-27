package free;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//import java.sql.*;

public class DbCon {

	final static String jdbcUrl="jdbc:mysql://localhost:3306/WIM?serverTimezone=Asia/Seoul";
	final static String dbId="purple";
	final static String dbPass="dlwlgns9462";
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		}catch(ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	}
}
