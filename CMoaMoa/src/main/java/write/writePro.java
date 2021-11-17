package write;

import java.sql.*;
import java.time.LocalDateTime;

import javax.naming.*;
import javax.sql.DataSource;

public class writePro {
	private static writePro instance = new writePro();
	public static writePro getInstance() {
		return instance;
	}	
	private writePro() {}
	
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/moa");
		return ds.getConnection();
	}
	
	public static void resourceClose(ResultSet rset, Statement stmt, Connection conn) {
		try {
			if(rset != null) rset.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		} catch (SQLException sqlerr) {
			System.out.println("데이터베이스 연결 오류!" + sqlerr.getMessage());
		}
	}
	
	public static void resourceClose(Statement stmt, Connection conn) {
		try {
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		} catch (SQLException sqlerr) {
			System.out.println("데이터베이스 종료 오류!" + sqlerr.getMessage());
		}
	}
	

	public void insertFreeboard(writeBean write) {
		Connection conn = null;
		PreparedStatement ps = null;	
		String sql = null;
		
		try {
			sql = "insert into freeboard values(?,?,?,?,?,?,?)";
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, write.getBoard_no());
			ps.setString(2, write.getTitle());
			ps.setString(3, write.getName());
			ps.setString(4, write.getMajor());
			ps.setInt(5, write.getViews());
			ps.setString(6, LocalDateTime.now().toString());
			ps.setString(7, write.getContent());
			ps.executeUpdate();
		}catch(Exception e){	
			e.printStackTrace();
		}finally {
			resourceClose(ps, conn);
		}
	}
	
	public void listFreeboard(writeBean write) {
		Connection conn = null;
		PreparedStatement ps = null;	
		String sql = null;
		try {
			sql = "select * from freeboard where board_no = ?;";
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, write.getBoard_no());
			ps.setString(2, write.getTitle());
			ps.setString(3, write.getName());
			ps.setString(4, write.getMajor());
			ps.setInt(5, write.getViews());
			ps.setString(6, LocalDateTime.now().toString());
			ps.setString(7, write.getContent());
			ps.executeUpdate();
		}catch(Exception e){	
			e.printStackTrace();
		}finally {
			resourceClose(ps, conn);
		}
	
	}
}
