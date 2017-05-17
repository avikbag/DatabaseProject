package project.model;

import project.util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PropertyModel {

	private static Connection conn = null;
	private static List<Property> properties;

	public PropertyModel() {
		properties = new ArrayList<>();
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

	public List<Property> getProperties() throws Exception {
		
		properties.clear();

		String query = "SELECT * FROM property_details;";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query);

		while (rs.next()) {

			// retrieve data from result set row
			int id = rs.getInt("property_id");
			String type = rs.getString("type");
			String status = rs.getString("status");
			int price = rs.getInt("price");
			int size = rs.getInt("size");
			String bedBath = rs.getString("bedbath");
			String neighborhoodName = rs.getString("neighborhood_name");
			int zipcode = rs.getInt("zipcode");

			// create new student object
			Property property = new Property(id, type, status, price,
					size, bedBath, neighborhoodName, zipcode);

			// add it to the list of students
			properties.add(property);

		}

		DBUtil.close(st, rs);

		return properties;
	}

}
