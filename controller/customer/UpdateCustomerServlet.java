package customer;

import datebase.CustomerDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;

@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String tel = request.getParameter("tel");
        String pet = request.getParameter("pet");
        String type = request.getParameter("type");
        CustomerBean cus = new CustomerBean();
        cus.setName(name);
        cus.setSex(sex);
        cus.setTel(tel);
        cus.setPet(pet);
        cus.setType(type);
        CustomerDao cd = new CustomerDao();
        int row = 0;
        row = cd.update(cus);
        if(row>=1)
            JOptionPane.showMessageDialog(null,"更新成功！","提示",JOptionPane.YES_NO_CANCEL_OPTION);
        else
            JOptionPane.showMessageDialog(null,"更新失败！","提示",JOptionPane.YES_NO_CANCEL_OPTION);
        response.sendRedirect("../customer/update.jsp");
    }
}
