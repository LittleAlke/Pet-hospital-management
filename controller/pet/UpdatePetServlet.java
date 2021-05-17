package pet;

import datebase.PetDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;

@WebServlet("/UpdatePetServlet")
public class UpdatePetServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String class_ = request.getParameter("class_");
        String age = request.getParameter("age");
        String state = request.getParameter("state");
        String master = request.getParameter("master");
        PetBean p = new PetBean();
        p.setName(name);
        p.setClass_(class_);
        p.setAge(age);
        p.setState(state);
        p.setMaster(master);
        PetDao pd = new PetDao();
        int row = pd.update(p);
        if(row>=1)
            JOptionPane.showMessageDialog(null,"更新成功！","提示",JOptionPane.YES_NO_CANCEL_OPTION);
        else
            JOptionPane.showMessageDialog(null,"更新失败！","提示",JOptionPane.YES_NO_CANCEL_OPTION);
        response.sendRedirect("../pet/update.jsp");
    }
}
