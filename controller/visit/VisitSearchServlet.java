package visit;

import datebase.PetDao;
import datebase.VisitDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/VisitSearchServlet")
public class VisitSearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String value = request.getParameter("name");
        VisitDao visitDao = new VisitDao();
        List<VisitBean> list = visitDao.Search(value);
        HttpSession session = request.getSession();
        session.setAttribute("list",list);
        response.sendRedirect("../visit/VisitSearch_check.jsp");
    }
}
