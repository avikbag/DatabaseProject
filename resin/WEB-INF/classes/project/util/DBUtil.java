package project.util;

import java.sql.*;
import java.util.ResourceBundle;

public class DBUtil {

    private static ResourceBundle _bundle;


    public static Connection openDBConnection(Connection conn)
            throws SQLException, ClassNotFoundException {

        _bundle = ResourceBundle.getBundle("PgBundle");

        String user = _bundle.getString("dbUser");
        String pass = _bundle.getString("dbPass");
        String dbSID = _bundle.getString("dbSID");
        String host = _bundle.getString("dbHost");
        int port = Integer.parseInt(_bundle.getString("dbPort"));

        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {

            System.out.println("Where is your PostgreSQL JDBC Driver? " + "Include in your library path!");
            e.printStackTrace();
        }

        try {
            String url = "jdbc:postgresql://" + host + "/" + dbSID;
            String username = user;
            String password = pass;

            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            System.out.println("Connection Failed! Check output console");
            e.printStackTrace();
        }

        if (conn != null) {
            System.out.println("You made it, take control your database now!");
        } else {
            System.out.println("Failed to make connection!");
        }
        return conn;
    }


    public static void closeDBConnection(Connection conn) throws SQLException {
        conn.close();
    }

    public static void close(Connection myConn, Statement myStmt, ResultSet myRs) {

        try {
            if (myRs != null) {
                myRs.close();
            }

            if (myStmt != null) {
                myStmt.close();
            }

            if (myConn != null) {
                myConn.close(); // doesn't really close it ... just puts back in
                // connection pool
            }
        } catch (Exception exc) {
            exc.printStackTrace();
        }
    }

    public static void close(Statement myStmt, ResultSet myRs) {

        try {
            if (myRs != null) {
                myRs.close();
            }

            if (myStmt != null) {
                myStmt.close();
            }
        } catch (Exception exc) {
            exc.printStackTrace();
        }
    }
}
