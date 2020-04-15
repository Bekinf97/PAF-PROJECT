package PAF.service;

	import com.paf.model.User1;
	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;


	import util.DBconnect;
	 
	public class UserDAO1 {

		
		public static int register(User1 c ,String sql) {				//UserRegistering
			int x=0;
				
				Connection con = DBconnect.connect();
				
				try {
					PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
					ps.setString(1, c.getfirst());
					ps.setString(2, c.getlast());
					ps.setString(3, c.getemail());
					ps.setString(4, c.getage());
					ps.setString(5, c.getmobile());
					ps.setString(6, c.getpassword());

					x = ps.executeUpdate();
					
				}catch(Exception e) {
					e.printStackTrace();
					
				}
				
				return x;
	}
		
		
		

	public static ResultSet login(User1 c ,String sql) {		//UserLogin
			
			ResultSet rs = null;
			Connection con = DBconnect.connect();
			
			try {
				PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
				ps.setString(1, c.getemail());
				ps.setString(2, c.getpassword());

				rs = ps.executeQuery();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return rs;
			
		}



			public static int update(User1 c, String sql) {		//UserUpdating
			// TODO Auto-generated method stub
			
			int j=0;
					Connection con = DBconnect.connect();	
				
			try {
				PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
						
				
				
				ps.setString(1, c.getfirst());
				ps.setString(2, c.getlast());
				ps.setString(3, c.getemail());
				ps.setString(4, c.getage());
				ps.setString(5, c.getmobile());
				ps.setString(6, c.getpassword());
				
				j = ps.executeUpdate();
						
					}catch(Exception e) {
						e.printStackTrace();
					}
					
					return j;
		}	
					public static int update_value(User1 c, String sql2) {
						// TODO Auto-generated method stub
						
						int i=0;
						
						Connection con = DBconnect.connect();
					
					try {
						PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql2);
						ps.setString(1, c.getfirst());
						ps.setString(2, c.getlast());
						ps.setString(3, c.getemail());
						ps.setString(4, c.getage());
						ps.setString(5, c.getmobile());
						ps.setString(6, c.getpassword());
						


						ps.executeUpdate();
						
					}catch(Exception e) {
						e.printStackTrace();
						
					}
					return i;
					
	}  
		

		
		public static int delete (User1 c,String sql) { //UserDeleting Account
			
			int x = 0;
			Connection con = DBconnect.connect();
			
			try {
				
				PreparedStatement ps =(PreparedStatement) con.prepareStatement(sql);
					ps.setString(1, c.getemail());
					x = ps.executeUpdate();
					
			}catch(Exception e) {
				
				e.printStackTrace();    
			}
			return x;
			
		}
	
	

}
