package vet;

import datebase.VetDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@WebServlet("/VetSearchServlet")
public class VetSearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String type = request.getParameter("search");
        String value;
        if (type.equals("good")){
            value = request.getParameter("good");
        }else {
            value = request.getParameter("name");
        }
        VetDao vetDao = new VetDao();
        List<VetBean> list = vetDao.Search(type,value);
        HttpSession session = request.getSession();
        session.setAttribute("list",list);
        response.sendRedirect("../vet/vetSearch_check.jsp");
    }
}
