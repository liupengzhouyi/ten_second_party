package JavaBeanPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class linkDatabase {

    private String url = null;
    private String user = null;
    private String password = null;

    private Connection connection = null;

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public linkDatabase() {
        init();
        try {
            this.setConnection(
                    DriverManager.getConnection(
                        this.url,
                        this.user,
                        this.password
                    )
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void init() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        this.setPassword("lp184126");
        this.setUser("root");
        this.setUrl("jdbc:mysql://localhost:3306/ten_second_party");
    }

}
