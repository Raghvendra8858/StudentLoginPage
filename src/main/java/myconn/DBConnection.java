package myconn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	private static Connection conn = null;
	public static Connection getConnection() {
		System.out.println("Get Connection Method ...");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
			
		} catch (ClassNotFoundException e) {
			 e.printStackTrace();
		}
		 catch (SQLException e) {
			 e.printStackTrace();
		}
		
		return conn;
	}
	public static void main(String[] args) {
		Connection conn =DBConnection.getConnection();
		System.out.println("Main in DBConnection "+conn);
		
	}

}