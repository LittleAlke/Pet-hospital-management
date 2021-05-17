package datebase;


import customer.CustomerBean;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * :
 * Alke
 * 2020-06-10 10:56
 */
public class CustomerDao extends BaseConnection {
    public int update(CustomerBean u){
        int row = 0;
        try {
            super.connect();
            String sql="update customer set sex = '"+u.getSex()+"', tel = '"+u.getTel()+"', " +
            "pet = '"+u.getPet()+"',type = '"+u.getType()+"' where name = '"+u.getName()+"'";
            pstmt = conn.prepareStatement(sql);
            row = pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            super.closeAll();
        }
        return row;
    }
    public int insert(CustomerBean u){
        int row = 0;
        try {
            super.connect();
            String sql="insert into customer(name,sex,tel,pet,type) values(?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,u.getName());
            pstmt.setString(2,u.getSex());
            pstmt.setString(3,u.getTel());
            pstmt.setString(4,u.getPet());
            pstmt.setString(5,u.getType());
            row = pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            super.closeAll();
        }
        return row;
    }
    public List show(){
        List<CustomerBean> list = new ArrayList<>();
        try {
            super.connect();
            String sql = "select* from customer";
            rs = stmt.executeQuery(sql);
            int i = 0;
            while (rs.next()){
                list.add(new CustomerBean());
                list.get(i).setName(rs.getString("name"));
                list.get(i).setSex(rs.getString("sex"));
                list.get(i).setTel(rs.getString("tel"));
                list.get(i).setPet(rs.getString("pet"));
                list.get(i).setType(rs.getString("type"));
                i++;
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            super.closeAll();
        }
        return list;
    }

    public List Search(String type,String value){
        List<CustomerBean> list = new ArrayList<>();
        try {
            super.connect();
            String sql = "";
            if(type.equals("name")){
                sql = "select* from customer where name ='"+value+"'";
            }else {
                sql = "select* from customer where tel ='"+value+"'";
            }
            rs = stmt.executeQuery(sql);
            int i = 0;
            while (rs.next()){
                list.add(new CustomerBean());
                list.get(i).setName(rs.getString("name"));
                list.get(i).setSex(rs.getString("sex"));
                list.get(i).setTel(rs.getString("tel"));
                list.get(i).setPet(rs.getString("pet"));
                list.get(i).setType(rs.getString("type"));
                i++;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            super.closeAll();
        }
        return list;
    }
}
