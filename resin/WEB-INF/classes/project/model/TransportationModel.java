package project.model;

import project.util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TransportationModel {

    private static Connection conn = null;
    private static List<Transportation> transportations;

    public TransportationModel() {
        transportations = new ArrayList<>();
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

    public List<Transportation> getTransportations() throws Exception {

        transportations.clear();

        String query = "SELECT * FROM transportation;";

        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {

            // retrieve data from result set row
            int id = rs.getInt("transp_id");
            String stationAddress = rs.getString("station_address");
            String type = rs.getString("type");
            String route = rs.getString("route");
            String neighborhoodName = rs.getString("neighborhood_name");
            int zipcode = rs.getInt("zipcode");

            // create new student object
            Transportation Transportation = new Transportation(id, stationAddress, type, route,
                    neighborhoodName, zipcode);

            // add it to the list of students
            transportations.add(Transportation);

        }

        DBUtil.close(st, rs);

        return transportations;
    }

}
