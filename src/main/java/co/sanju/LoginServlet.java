package co.sanju;
import co.sanju.database;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        System.out.println("email: " + email);
        System.out.println("password: " + password);
        int userID = database.verifyLogin(email, password);
        if (userID != -1) {
            response.setStatus(200);
            session.setAttribute("userID", userID);
            out.println("{\"access_token\": \"gcvhbjuyguu657vu8huvfyhubl\"}");
        } else {
            response.setStatus(401);
            out.println("{\"message\": \"Failed\"}");
        }
    }
}
