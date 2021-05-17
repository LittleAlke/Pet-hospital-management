package datebase;

import visit.VisitBean;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * :
 * Alke
 * 2020-06-12 9:04
 */
public class VisitDao extends BaseConnection {
    Calendar cal=Calendar.getInstance();
    int y=cal.get(Calendar.YEAR);
    int m=cal.get(Calendar.MONTH)+1;
    int d=cal.get(Calendar.DATE);
    String date=y+"-"+m+"-"+d;
    public int update(VisitBean u){
        int row = 0;
        try {
            super.connect();
            String sql="update visit set illness = '"+u.getIllness()+"', date = '"+date+"', " +
                    "cost = '"+u.getCost()+"',state = '"+u.getState()+"' where name = '"+u.getName()+"'";
            pstmt = conn.prepareStatement(sql);
            row = pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            super.closeAll();
        }
        return row;
    }

    public int insert(VisitBean u){
        int row = 0;
        try {
            super.connect();
            String sql="insert into visit(name,illness,date,cost,state) values(?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,u.getName());
            pstmt.setString(2,u.getIllness());
            pstmt.setString(3,date);
            pstmt.setString(4,u.getCost());
            pstmt.setString(5,u.getState());
            row = pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            super.closeAll();
        }
        return row;
    }
    public List show(){
        List<VisitBean> list = new ArrayList<>();
        try {
            super.connect();
            String sql = "select* from visit";
            rs = stmt.executeQuery(sql);
            int i = 0;
            while (rs.next()){
                list.add(new VisitBean());
                list.get(i).setName(rs.getString("name"));
                list.get(i).setIllness(rs.getString("illness"));
                list.get(i).setDate(rs.getString("date"));
                list.get(i).setCost(rs.getString("cost"));
                list.get(i).setState(rs.getString("state"));
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            super.closeAll();
        }
        return list;
    }

    public List Search(String value){
        List<VisitBean> list = new ArrayList<>();
        try {
            super.connect();
            String sql = "select* from visit where name ='"+value+"'";
            rs = stmt.executeQuery(sql);
            int i = 0;
            while (rs.next()){
                list.add(new VisitBean());
                list.get(i).setName(rs.getString("name"));
                list.get(i).setIllness(rs.getString("illness"));
                list.get(i).setDate(rs.getString("date"));
                list.get(i).setCost(rs.getString("cost"));
                list.get(i).setState(rs.getString("state"));
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
