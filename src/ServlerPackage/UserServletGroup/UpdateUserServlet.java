package ServlerPackage.UserServletGroup;

import JavaBeanPackage.getStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
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

        Statement statement = new getStatement().getStatement();
        String sql = "INSERT INTO user(username, password) VALUES ('" + username + "', '" + password + "');";
        try {
            System.out.println(sql);
            int lengths = statement.executeUpdate(sql);
            System.out.println(lengths);
            out.println("<p><center>Database Update Successful!</center></p>");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
