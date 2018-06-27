package ServlerPackage.UserServletGroup;

import JavaBeanPackage.linkDatabase;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UserServlet")
public class UserServlet extends HttpServlet {
    private static final long seriaVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        out.println("<h1>数据库连接成功!</h1>");
        this.sive(request,response);
        /*String mathodName = request.getParameter("method");
        if (mathodName.equals("sive")) {
            System.out.println("sive");
            this.sive(request,response);
        } else if (mathodName.equals("update")) {
            this.update(request,response);
        }*/
    }

    private void sive(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Sive!");
        linkDatabase lplinkDatabase = new linkDatabase();
        if (lplinkDatabase != null) {
            PrintWriter out = response.getWriter();
            out.println("<h1>asdfh</h1>");
            System.out.println("数据库连接成功！");
            String SQL = "";
        } else {
            PrintWriter out = response.getWriter();
            out.println("<h1>zzzzzz</h1>");
        }
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Update!");
    }

    /*private void sive(){
        System.out.println("Sive!");
    }

    private void update() {
        System.out.println("Update!");
    }*/

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
