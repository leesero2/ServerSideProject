package User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MembersDBBean {

	private static MembersDBBean instance = new MembersDBBean();
	
	public static MembersDBBean getInstance() {
		return instance;
	}
	
	private MembersDBBean() {} // 생성자를 프라이빗으로 지정하고 객체생성을 스테틱으로 지정해서 하는게 싱글턴 패턴이라고 함 
							// 객체를 new 로 만들면 복사본이 생김 그걸 싱글턴 패턴으로 쓰면 객체 하나를 만들어서 여러면을 같이 쓰겟다라는거임
	
	
	public int userCheck(String id, String pw) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd = "";
		int x = -1; 
		
		try {
			conn = DbCon.getConnection(); //데이터베이스 연동 
			
			pstmt = conn.prepareStatement("select pw from Login where id = ? ");
			pstmt.setString(1, id);
//			
			
			
			rs= pstmt.executeQuery(); 
			
		if(rs.next()) { // 아이디가존재한다면 여기로 넘어옴 
			dbpasswd = rs.getString("pw"); // 비밀번호가 맞다면 
			if(dbpasswd.equals(pw))
				x = 1; // 인증성공 
			else
				x= 0;		//비번 틀림 
		}else
			x = -1; // 해당 아이디 없음 
		
		}catch (Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
		}finally {
			if (rs !=null)
				try { rs.close(); } catch(SQLException ex) {} //close를 이용해서 서버 과부화를 막아줘야함 
			if(pstmt != null)
				try { pstmt.close(); } catch(SQLException ex) {}
			if(conn != null)
				try { conn.close(); } catch(SQLException ex) {}
		}
		return x;
	}
	public void insertMember(MembersDataBean Login) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DbCon.getConnection();
			pstmt = conn.prepareStatement("insert into Login values (null,?,?,?,?,?)");
			pstmt.setString(1, Login.getLoginNumber());
			pstmt.setString(1, Login.getId());
			pstmt.setString(2, Login.getPw());
			pstmt.setString(3, Login.getPhone());
			pstmt.setString(4, Login.getName());
			pstmt.setString(5, Login.getEmail());
			
			pstmt.executeUpdate();
		//get 파라미터로 안하고 데이터빈을 이용해서 사용한거임 (위에코드)
		} catch(Exception e){
			e.printStackTrace();
		}finally {
			if (pstmt !=null)
				try { pstmt.close(); } catch(SQLException ex) {} //close를 이용해서 서버 과부화를 막아줘야함 
			if(pstmt != null)
				try { conn.close(); } catch(SQLException ex) {}
		
			
		}
	}
}
	

