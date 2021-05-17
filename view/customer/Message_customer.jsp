<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="datebase.CustomerDao" %>
<%@ page import="java.util.List" %>
<%@ page import="customer.CustomerBean" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/11
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>客户信息</title>
    <link href="../css/view.css"  rel="stylesheet">
</head>
<body>
<h1 align="center">客户信息</h1>
<hr><br>
<table  align="center" class="table">
    <tr>
        <th>姓名</th>
        <th>性别</th>
        <th>联系方式</th>
        <th>宠物数量</th>
        <th>会员类型</th>
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
//        String sql = "select* from customer";
//        rs = stmt.executeQuery(sql);
        CustomerDao customerDao = new CustomerDao();
        List<CustomerBean> list = customerDao.show();
        int i = 0;
        while(i<list.size()){
    %>
    <tr>
        <td><%=list.get(i).getName()%></td>
        <td><%=list.get(i).getSex()%></td>
        <td><%=list.get(i).getTel()%></td>
        <td><%=list.get(i).getPet()%></td>
        <td><%=list.get(i).getType()%></td>
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
