package project.model;

import project.util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SchoolModel {

    private static Connection conn = null;
    private static List<School> schools;

    public SchoolModel() {
        schools = new ArrayList<>();
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

    public List<School> getSchools() throws Exception {

        schools.clear();

        String query = "SELECT * FROM schools;";

        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {

            // retrieve data from result set row
            int id = rs.getInt("school_id");
            String name = rs.getString("name");
            String gradeLevel = rs.getString("gradelevel");
            String enrollment = rs.getString("enrollment");
            String type = rs.getString("type");
            String neighborhoodName = rs.getString("neighborhood_name");
            int zipcode = rs.getInt("zipcode");

            // create new student object
            School school = new School(id, name, gradeLevel, enrollment,
                    type, neighborhoodName, zipcode);

            // add it to the list of students
            schools.add(school);

        }

        DBUtil.close(st, rs);

        return schools;
    }

}
