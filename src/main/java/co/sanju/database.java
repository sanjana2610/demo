package co.sanju;

import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.*;
public class database {
    private static Connection connection;
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";

    public static void buildConnection() {
        if (connection == null) {
            try {
                String url       = "jdbc:mysql://localhost:3306/placementPortal";
                String user      = "root";
                String password  = "sanju950";
                Class.forName(JDBC_DRIVER);
                connection = DriverManager.getConnection(url,user,password);
                System.out.println("Database is connected.");
            } catch (SQLException | ClassNotFoundException throwables) {
                throwables.printStackTrace();
            }
        }
    }

    public static int verifyLogin(String username, String password) {
        try {
            buildConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(String.format("SELECT * FROM users WHERE email = '%s' AND password = '%s'", username, password));
            if (rs.next()) {
                return rs.getInt("id");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return -1;
    }
    public static JSONArray getJobs() {
        JSONArray json = new JSONArray();
        try {
            buildConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(String.format("SELECT * FROM jobs js JOIN companies cp ON js.company_id = cp.company_id"));
            ResultSetMetaData rsmd = rs.getMetaData();
            while (rs.next()) {
                int numColumns = rsmd.getColumnCount();
                JSONObject obj = new JSONObject();
                for (int i = 1; i <= numColumns; i++) {
                    String column_name = rsmd.getColumnName(i);
                    obj.put(column_name, rs.getObject(column_name));
                }
                json.put(obj);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return json;
    }
    public static int getUserID(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession(true);
            return (int) session.getAttribute("userID");
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
}
