<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="datebase.PetDao" %>
<%@ page import="java.util.List" %>
<%@ page import="pet.PetBean" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/12
  Time: 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>宠物信息</title>
    <link href="../css/view.css" rel="stylesheet">
</head>
<body>
<h1 align="center">宠物信息信息</h1>
<hr><br>
<table  align="center" class="table">
    <tr>
        <th>昵称</th>
        <th>种类</th>
        <th>年龄</th>
        <th>目前状态</th>
        <th>主人</th>
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
//        String sql = "select* from pet";
//        rs = stmt.executeQuery(sql);
        PetDao petDao = new PetDao();
        List<PetBean> list = petDao.show();
        int i = 0;
        while(i<list.size()){
    %>
    <tr>
        <td><%=list.get(i).getName()%></td>
        <td><%=list.get(i).getClass_()%></td>
        <td><%=list.get(i).getAge()%></td>
        <td><%=list.get(i).getState()%></td>
        <td><%=list.get(i).getMaster()%></td>
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
