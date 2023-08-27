package notice;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import free.DbCon;
import free.FreeDataBean;




public class BoardDBBean {
	
	private static BoardDBBean instance = new BoardDBBean();
	
	public static BoardDBBean getInstance()
	{
		return instance;
	}
	private BoardDBBean() {}
		
		
		//board 테이블에 글을 추가 (insert 문)
		public void insertArticle(NoticeDataBean article) throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "";
			
			try {
				conn = DbCon.getConnection();
				
				sql = "insert into NOTICE(noticeTitle,noticeContent, noticeTime)  values(?,?,?)";
//				sql += "content,ip) values(?,?,?,?,?,?,?)"; //+= 이건 계속 이어서 작성하겠다는 소리 
				
				pstmt = conn.prepareStatement(sql);
				//pstmt.setString(1, article.getNoticenumber());
				pstmt.setString(1, article.getNoticeContent());
				pstmt.setString(2, article.getNoticeTitle());
				
//				pstmt.setString(4, article.getPasswd());
				pstmt.setTimestamp(3, article.getNoticeTime());
//				pstmt.setString(6, article.getContent());
//				pstmt.setString(7, article.getIp());
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
				
				pstmt = conn.prepareStatement("select count(*) from NOTICE");
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
		
		
		public List<NoticeDataBean> getArticles(int start, int end) throws Exception{
		      Connection conn = null;
		      PreparedStatement pstmt = null;
		      ResultSet rs = null;
		      List<NoticeDataBean> articleList=null;
		      
		      try {
		         conn = DbCon.getConnection();
		         
		         pstmt = conn.prepareStatement("select * from NOTICE order by noticeNumber desc limit ?, ?"); //내림차순
		         pstmt.setInt(1, start-1); // -1 해줘야함 왜냐면 인덱스 번호가 1부터 시작함 그래서 빼기 1 해야함
	             pstmt.setInt(2, end);
		         rs= pstmt.executeQuery();   
		         
		         if(rs.next()) {
		            articleList = new ArrayList<NoticeDataBean>(end);
		            do {
		               NoticeDataBean article= new NoticeDataBean();
		               article.setNoticeNumber(rs.getInt("noticenumber"));
		               article.setNoticeTitle(rs.getString("noticeTitle"));
		               article.setNoticeContent(rs.getString("noticeContent"));
		               article.setNoticeTime(rs.getTimestamp("noticeTime"));
		               
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
		 public NoticeDataBean getArticle(int num) throws Exception {
	           Connection conn = null;
	           PreparedStatement pstmt = null;
	           ResultSet rs = null;
	           NoticeDataBean article = null;
	           try {
	              conn = DbCon.getConnection();
	              
//	              pstmt = conn.prepareStatement("update NOTICE set readcount=readcount+1 where noticeNumber = ?");
//	              pstmt.setInt(1, num);
//	              pstmt.executeUpdate();
//	              
	              pstmt = conn.prepareStatement("select * from NOTICE where noticeNumber = ?");
	              pstmt.setInt(1, num);
	              rs = pstmt.executeQuery();
	              
	              if (rs.next()) {
	                 article = new NoticeDataBean();
	                 article.setNoticeNumber(rs.getInt("noticeNumber"));
	                 article.setNoticeTitle(rs.getString("noticeTitle"));
	                 article.setNoticeContent(rs.getString("noticeContent"));
	                 article.setNoticeTime(rs.getTimestamp("noticeTime"));

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
		}

