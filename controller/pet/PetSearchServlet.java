package pet;

import customer.CustomerBean;
import datebase.CustomerDao;
import datebase.PetDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/PetSearchServlet")
public class PetSearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String type = request.getParameter("search");
        String value;
        if (type.equals("name")){
            value = request.getParameter("name");
        }else {
            value = request.getParameter("master");
        }
        PetDao petDao = new PetDao();
        List<PetBean> list = petDao.Search(type,value);
        HttpSession session = request.getSession();
        session.setAttribute("list",list);
        response.sendRedirect("../pet/PetSearch_check.jsp");
    }
}
