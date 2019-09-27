import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Main {

    public static void main(String[] args) {
        System.out.println("Connecting to MySQL...");
        // Let's connect to mysql db running in docker
        Connection conn;
        Statement stmt;
        ResultSet rs;
        String url = "jdbc:mysql://localhost:3306/brothers_db";

        try {
            conn = DriverManager.getConnection (url,"root","admin");
            stmt = conn.createStatement();
            rs = stmt.executeQuery("select * from tbl_profiles");
            if (rs != null) {
                while (rs.next()) {
                    System.out.println("Results: " + rs.getString("first_name"));
                }
            }

            conn.close();
        } catch (Exception err) {
            System.out.println("Error found when connecting: " + err);
        }
    }
}
