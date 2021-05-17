<%@ page import="customer.CustomerBean" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/17
  Time: 8:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询结果</title>
    <link href="../css/view.css" rel="stylesheet">
</head>
<body>
<h1 align="center">客户信息</h1>
<hr><br>
<table  align="center" class="table">
    <tr>
        <th>姓名</th>
        <th>性别</th>
        <th>电话</th>
        <th>宠物数量</th>
        <th>会员类型</th>
    </tr>
    <%
        request.setCharacterEncoding("UTF-8");
        List<CustomerBean> list = (List<CustomerBean>) session.getAttribute("list");
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
    %>
</table>
</body>
</html>
