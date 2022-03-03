package Model;

public class GpsVO {
	
	
	private double latitude;
	private double longitude;
	private String loc_date;
	
	public GpsVO(double latitude, double longitude, String loc_date) {
		this.latitude = latitude;
		this.longitude = longitude;
		this.loc_date = loc_date;
		
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public String getLoc_date() {
		return loc_date;
	}

	public void setLoc_date(String loc_date) {
		this.loc_date = loc_date;
	}
	
	
}
