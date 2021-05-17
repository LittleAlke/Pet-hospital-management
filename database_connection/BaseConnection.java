package datebase;

import java.sql.*;

/**
 * :
 * Alke
 * 2020-06-10 10:36
 */
public class BaseConnection {
    protected Connection conn = null;
    protected Statement stmt = null;
    protected ResultSet rs = null;
    protected PreparedStatement pstmt = null;
    protected String url = "jdbc:mysql://localhost:3306/lovepet?useUnicode=true&characterEncoding=gbk";

    public void connect(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url,"root","");
            stmt = conn.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void closeAll(){
        try {
            if (rs!=null){
                rs.close();
            }
            if (stmt!=null){
                stmt.close();
            }
            if (conn!=null){
                conn.close();
            }
            if (pstmt!=null){
                pstmt.close();
            }
        }catch (Exception e){

        }
    }

}
