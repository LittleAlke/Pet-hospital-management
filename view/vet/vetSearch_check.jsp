<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.util.List" %>
<%@ page import="vet.VetBean" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/15
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>兽医信息</title>
    <link href="../css/view.css" rel="stylesheet">
</head>
<body >
<h1 align="center">兽医信息情况</h1>
<hr><br>
<table  align="center" class="table">
    <tr>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>擅长</th>
        <th>从业年龄</th>
        <th>联系电话</th>
    </tr>
    <%
        request.setCharacterEncoding("UTF-8");
        List<VetBean> list = (List<VetBean>) session.getAttribute("list");
        int i = 0;
        while(i<list.size()){
    %>
    <tr>
        <td><%=list.get(i).getName()%></td>
        <td><%=list.get(i).getSex()%></td>
        <td><%=list.get(i).getAge()%></td>
        <td><%=list.get(i).getGood()%></td>
        <td><%=list.get(i).getWorkage()%></td>
        <td><%=list.get(i).getPhone()%></td>
    </tr>
    <%
            i++;
        }
    %>
</table>
</body>
</html>
