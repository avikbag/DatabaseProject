package project.model;

import project.util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DemographicModel {

    private static Connection conn = null;
    private static List<Demographic> demographics;

    public DemographicModel() {
        demographics = new ArrayList<>();
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

    public List<Demographic> getDemographics() throws Exception {

        demographics.clear();

        String query = "SELECT * FROM demographics;";

        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {

            // retrieve data from result set row
            int id = rs.getInt("demographic_id");
            String ethnicity = rs.getString("ethnicity");
            int median_age_group = rs.getInt("median_age_group");
            int median_salary = rs.getInt("median_salary");
            double unemployment = rs.getDouble("unemployment");
            String name = rs.getString("neighborhood_name");
            int zipcode = rs.getInt("zipcode");

            // create new student object
            Demographic demographic = new Demographic(id, ethnicity, median_age_group, median_salary,
                    unemployment, name, zipcode);

            // add it to the list of students
            demographics.add(demographic);

        }

        DBUtil.close(st, rs);

        return demographics;
    }

}
