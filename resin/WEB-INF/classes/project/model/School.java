package project.model;

public class School {
    private int id;
    private String name;
    private String gradeLevel;
    private String enrollment;
    private String type;
    private String neighborhoodName;
    private int zipcode;

    public School(int id, String name, String gradeLevel, String enrollment, String type, String neighborhoodName,
                  int zipcode) {
        super();
        this.id = id;
        this.name = name;
        this.gradeLevel = gradeLevel;
        this.enrollment = enrollment;
        this.type = type;
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

    public String getGradeLevel() {
        return gradeLevel;
    }

    public void setGradeLevel(String gradeLevel) {
        this.gradeLevel = gradeLevel;
    }

    public String getEnrollment() {
        return enrollment;
    }

    public void setEnrollment(String enrollment) {
        this.enrollment = enrollment;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
