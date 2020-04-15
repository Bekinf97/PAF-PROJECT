package util;



import java.sql.Connection;
import java.sql.SQLException;

public class DBconnect {

	

	public static Connection connect() {
		// TODO Auto-generated method stub
		
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/gaming","root","");
			System.out.println("DBconnected");
			
			
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		} catch (ClassNotFoundException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
		return con;

}
}
