package category;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import post.postManager;

public class categoryDAO {
	private Connection conn = null;
	private ResultSet rs = null;
	
	public categoryDAO() {
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
	public ArrayList<category> getCategoryName() {
		String SQL = "SELECT * FROM category";
		ArrayList<category> list = new ArrayList<category>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				category cg = new category();
				cg.setCategoryID(rs.getInt(1));
				cg.setCategoryName(rs.getString(2));
				list.add(cg);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
