package datebase;
import login.UserBean;

/**
 * :
 * Alke
 * 2020-06-16 9:21
 */
public class UserDao extends BaseConnection {
    public int insert(UserBean u){
        int row = 0;
        try {
            super.connect();
            String sql="insert into login(id,username,password) values(?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,u.getID());
            pstmt.setString(2,u.getUsername());
            pstmt.setString(3,u.getPassword());
            row = pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            super.closeAll();
        }
        return row;

    }

   public UserBean login(UserBean loginUser){
       try {
           super.connect();
           String sql = "select* from login";
           rs = stmt.executeQuery(sql);
           while (rs.next()){
               String st1=rs.getString("username");
               String st2=rs.getString("password");
               String st3 = rs.getString("id");
               if (loginUser.getUsername().equals(st1)&&loginUser.getPassword().equals(st2)){
                   loginUser.setID(st3);
                   return loginUser;
               }
           }
       } catch (Exception e) {
           e.printStackTrace();
       } finally {
           super.closeAll();
       }
       return null;
   }


}
