package project.model;

import project.util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FoodModel {

    private static Connection conn = null;
    private static List<Food> foods;

    public FoodModel() {
        foods = new ArrayList<>();
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

    public List<Food> getFood() throws Exception {

        foods.clear();

        String query = "SELECT * FROM food;";

        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {

            // retrieve data from result set row
            String name = rs.getString("name");
            String address = rs.getString("address");
            String category = rs.getString("category");

            // create new student object
            Food food = new Food(name, address, category);

            // add it to the list of students
            foods.add(food);

        }

        DBUtil.close(st, rs);

        return foods;
    }

}
