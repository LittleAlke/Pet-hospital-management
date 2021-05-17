package datebase;

import java.util.ArrayList;
import java.util.List;
import vet.VetBean;
/**
 * :
 * Alke
 * 2020-06-16 11:27
 */
public class VetDao extends BaseConnection{
    public int insert(VetBean vetBean){
        int row = 0;
        try {
            super.connect();
            String sql="insert into vet(name,sex,age,good,workage,phone) values(?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,vetBean.getName());
            pstmt.setString(2,vetBean.getSex());
            pstmt.setString(3,vetBean.getAge());
            pstmt.setString(4,vetBean.getGood());
            pstmt.setString(5,vetBean.getWorkage());
            pstmt.setString(6,vetBean.getPhone());
            row = pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            super.closeAll();
        }
        return row;
    }


    public List show(){
        List<VetBean> list = new ArrayList<>();
        try {
            super.connect();
            String sql = "select* from vet";
            rs = stmt.executeQuery(sql);
            int i = 0;
            while (rs.next()){
                list.add(new VetBean());
                list.get(i).setName(rs.getString("name"));
                list.get(i).setSex(rs.getString("sex"));
                list.get(i).setAge(rs.getString("age"));
                list.get(i).setGood(rs.getString("good"));
                list.get(i).setWorkage(rs.getString("workage"));
                list.get(i).setPhone(rs.getString("phone"));
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
        List<VetBean> list = new ArrayList<>();
        try {
            super.connect();
            String sql = "";
            if (type.equals("good")){
                sql = "select* from vet where good ='"+value+"'";
            }else {
                sql = "select* from vet where name ='"+value+"'";
            }
            rs = stmt.executeQuery(sql);
            int i = 0;
            while (rs.next()){
                list.add(new VetBean());
                list.get(i).setName(rs.getString("name"));
                list.get(i).setSex(rs.getString("sex"));
                list.get(i).setAge(rs.getString("age"));
                list.get(i).setGood(rs.getString("good"));
                list.get(i).setWorkage(rs.getString("workage"));
                list.get(i).setPhone(rs.getString("phone"));
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
        return list;
    }

//    public static void main(String[] args) {
//        List<VetBean> l = new VetDao().show();
//        int i = 0;
//        System.out.println(l.size());
//        while (i<l.size()){
//            System.out.println(l.get(i));
//            i++;
//        }
//    }
}
