package project.controller;

import project.model.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Servlet implementation class NeighborhoodServlet
 */
@WebServlet("/NeighborhoodServlet")
public class NeighborhoodServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private NeighborhoodModel neighborhoodModel;
    private FoodModel foodModel;
    private DemographicModel demographicModel;
    private PropertyModel propertyModel;
    private RecreationalModel recreationalModel;
    private SchoolModel schoolModel;
    private ShootingCrimeModel shootingCrimeModel;
    private TransportationModel transportationModel;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public NeighborhoodServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() {
        neighborhoodModel = new NeighborhoodModel();
        neighborhoodModel.openDBConnection();

        foodModel = new FoodModel();
        foodModel.openDBConnection();

        demographicModel = new DemographicModel();
        demographicModel.openDBConnection();

        propertyModel = new PropertyModel();
        propertyModel.openDBConnection();

        recreationalModel = new RecreationalModel();
        recreationalModel.openDBConnection();

        schoolModel = new SchoolModel();
        schoolModel.openDBConnection();

        shootingCrimeModel = new ShootingCrimeModel();
        shootingCrimeModel.openDBConnection();

        transportationModel = new TransportationModel();
        transportationModel.openDBConnection();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Neighborhood> neighborhoods = null;
        try {
            neighborhoods = neighborhoodModel.getNeighborhoods();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("neighborhoods", neighborhoods);

        List<Food> foodList = null;
        try {
            foodList = foodModel.getFood();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("foodList", foodList);

        List<Demographic> demographics = null;
        try {
            demographics = demographicModel.getDemographics();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("demographics", demographics);


        List<Property> properties = null;
        try {
            properties = propertyModel.getProperties();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("properties", properties);


        List<Recreational> recreationals = null;
        try {
            recreationals = recreationalModel.getRecreationals();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("recreationals", recreationals);


        List<School> schools = null;
        try {
            schools = schoolModel.getSchools();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("schools", schools);


        List<ShootingCrime> shootingCrimes = null;
        try {
            shootingCrimes = shootingCrimeModel.getShootingCrimes();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("shootingCrimes", shootingCrimes);


        List<Transportation> transporations = null;
        try {
            transporations = transportationModel.getTransportations();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("transporations", transporations);

        List<Map> safetyScores = null;
        try {
            safetyScores = neighborhoodModel.getSafetyScores();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("safetyScores", safetyScores);

        List<String> manayunkRestaurants = null;
        try {
            manayunkRestaurants = neighborhoodModel.getManayunkRestaurants();
        } catch (Exception e) {
            e.printStackTrace();
        }


        request.setAttribute("manayunkRestaurants", manayunkRestaurants);

        List<String> safestSchools = null;
        try {
            safestSchools = neighborhoodModel.getSafestSchools();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("safestSchools", safestSchools);


        List<String> subwayAndBus = null;
        try {
            subwayAndBus = neighborhoodModel.getSubwayAndBus();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("subwayAndBus", subwayAndBus);


        List<String> housesForSale = null;
        try {
            housesForSale = neighborhoodModel.getHousesForSale();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("housesForSale", housesForSale);

        // send to JSP page (view)
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view_neighborhoods.jsp");
        dispatcher.forward(request, response);
    }

}
