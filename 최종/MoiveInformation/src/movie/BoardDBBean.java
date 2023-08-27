package movie;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import free.FreeDataBean;
import movie.DbCon;
import movie.MovieDataBean;




public class BoardDBBean {
	
	private static BoardDBBean instance = new BoardDBBean();
	
	public static BoardDBBean getInstance()
	{
		return instance;
	}
	private BoardDBBean() {}
		
		
		//board 테이블에 글을 추가 (insert 문)
//		public void insertArticle(MovieDataBean article) throws Exception {
//			Connection conn = null;
//			PreparedStatement pstmt = null;
//			ResultSet rs = null;
//			
//			String sql = "";
//			
//			try {
//				conn = DbCon.getConnection();
//				
//				sql = "insert into MOVIE(movieName,movieStory,movieActor,movieDiretor,movieOpen,movieGenre,moviePhoto)  values(?,?,?,?,?,?,?)";
////				sql += "content,ip) values(?,?,?,?,?,?,?)"; //+= 이건 계속 이어서 작성하겠다는 소리 
//				
//				pstmt = conn.prepareStatement(sql);
//				pstmt.setString(1, article.getMovieName());
//				pstmt.setString(2, article.getMovieStroy());
//				pstmt.setString(3, article.getMovieActor());
//				pstmt.setString(4, article.getMovieDiretor());
//				pstmt.setString(5, article.getMovieOpen());
//				pstmt.setString(6, article.getMovieGener());
//				pstmt.setString(7, article.getMoviePhoto());
////				
//				pstmt.executeUpdate();
//				
//			}catch(Exception ex) {
//				ex.printStackTrace();
//			}finally {
//				if (rs !=null) try { rs.close(); } catch(SQLException ex) {}
//				if (pstmt !=null) try { pstmt.close(); } catch(SQLException ex) {}
//				if (conn != null) try {conn.close(); } catch(SQLException ex) {}
//			}
//		}
		public int getArticleCount() throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			int x=0;
			
			try {
				conn = DbCon.getConnection();
				
				pstmt = conn.prepareStatement("select count(*) from MOVIE");
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
		
		
		public List<MovieDataBean> getArticles() throws Exception{
		      Connection conn = null;
		      PreparedStatement pstmt = null;
		      ResultSet rs = null;
		      List<MovieDataBean> articleList=null;
		  //    int i=0;
		      
		      try {
		         conn = DbCon.getConnection();
		         String sql = "select * from MOVIE";
		            
		            pstmt = conn.prepareStatement(sql);
		        	rs = pstmt.executeQuery();
//		         pstmt = conn.prepareStatement("select * from MOVIE order by movieNumber desc"); //내림차순
//		         rs= pstmt.executeQuery();   
		         
		         if(rs.next()) {
		            articleList = new ArrayList<MovieDataBean>();
		            do {
		               MovieDataBean article= new MovieDataBean();
		               article.setMovieNumber(rs.getInt("movieNumber"));
		               article.setMovieTitle(rs.getString("movieTitle"));
		               article.setMovieActor1(rs.getString("movieActor1"));
		               article.setMovieActor2(rs.getString("movieActor2"));
		               article.setMovieActor3(rs.getString("movieActor3"));
		               article.setMovieActorPhoto1(rs.getString("movieActorPhoto1"));
		               article.setMovieActorPhoto2(rs.getString("movieActorPhoto2"));
		               article.setMovieActorPhoto3(rs.getString("movieActorPhoto3"));
		               article.setMovieScore(rs.getString("movieScore"));
		               article.setMoviePoster(rs.getString("moviePoster"));
		               article.setMovieStory(rs.getString("movieStory"));
		               article.setMovieOpen(rs.getString("movieOpen"));
		               article.setMovieDirector(rs.getString("movieDirector"));
		               article.setMovieAge(rs.getString("movieAge"));
		               
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
		
		
		
		public MovieDataBean getArticle(int num) throws Exception {
	           Connection conn = null;
	           PreparedStatement pstmt = null;
	           ResultSet rs = null;
	           MovieDataBean article = null;
	           try {
	              conn = DbCon.getConnection();
//	              
//	              pstmt = conn.prepareStatement("update MOVIE set readcount=readcount+1 where movieNumber = ?");
//	              pstmt.setInt(1, num);
//	              pstmt.executeUpdate();
	              
	              pstmt = conn.prepareStatement("select * from MOVIE where movieNumber = ?");
	              pstmt.setInt(1, num);
	              rs = pstmt.executeQuery();
	              
	              if (rs.next()) {
	            	   article = new MovieDataBean();
	                   article.setMovieNumber(rs.getInt("movieNumber"));
		               article.setMovieTitle(rs.getString("movieTitle"));
		               article.setMovieActor1(rs.getString("movieActor1"));
		               article.setMovieActor2(rs.getString("movieActor2"));
		               article.setMovieActor3(rs.getString("movieActor3"));
		               article.setMovieActorPhoto1(rs.getString("movieActorPhoto1"));
		               article.setMovieActorPhoto2(rs.getString("movieActorPhoto2"));
		               article.setMovieActorPhoto3(rs.getString("movieActorPhoto3"));
		               article.setMovieScore(rs.getString("movieScore"));
		               article.setMoviePoster(rs.getString("moviePoster"));
		               article.setMovieStory(rs.getString("movieStory"));
		               article.setMovieOpen(rs.getString("movieOpen"));
		               article.setMovieDirector(rs.getString("movieDirector"));
		               article.setMovieAge(rs.getString("movieAge"));
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


