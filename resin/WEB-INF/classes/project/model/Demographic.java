package project.model;

public class Demographic {

    private int id;
    private String ethnicity;
    private int median_age_group;
    private int median_salary;
    private double unemployment;
    private String neighborhoodName;
    private int zipcode;

    public Demographic(int id, String ethnicity, int median_age_group, int median_salary, double unemployment,
                       String neighborhoodName, int zipcode) {
        super();
        this.id = id;
        this.ethnicity = ethnicity;
        this.median_age_group = median_age_group;
        this.median_salary = median_salary;
        this.unemployment = unemployment;
        this.neighborhoodName = neighborhoodName;
        this.zipcode = zipcode;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEthnicity() {
        return ethnicity;
    }

    public void setEthnicity(String ethnicity) {
        this.ethnicity = ethnicity;
    }

    public int getMedian_age_group() {
        return median_age_group;
    }

    public void setMedian_age_group(int median_age_group) {
        this.median_age_group = median_age_group;
    }

    public int getMedian_salary() {
        return median_salary;
    }

    public void setMedian_salary(int median_salary) {
        this.median_salary = median_salary;
    }

    public double getUnemployment() {
        return unemployment;
    }

    public void setUnemployment(double unemployment) {
        this.unemployment = unemployment;
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
