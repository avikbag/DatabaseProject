package project.model;

import project.util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NeighborhoodModel {

    private static Connection conn = null;
    private static List<Neighborhood> neighborhoods;

    public NeighborhoodModel() {
        neighborhoods = new ArrayList<>();
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

    public List<Neighborhood> getNeighborhoods() throws Exception {

        neighborhoods.clear();

        String query = "SELECT * FROM neighborhood";

        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {

            // retrieve data from result set row
            String neighborhood_name = rs.getString("neighborhood_name");
            int zipcode = rs.getInt("zipcode");

            // create new student object
            Neighborhood neighborhood = new Neighborhood(neighborhood_name, zipcode);

            // add it to the list of students
            neighborhoods.add(neighborhood);

        }

        DBUtil.close(st, rs);

        return neighborhoods;
    }

    public List<Map> getSafetyScores() throws Exception {

        List<Map> list = new ArrayList();

        String query = "SELECT nb.neighborhood_name, 2*count(CASE WHEN sc.fatality THEN 1 END)-count(CASE WHEN sc.officer_involved THEN 1 END) AS Safety_Score " +
                "FROM neighborhood AS nb FULL OUTER JOIN shooting_crimes AS sc ON nb.zipcode = sc.zipcode " +
                "AND nb.neighborhood_name = sc.neighborhood_name " +
                "GROUP BY nb.neighborhood_name ;";


        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {

            Map<String, String> map = new HashMap();

            // retrieve data from result set row
            String neighborhood_name = rs.getString("neighborhood_name");
            String safetyScore = rs.getString("safety_score");

            map.put("neighborhood_name", neighborhood_name);
            map.put("safetyScore", safetyScore);
            list.add(map);
        }

        DBUtil.close(st, rs);

        return list;
    }

    public List<String> getManayunkRestaurants() throws Exception {

        List<String> list = new ArrayList();

        String query = "SELECT fd.name AS restaurants_in_manayunk "
                + "FROM neighborhood AS nb FULL OUTER JOIN food AS fd "
                + "ON nb.zipcode = fd.zipcode "
                + "AND nb.neighborhood_name = fd.neighborhood_name "
                + "WHERE nb.neighborhood_name = 'Manayunk';";

        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {

            String restaurant = rs.getString("restaurants_in_manayunk");
            list.add(restaurant);
        }

        DBUtil.close(st, rs);

        return list;
    }

    public List<String> getSafestSchools() throws Exception {

        List<String> list = new ArrayList();

        String query = "SELECT sch.name AS safest_schools " +
                "FROM shooting_crimes AS sc RIGHT OUTER JOIN schools AS sch " +
                "ON sc.zipcode = sch.zipcode AND sc.neighborhood_name = sch.neighborhood_name " +
                "GROUP BY sch.name " +
                "HAVING 2*count(CASE WHEN sc.fatality THEN 1 END)-count(CASE WHEN sc.officer_involved THEN 1 END) <= 0;";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {

            String school = rs.getString("safest_schools");
            list.add(school);
        }

        DBUtil.close(st, rs);

        return list;
    }


    public List<String> getSubwayAndBus() throws Exception {

        List<String> list = new ArrayList();

        String query = "SELECT nb.neighborhood_name "
                + "FROM neighborhood AS nb FULL OUTER JOIN Transportation AS tp "
                + "ON nb.zipcode = tp.zipcode "
                + "AND nb.neighborhood_name = tp.neighborhood_name "
                + "GROUP BY nb.neighborhood_name, tp.type HAVING tp.type='Bus' "
                + "INTERSECT SELECT nb.neighborhood_name FROM neighborhood AS nb FULL OUTER JOIN Transportation AS tp "
                + "ON nb.zipcode = tp.zipcode "
                + "AND nb.neighborhood_name = tp.neighborhood_name "
                + "GROUP BY nb.neighborhood_name, tp.type HAVING tp.type='Subway';";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {

            String neighborhood = rs.getString("neighborhood_name");
            list.add(neighborhood);
        }

        DBUtil.close(st, rs);

        return list;
    }


    public List<String> getHousesForSale() throws Exception {

        List<String> list = new ArrayList();

        String query = "SELECT nb.neighborhood_name "
                + "FROM neighborhood AS nb FULL OUTER JOIN property_details AS pd "
                + "ON nb.zipcode = pd.zipcode "
                + "AND nb.neighborhood_name = pd.neighborhood_name "
                + "GROUP BY nb.neighborhood_name, pd.status "
                + "HAVING pd.status='Sale';";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {

            String neighborhood = rs.getString("neighborhood_name");
            list.add(neighborhood);
        }

        DBUtil.close(st, rs);

        return list;
    }

}
