<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="datebase.VisitDao" %>
<%@ page import="java.util.List" %>
<%@ page import="visit.VisitBean" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/11
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>宠物访问记录</title>
    <link href="../css/view.css" rel="stylesheet">
</head>
<body>
<h1 align="center">宠物访问记录</h1>
<hr><br>
<table  align="center" class="table">
    <tr>
        <th>昵称</th>
        <th>症状</th>
        <th>时间</th>
        <th>消费额</th>
        <th>目前状态</th>
    </tr>
    <%
//        Connection con = null;
//        Statement stmt = null;
//        ResultSet rs = null;
//        Class.forName("com.mysql.jdbc.Driver");
//         /*
//         3306为端口号,student为数据库名,ur1后面添加的? useUnicode =
//         true scharacterEncoding=gbk用于处理向数据库中添加中文数据时出现
//                   乱码的问题。
//         */
//        String url = "jdbc:mysql://localhost:3306/lovepet?useUnicode=true&characterEncoding=gbk";
//        con = DriverManager.getConnection(url,"root","");
//        stmt = con.createStatement();
//        String sql = "select* from visit";
//        rs = stmt.executeQuery(sql);
        VisitDao visitDao = new VisitDao();
        List<VisitBean> list = visitDao.show();
        int i = 0;
        while(i<list.size()){
    %>
    <tr>
        <td><%=list.get(i).getName()%></td>
        <td><%=list.get(i).getIllness()%></td>
        <td><%=list.get(i).getDate()%></td>
        <td><%=list.get(i).getCost()%></td>
        <td><%=list.get(i).getState()%></td>
    </tr>
    <%
            i++;
        }
//        rs.close();
//        stmt.close();
//        con.close();
    %>
</table>
</body>
</html>
