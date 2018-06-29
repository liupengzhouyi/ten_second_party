package ServlerPackage.UserServletGroup;

import JavaBeanPackage.getStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
        out.println("" +
                "<h1>\n" +
                "    <center>\n" +
                "        \n" + username +
                "<br>" +
                "        \n" + password +
                "    </center>\n" +
                "</h1>");

       /* linkDatabase linkDatabase = new linkDatabase();
        Connection connection = linkDatabase.getConnection();*/

        Statement statement = new getStatement().getStatement();

        String SQL = "SELECT * FROM user;";

        try {
            ResultSet resultSet = statement.executeQuery(SQL);
            boolean key = false;
            while(resultSet.next()) {
                int id = resultSet.getInt("id");
                String DBId = String.valueOf(id);
                String DBusername = resultSet.getString("username");
                String DBpassword = resultSet.getString("password");
                if (DBusername.equals(username)) {
                    if (DBpassword.equals(password)) {
                        key = true;
                    } else {
                        key = false;
                    }
                } else {
                    key = false;
                }
            }
            if (key) {
                out.println("<p><center>" + "Landing Success!" + "</center></p>");
            } else {
                out.println("<p><center>" + "Landing failed!" + "</center></p>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
