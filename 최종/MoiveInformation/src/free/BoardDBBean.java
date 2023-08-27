package free;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class BoardDBBean {
	
	private static BoardDBBean instance = new BoardDBBean();
	
	public static BoardDBBean getInstance()
	{
		return instance;
	}
	private BoardDBBean() {}
		
		
		//board 테이블에 글을 추가 (insert 문)
		public void insertArticle(FreeDataBean article) throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "";
			
			try {
				conn = DbCon.getConnection();
				
				sql = "insert into FREE(freeTitle,freeContent,freeTime,writer,passwd)  values(?,?,?,?,?)";
//				sql += "content,ip) values(?,?,?,?,?,?,?)"; //+= 이건 계속 이어서 작성하겠다는 소리 
				
				pstmt = conn.prepareStatement(sql);
				//pstmt.setString(1, article.getNoticenumber());
				pstmt.setString(1, article.getFreeTitle());
				pstmt.setString(2, article.getFreeContent());
				//pstmt.setString(3, article.getId());
//				pstmt.setString(4, article.getPasswd());
				pstmt.setTimestamp(3, article.getFreeTime());
				pstmt.setString(4, article.getWriter());
				pstmt.setString(5, article.getPasswd());
//				
				pstmt.executeUpdate();
				
			}catch(Exception ex) {
				ex.printStackTrace();
			}finally {
				if (rs !=null) try { rs.close(); } catch(SQLException ex) {}
				if (pstmt !=null) try { pstmt.close(); } catch(SQLException ex) {}
				if (conn != null) try {conn.close(); } catch(SQLException ex) {}
			}
		}
		public int getArticleCount() throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			int x=0;
			
			try {
				conn = DbCon.getConnection();
				
				pstmt = conn.prepareStatement("select count(*) from FREE");
				rs = pstmt.executeQuery(); 
				if(rs.next() ) {
					x= rs.getInt(1);
				}
			}catch(Exception ex) {
				ex.printStackTrace();
		}finally {
			if (rs !=null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt !=null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try {conn.close(); } catch(SQLException ex) {}
		}
			return x;
		}
		
		public List<FreeDataBean> getArticles(int start, int end) throws Exception{
		      Connection conn = null;
		      PreparedStatement pstmt = null;
		      ResultSet rs = null;
		      List<FreeDataBean> articleList=null;
		      
		      try {
		         conn = DbCon.getConnection();
		         
		         pstmt = conn.prepareStatement("select * from FREE order by freeNumber desc limit ?, ?"); //내림차순
		         pstmt.setInt(1, start-1); // -1 해줘야함 왜냐면 인덱스 번호가 1부터 시작함 그래서 빼기 1 해야함
	             pstmt.setInt(2, end);
		         rs= pstmt.executeQuery();   
		         
		         if(rs.next()) {
		            articleList = new ArrayList<FreeDataBean>(end);
		            do {
		               FreeDataBean article= new FreeDataBean();
		               article.setFreeNumber(rs.getInt("freenumber"));
		               article.setFreeTitle(rs.getString("freeTitle"));
		               article.setFreeContent(rs.getString("freeContent"));
		               article.setFreeTime(rs.getTimestamp("freeTime"));
		               article.setWriter(rs.getString("writer"));
		               article.setReadcount(rs.getInt("readcount"));
		               
		               
		               articleList.add(article);
		            }while(rs.next());
		         }
		         }catch(Exception ex) {
		            ex.printStackTrace();
		         }finally {
		            if(rs != null) try {rs.close();}catch(SQLException ex) {}
		            if(pstmt != null) try {pstmt.close();}catch(SQLException ex) {}
		            if(conn != null) try {conn.close();}catch(SQLException ex) {}
		         }
		      return articleList;
		   }
		 //글의 내용 보기(1개의 글)(select문) <- content.jsp에서 사용
        public FreeDataBean getArticle(int num) throws Exception {
           Connection conn = null;
           PreparedStatement pstmt = null;
           ResultSet rs = null;
           FreeDataBean article = null;
           try {
              conn = DbCon.getConnection();
              
              pstmt = conn.prepareStatement("update FREE set readcount=readcount+1 where freeNumber = ?");
              pstmt.setInt(1, num);
              pstmt.executeUpdate();
              
              pstmt = conn.prepareStatement("select * from FREE where freeNumber = ?");
              pstmt.setInt(1, num);
              rs = pstmt.executeQuery();
              
              if (rs.next()) {
                 article = new FreeDataBean();
                 article.setFreeNumber(rs.getInt("freeNumber"));
                 article.setWriter(rs.getString("writer"));
                 article.setFreeContent(rs.getString("freeContent"));
                 article.setFreeTime(rs.getTimestamp("freeTime"));
                 article.setFreeTitle(rs.getString("freeTitle"));
//                 article.setReg_date(rs.getTimestamp("reg_date"));
                 article.setReadcount(rs.getInt("readcount"));
//                 article.setRef(rs.getInt("ref"));
//                 article.setRe_step(rs.getInt("re_step"));
//                 article.setRe_level(rs.getInt("re_level"));
//                 article.setContent(rs.getString("content"));
//                 article.setIp(rs.getString("ip"));
              }
           }catch(Exception ex) {
               ex.printStackTrace();
              }finally {
                 if(rs != null) try {rs.close();}catch(SQLException ex) {}
                 if(pstmt != null) try {pstmt.close();}catch(SQLException ex) {}
                 if(conn != null) try {conn.close();}catch(SQLException ex) {}
              }
           return article;
        }
        
        //글수정 폼에서 사용할 글의 내용(1개의 글)(select문)<- updateForm.jsp에서 사용
        public FreeDataBean updateGetArticle(int num) throws Exception {
            Connection conn = null;
              PreparedStatement pstmt = null;
              ResultSet rs = null;
              FreeDataBean article = null;
              try {
                 conn = DbCon.getConnection();
                 
                 pstmt = conn.prepareStatement("select * from FREE where freeNumber = ?");
                 pstmt.setInt(1,num);
                 rs = pstmt.executeQuery();
                 
                 if (rs.next()) {
                	 article = new FreeDataBean();
                     article.setFreeNumber(rs.getInt("freeNumber"));
                     article.setWriter(rs.getString("writer"));
                     article.setFreeContent(rs.getString("freeContent"));
                     article.setFreeTime(rs.getTimestamp("freeTime"));
                     article.setFreeTitle(rs.getString("freeTitle"));                 
                    

                    }
                 }catch(Exception ex) {
                    ex.printStackTrace();
                 }finally {
                    if (rs != null) try {rs.close(); } catch(SQLException ex) {}
                    if (pstmt != null) try {pstmt.close(); } catch(SQLException ex) {}
                    if (rs != null) try {conn.close(); } catch(SQLException ex) {}
                 }      
                  return article;
              }      
              //글 수정 처리에서 사용(update문) <- updatePro.jsp에서 사용
              public int updateArticle(FreeDataBean article) throws Exception {
                 Connection conn = null;
                 PreparedStatement pstmt = null;
                 ResultSet rs = null;
                 
                 String dbpasswd = "";
                 String sql = "";
                 int x = -1;
                 try {
                    conn = DbCon.getConnection();
                    
                    pstmt = conn.prepareStatement("select passwd from FREE where freeNumber = ?");
                    pstmt.setInt(1,  article.getFreeNumber());
                    rs = pstmt.executeQuery();
                    
                    if(rs.next()) {
                       dbpasswd = rs.getString("passwd");
                       if(dbpasswd.equals(article.getPasswd())) {
                          sql = "update FREE set writer=?,freeContent=?,passwd=?,freeTitle=? where freeNumber=?";
                       
                          pstmt = conn.prepareStatement(sql);
                          pstmt.setString(1,  article.getWriter());
                          pstmt.setString(2,  article.getFreeContent());
                          //pstmt.setString(3,  article.getSubject());
                          pstmt.setString(3,  article.getPasswd());
                          pstmt.setString(4,  article.getFreeTitle());
                          pstmt.setInt(5,  article.getFreeNumber());
                          pstmt.executeUpdate();
                          x = 1;
                       }else {
                          x = 0;
                       }
                    }
                 } catch(Exception ex) {
                    ex.printStackTrace();
                 }finally {
                    if (rs != null) try {rs.close(); } catch(SQLException ex) {}
                    if (pstmt != null) try {pstmt.close(); } catch(SQLException ex) {}
                    if (rs != null) try {conn.close(); } catch(SQLException ex) {}
                 }
                 return x;
              }
              
              //글 삭제 처리에서 사용(delete문) <- deletePro.jsp에서 사용
              public int deleteArticle(int num, String passwd) throws Exception {
                 Connection conn = null;
                 PreparedStatement pstmt = null;
                 ResultSet rs = null;
                 String dbpasswd="";
                 int x = -1;
                 
                 try {
                    conn = DbCon.getConnection();
                    
                    pstmt = conn.prepareStatement("select passwd from FREE where freeNumber = ?");
                    pstmt.setInt(1, num);
                    rs = pstmt.executeQuery();
                    
                    if(rs.next()) {
                       dbpasswd = rs.getString("passwd");
                       if(dbpasswd.contentEquals(passwd)) {
                          pstmt = conn.prepareStatement("delete from FREE where freeNumber =?");
                          pstmt.setInt(1, num);
                          pstmt.executeUpdate();
                          x = 1; //글 삭제 성공
                       }else
                          x = 0; //비밀번호 틀림
                    }
                 }catch(Exception ex) {
                    ex.printStackTrace();
                 } finally {         if (rs != null) try {rs.close(); } catch(SQLException ex) {}
                 if (pstmt != null) try {pstmt.close(); } catch(SQLException ex) {}
                 if (rs != null) try {conn.close(); } catch(SQLException ex) {}
              }
              return x;
           }
}

