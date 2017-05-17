package project.model;

public class Property {
    private int id;
    private String type;
    private String status;
    private int price;
    private int size;
    private String bedBath;
    private String neighborhoodName;
    private int zipcode;

    public Property(int id, String type, String status, int price, int size, String bedBath, String neighborhoodName,
                    int zipcode) {
        super();
        this.id = id;
        this.type = type;
        this.status = status;
        this.price = price;
        this.size = size;
        this.bedBath = bedBath;
        this.neighborhoodName = neighborhoodName;
        this.zipcode = zipcode;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getBedBath() {
        return bedBath;
    }

    public void setBedBath(String bedBath) {
        this.bedBath = bedBath;
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
