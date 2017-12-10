package post;

import java.sql.*;

public class postDAO {
	private Connection conn = null;
	private ResultSet rs = null;
	
	public postDAO() {
		try {
			String jdbcDriver = "jdbc:mysql://117.17.198.33:3360/wsp2017";
			String dbUser = "khk";
			String dbPass = "khk1!";
			String driver = "com.mysql.jdbc.Driver";
			Class.forName(driver);
			
			conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//���� �����ð� �޾ƿ���
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			private PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "";
		
	}
	
	//�Խñ� ��ȣ
	public int getNext() {
		String SQL = "SELECT postID FROM POST ORDER BY postID desc";
		try {
			private PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // ù ��° �Խù��� ���
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB����
	}
	
	public int write(String postTitle, String userID, String postContent) {
		String SQL = "INSERT INTO POST VALUES (?, ?, ?, ?, ?, ?)";
		
		try {
			private PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, postTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, postContent);
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}



	

