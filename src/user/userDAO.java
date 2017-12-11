package user;

import java.sql.*;

public class userDAO {
		
		private Connection conn=null;
		private PreparedStatement pstmt=null;
		private ResultSet rs=null;
		
		public userDAO() {
			try {
				String jdbcDriver = "jdbc:mysql://117.17.198.33:3360/wsp2017";
	            String dbUser = "khk";
	    	    String dbPass = "khk1!";
	    	    String driver = "com.mysql.jdbc.Driver";
	    		Class.forName(driver);
	    	    
	    	    
	            conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		public int login(String userEmail, String userPw) {
			String SQL = "SELECT passwd FROM user WHERE login_id = ?";
			try {
				pstmt = conn.prepareStatement(SQL); 
				pstmt.setString(1, userEmail);
				rs = pstmt. executeQuery();
				if(rs.next()) {
					if(rs.getString(1).equals(userPw)) {
						return 1; // success
					}else
						return 0; // fail
				}
				return -1; // no ID
			} catch (Exception e) {
				e.printStackTrace();
			}
			return -2; //DB error
		}
}
