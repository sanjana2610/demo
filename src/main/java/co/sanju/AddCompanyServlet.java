package co.sanju;

import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddCompanyServlet")
public class AddCompanyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String location = request.getParameter("location");
        int userID = database.addCompany(name, description, location);
        if (userID != -1) {
            response.setStatus(200);
            out.println("{\"message\": \"Inserted company details\"}");
        } else {
            response.setStatus(401);
            out.println("{\"message\": \"Failed\"}");
        }
    }
}
