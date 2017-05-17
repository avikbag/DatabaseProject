package project.model;

public class Food {

    private String name;
    private String address;
    private String category;

    public Food(String name, String address, String category) {
        super();
        this.name = name;
        this.address = address;
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
	
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
