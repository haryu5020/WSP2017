package post;

import java.sql.*;
import java.util.ArrayList;

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
	
	//현재 서버시간 받아오기
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "";
		
	}
	
	//게시글 번호
	public int getNext() {
		String SQL = "SELECT postID FROM POST ORDER BY postID desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫 번째 게시물인 경우
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB오류
	}
	
	public int write(String postTitle, String userID, String postContent) {
		String SQL = "INSERT INTO POST VALUES (?, ?, ?, ?, ?, ?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
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
	
/* 게시글 리스트 출력 함수 시작*/	
	
	//게시글 리스트
	public ArrayList<postManager> getList(int pageNumber){
		String SQL = "SELECT * FROM POST WHERE postID < ? AND postAvailable = 1 ORDER BY postID DESC LIMIT 10";
		ArrayList<postManager> list = new ArrayList<postManager>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				postManager post = new postManager();
				post.setPostID((rs.getInt(1)));
				post.setPostTitle(rs.getString(2));
				post.setUserID(rs.getString(3));
				post.setPostDate(rs.getString(4));
				post.setPostContent(rs.getString(5));
				post.setPostAvailable(rs.getInt(6));
				list.add(post);
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list; //DB오류
	}
	
	//페이지 존재여부 
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM POST WHERE postID < ? AND postAvailable = 1 ORDER BY postID DESC LIMIT 10";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;			
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false; //DB오류
	}
	
	/* 게시글 리스트 출력 함수 끝*/	
	
	/* 게시글 내용 출력 */
	public postManager getPost(int postID) {
		String SQL = "SELECT * FROM POST WHERE postID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  postID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				postManager post = new postManager();
				post.setPostID((rs.getInt(1)));
				post.setPostTitle(rs.getString(2));
				post.setUserID(rs.getString(3));
				post.setPostDate(rs.getString(4));
				post.setPostContent(rs.getString(5));
				post.setPostAvailable(rs.getInt(6));
				return post;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null; //DB오류
	}
	
	/* 게시글 내용 수정 */
	public int update(int postID, String postTitle, String postContent) {
		String SQL = "UPDATE POST SET postTitle =?, postContent = ? WHERE postID = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, postTitle);
			pstmt.setString(2, postContent);
			pstmt.setString(3, postID);
			
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	/* 게시글 내용 삭제 */
	public int delete(int postID) {
		String SQL = "UPDATE POST SET postAvailable = 0 WHERE postID = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, postID);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}



	

