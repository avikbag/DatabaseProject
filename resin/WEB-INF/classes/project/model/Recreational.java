package project.model;

public class Recreational {
    private int id;
    private String name;
    private String type;
    private String ageGroup;
    private int rating;
    private String neighborhoodName;
    private int zipcode;

    public Recreational(int id, String name, String type, String ageGroup, int rating, String neighborhoodName,
                        int zipcode) {
        super();
        this.id = id;
        this.name = name;
        this.type = type;
        this.ageGroup = ageGroup;
        this.rating = rating;
        this.neighborhoodName = neighborhoodName;
        this.zipcode = zipcode;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAgeGroup() {
        return ageGroup;
    }

    public void setAgeGroup(String ageGroup) {
        this.ageGroup = ageGroup;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getNeighborhoodName() {
        return neighborhoodName;
    }

    public void setNeighborhoodName(String neighborhoodName) {
        this.neighborhoodName = neighborhoodName;
    }

    public int getZipcode() {
        return zipcode;
    }

    public void setZipcode(int zipcode) {
        this.zipcode = zipcode;
    }

}
