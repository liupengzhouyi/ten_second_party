package JavaBeanPackage;

import java.sql.Connection;
import java.util.ArrayList;

public class test {
    public static void main(String[] args) {
        /*int a = 6;
        System.out.println(a);
        ArrayList<String> list = new ArrayList<String>();
        list.add("abc");
        String string = list.get(0);
        System.out.println(string);
        ArrayList list1 = new ArrayList();
        list1.add("abc");
        String string1 = (String) list1.get(0);
        list1.add(123);
        String string2 = (String) list1.get(1).toString();
        System.out.println(string1);
        System.out.println(string2);*/


        linkDatabase linkDatabase = new linkDatabase();
        Connection connection = linkDatabase.getConnection();
        if (connection == null) {
            System.out.println("连接数据库失败！");
        } else {
            System.out.println("连接数据库成功！");
        }
    }
}
