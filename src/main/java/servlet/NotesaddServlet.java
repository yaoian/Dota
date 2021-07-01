package servlet;

import Dao.AdminDAO;
import Dao.Dbutil;
import Model.Notes;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;


@WebServlet(urlPatterns = "/notesadd", name = "notesadd")
public class NotesaddServlet extends HttpServlet{
    Dbutil dbutil = new Dbutil();
    AdminDAO adminDAO = new AdminDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = new String(req.getParameter("title").getBytes("ISO-8859-1"), "UTF-8");
        String start_time = new String(req.getParameter("start_time").getBytes("ISO-8859-1"), "UTF-8");
        String stop_time = new String(req.getParameter("stop_time").getBytes("ISO-8859-1"), "UTF-8");
        String description = new String(req.getParameter("description").getBytes("ISO-8859-1"), "UTF-8");


        Notes notes = new Notes();
        Connection con = null;
        notes.setTitle(title);
        notes.setStart_time(start_time);
        notes.setStop_time(stop_time);
        notes.setDescription(description);

        try {
            con = dbutil.getCon();
            adminDAO.notesadd(con, notes);
            resp.sendRedirect("admin/notesmanage.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
