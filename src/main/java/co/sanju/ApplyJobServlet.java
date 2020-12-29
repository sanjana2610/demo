package co.sanju;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet")
public class ApplyJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("job_id");
        int userID = database.applyJob(id);
        if (userID != -1) {
            response.setStatus(200);
            out.println("{\"message\": \"Job applied\"}");
        } else {
            response.setStatus(401);
            out.println("{\"message\": \"Failed\"}");
        }
    }
}
