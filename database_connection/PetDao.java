package datebase;

import pet.PetBean;

import java.util.ArrayList;
import java.util.List;

/**
 * :
 * Alke
 * 2020-06-12 12:19
 */
public class PetDao extends BaseConnection {
    public int update(PetBean u){
        int row = 0;
        try {
            super.connect();
            String sql="update pet set class = '"+u.getClass_()+"', age = '"+u.getAge()+"', " +
                    "state = '"+u.getState()+"',master = '"+u.getMaster()+"' where name = '"+u.getName()+"'";
            pstmt = conn.prepareStatement(sql);
            row = pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            super.closeAll();
        }
        return row;
    }
    public int insert(PetBean u){
        int row = 0;
        try {
            super.connect();
            String sql="insert into pet(name,class,age,state,master) values(?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,u.getName());
            pstmt.setString(2,u.getClass_());
            pstmt.setString(3,u.getAge());
            pstmt.setString(4,u.getState());
            pstmt.setString(5,u.getMaster());
            row = pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            super.closeAll();
        }
        return row;
    }

    public List show(){
        List<PetBean> list = new ArrayList<>();
        try {
            super.connect();
            String sql = "select* from pet";
            rs = stmt.executeQuery(sql);
            int i = 0;
            while (rs.next()){
                list.add(new PetBean());
                list.get(i).setName(rs.getString("name"));
                list.get(i).setClass_(rs.getString("class"));
                list.get(i).setAge(rs.getString("age"));
                list.get(i).setState(rs.getString("state"));
                list.get(i).setMaster(rs.getString("master"));
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            super.closeAll();
        }
        return list;
    }
    public List Search(String type,String value){
        List<PetBean> list = new ArrayList<>();
        try {
            super.connect();
            String sql = "";
            if (type.equals("name")){
                sql = "select* from pet where name ='"+value+"'";
            }else {
                sql = "select* from pet where master ='"+value+"'";
            }
            rs = stmt.executeQuery(sql);
            int i = 0;
            while (rs.next()){
                list.add(new PetBean());
                list.get(i).setName(rs.getString("name"));
                list.get(i).setClass_(rs.getString("class"));
                list.get(i).setAge(rs.getString("age"));
                list.get(i).setState(rs.getString("state"));
                list.get(i).setMaster(rs.getString("master"));
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            super.closeAll();
        }
        return list;
    }
}
