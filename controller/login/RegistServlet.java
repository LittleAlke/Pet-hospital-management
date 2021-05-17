package login;

import datebase.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;

@WebServlet("/RegistServlet")
public class RegistServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserBean userBean = new UserBean();
        userBean.setID(id);
        userBean.setUsername(username);
        userBean.setPassword(password);
        UserDao userDao = new UserDao();
        int row = userDao.insert(userBean);
        if(row>=1)
            JOptionPane.showMessageDialog(null,"注册成功！","提示",JOptionPane.YES_NO_CANCEL_OPTION);
        else
            JOptionPane.showMessageDialog(null,"注册失败！","提示",JOptionPane.YES_NO_CANCEL_OPTION);
        response.sendRedirect("../login/Login.jsp");
    }
}
