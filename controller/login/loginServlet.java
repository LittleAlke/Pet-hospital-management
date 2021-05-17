package login;

import datebase.UserDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserBean user = new UserBean();
        user.setUsername(username);
        user.setPassword(password);
        UserDao userDao = new UserDao();
        UserBean u = userDao.login(user);
        if (u==null){
            response.sendRedirect("../login/Login.jsp");
            JOptionPane.showMessageDialog(null,"密码或账号错误！","提示",JOptionPane.YES_NO_CANCEL_OPTION);
        } else{
            HttpSession session = request.getSession();
            session.setAttribute("user",u);
            response.sendRedirect("../frame_/main.jsp");
        }
    }
}
