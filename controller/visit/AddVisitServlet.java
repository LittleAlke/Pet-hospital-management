package visit;

import datebase.VisitDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;

@WebServlet("/AddVisitServlet")
public class AddVisitServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String illness = request.getParameter("illness");
        String cost = request.getParameter("cost");
        String state = request.getParameter("state");
        VisitBean p = new VisitBean();
        p.setName(name);
        p.setIllness(illness);
        p.setCost(cost);
        p.setState(state);
        VisitDao pd = new VisitDao();
        int row = pd.insert(p);
        if(row>=1)
            JOptionPane.showMessageDialog(null,"添加成功！","提示",JOptionPane.YES_NO_CANCEL_OPTION);
        else
            JOptionPane.showMessageDialog(null,"添加失败！","提示",JOptionPane.YES_NO_CANCEL_OPTION);
        response.sendRedirect("../visit/Add_visit.jsp");
    }
}
