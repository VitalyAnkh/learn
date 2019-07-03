import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class PostgresqlJDBC {

    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/bjtu";
        String user = "vitalyr";
        String password = "1234";

        try (Connection con = DriverManager.getConnection(url, user, password);
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT VERSION()")) {

            if (rs.next()) {
                System.out.println(rs.getString(1));
            }

        } catch (SQLException e) {

            System.out.println(e.getMessage());
        }
    }
}
