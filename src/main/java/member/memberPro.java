package member;

import java.sql.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class memberPro {
	private static memberPro instance = new memberPro();
	public static memberPro getInstance() {
		return instance;
	}	
	private memberPro() {}
	
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
	
	
	public void insertMember(memberBean member) {
		Connection conn = null;
		PreparedStatement ps = null;	
		String sql = null;
		try {
			sql = "insert into member values(?,?,?,?,?,?)";
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, member.getId());
			ps.setString(2, member.getPasswd());
			ps.setString(3, member.getName());
			ps.setString(4, member.getEmail());
			ps.setInt(5, member.getYear());
			ps.setString(6, member.getMajor());
			ps.executeUpdate();
		}catch(Exception e){	
			e.printStackTrace();
		}finally {
			resourceClose(ps, conn);
		}
	}
	
	public int userCheck(int id, String passwd) {
		int x = -1;
		Connection conn = null;
		PreparedStatement ps = null;	
		ResultSet rs = null;
		String sql = null;
		try {
			sql = "select passwd from member where id = ?";
			conn = getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				if(rs.getString("passwd").equals(passwd))
					x = 1; // 인증 성공
				else
					x = 0; // 비밀번호 오류
			}
			else
				x = -1; // 해당하는 아이디가 없음
			
		}catch(Exception e){	
			e.printStackTrace();
		}finally {
			resourceClose(rs, ps, conn);
		}
		return x;
	}
//	
//	public CustomerBean getMember(String id) {
//		CustomerBean member = null;
//		Connection conn = null;
//		PreparedStatement ps = null;	
//		ResultSet rs = null;
//		String sql = null;
//		try {
//			conn = getConnection();
//			sql = "select * from member where id = ?";
//			ps = conn.prepareStatement(sql);
//			ps.setString(1, id);
//			rs = ps.executeQuery();
//			if(rs.next()) {
//				member = new CustomerBean();
//				member.setId(rs.getString("id"));
//				member.setPasswd(rs.getString("passwd"));
//				member.setName(rs.getString("name"));
//				member.setReg_date(rs.getTimestamp("reg_date"));
//				member.setAddress(rs.getString("address"));
//				member.setTel(rs.getString("tel"));
//			}
//		}catch(Exception e){
//			e.printStackTrace();
//		}finally {
//			resourceClose(rs, ps, conn);
//		}
//		return member;
//	}
	
}
