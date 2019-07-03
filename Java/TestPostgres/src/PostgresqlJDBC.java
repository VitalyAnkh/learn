import DatabaseManager.*;



public class PostgresqlJDBC {


    public static void main(String[] args) {
        DatabaseManager dm = new DatabaseManager();
        String sql = "select * from user";

        ResultSet rs = dm.execQuery(sql);


        System.out.println("用户编号\t用户名\t密码\t积分");

        //遍历结果集
        try {
            while (rs.next()) {

                System.out.println(rs.getInt(1) + "\t" + rs.getString(2) + "\t" + rs.getString(3) + "\t" + rs.getInt(4));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dm.closeConnection();
        }


    }
}

