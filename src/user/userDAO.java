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
		
		public int join(user user) {
			String SQL = "INSERT INTO user VALUES (0, ?, ?, ?, ?, ?, 'test')";
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, user.getUserEmail());
				pstmt.setString(2, user.getUserPassword());
				pstmt.setString(3, user.getUserName());
				pstmt.setString(4, user.getUserFavorite());
				pstmt.setString(5, user.getUserJob());
				return pstmt.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1; //DB error
		}
		public user getAllUserInfo(String userID){
			String SQL = "SELECT * FROM user WHERE login_id = ?";
			user user1 = new user();
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1,  userID);		
				rs = pstmt.executeQuery();
				if(rs.next()) {

					user1.setUserEmail((rs.getString(2)));
					user1.setUserName(rs.getString(4));
					user1.setUserFavorite(rs.getString(5));
					user1.setUserJob(rs.getString(6));
					user1.setUserProfile(rs.getString(7));
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			return user1; 
		}
}
