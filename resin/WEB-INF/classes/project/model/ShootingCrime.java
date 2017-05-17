package project.model;

import java.sql.Date;

public class ShootingCrime {
    private int id;
    private Date incidentTime;
    private boolean fatality;
    private boolean officerInvolved;
    private String neighborhoodName;
    private int zipcode;

    public ShootingCrime(int id, Date incidentTime, boolean fatality, boolean officerInvolved, String neighborhoodName,
                         int zipcode) {
        super();
        this.id = id;
        this.incidentTime = incidentTime;
        this.fatality = fatality;
        this.officerInvolved = officerInvolved;
        this.neighborhoodName = neighborhoodName;
        this.zipcode = zipcode;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getIncidentTime() {
        return incidentTime;
    }

    public void setIncidentTime(Date incidentTime) {
        this.incidentTime = incidentTime;
    }

    public boolean isFatality() {
        return fatality;
    }

    public void setFatality(boolean fatality) {
        this.fatality = fatality;
    }

    public boolean isOfficerInvolved() {
        return officerInvolved;
    }

    public void setOfficerInvolved(boolean officerInvolved) {
        this.officerInvolved = officerInvolved;
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
