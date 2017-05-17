package project.model;

import project.util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ShootingCrimeModel {

    private static Connection conn = null;
    private static List<ShootingCrime> shootingCrimes;

    public ShootingCrimeModel() {
        shootingCrimes = new ArrayList<>();
    }

    public String openDBConnection() {

        String res = "";
        if (conn != null) {
            closeDBConnection();
        }

        try {
            conn = DBUtil.openDBConnection(conn);
        } catch (SQLException sqle) {
            sqle.printStackTrace(System.err);
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace(System.err);
        }
        return res;
    }

    /**
     * Close the database connection.
     */
    public void closeDBConnection() {
        try {
            DBUtil.closeDBConnection(conn);
            System.out.println("Closed a connection");
        } catch (SQLException sqle) {
            sqle.printStackTrace(System.err);
        }
    }

    public List<ShootingCrime> getShootingCrimes() throws Exception {

        shootingCrimes.clear();

        String query = "SELECT * FROM shooting_crimes;";

        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {

            // retrieve data from result set row
            int id = rs.getInt("incident_id");
            Date incidentTime = rs.getDate("incident_time");
            boolean fatality = rs.getBoolean("fatality");
            boolean officerInvolved = rs.getBoolean("officer_involved");
            String neighborhoodName = rs.getString("neighborhood_name");
            int zipcode = rs.getInt("zipcode");

            // create new student object
            ShootingCrime shootingCrime = new ShootingCrime(id, incidentTime, fatality, officerInvolved,
                    neighborhoodName, zipcode);

            // add it to the list of students
            shootingCrimes.add(shootingCrime);

        }

        DBUtil.close(st, rs);

        return shootingCrimes;
    }

}
