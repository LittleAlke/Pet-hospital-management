package vet;

import datebase.VetDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;

@WebServlet("/AddVetServlet")
public class AddVetServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String age = request.getParameter("age");
        String good = request.getParameter("good");
        String workage = request.getParameter("workage");
        String phone = request.getParameter("phone");
        VetBean vetBean = new VetBean();
        vetBean.setName(name);
        vetBean.setSex(sex);
        vetBean.setAge(age);
        vetBean.setGood(good);
        vetBean.setWorkage(workage);
        vetBean.setPhone(phone);
        VetDao vetDao = new VetDao();
        int row = vetDao.insert(vetBean);
        if(row>=1)
            JOptionPane.showMessageDialog(null,"添加成功！","提示",JOptionPane.YES_NO_CANCEL_OPTION);
        else
            JOptionPane.showMessageDialog(null,"添加失败！","提示",JOptionPane.YES_NO_CANCEL_OPTION);
        response.sendRedirect("../vet/Add.jsp");
    }
}
