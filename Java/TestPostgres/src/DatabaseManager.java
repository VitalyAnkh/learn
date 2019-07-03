import java.sql.*;
import java.sql.ResultSet;
public class DatabaseManager {
    String url = null;// eg. "jdbc:postgresql://localhost:5432/bjtu";
    String user = null; // eg. "vitalyr";
    String password = null; // eg. "1234";
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    public DatabaseManager() {
    }

    private void openSpecificConnection(String url, String user, String password) {
        try {
            Connection con = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    private void openConnection() {
        try {
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/bjtu","vitalyr","1234");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void closeConnection() {
        try {
            if (conn != null) {
                conn.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

    }

    public boolean execUpdate(String sql_stmt) {
        openConnection();
        try {
            stmt = conn.createStatement();

            int rows = stmt.executeUpdate(sql_stmt);

            return rows > 0;

        } catch (SQLException e) {
            System.out.println("SQL语句错误");
            //e.printStackTrace();
            return false;
        } finally {
            closeConnection();
        }

    }

    public ResultSet execQuery(String sql_stmt) {
        openConnection();
        try {
            stmt = conn.createStatement();
            return stmt.executeQuery(sql_stmt);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }}