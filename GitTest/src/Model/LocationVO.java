package Model;

public class LocationVO {

	private int jp_loc_seq;
	private String mem_id;
	private String latitude;
	private String longitude;
	private String loc_memo;
	private String loc_date;

	public LocationVO(int jp_loc_seq, String mem_id, String latitude, String longitude, String loc_memo,
			String loc_date) {

		this.jp_loc_seq = jp_loc_seq;
		this.mem_id = mem_id;
		this.latitude = latitude;
		this.longitude = longitude;
		this.loc_memo = loc_memo;
		this.loc_date = loc_date;
	}

	public int getJp_loc_seq() {
		return jp_loc_seq;
	}

	public void setJp_loc_seq(int jp_loc_seq) {
		this.jp_loc_seq = jp_loc_seq;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getLoc_memo() {
		return loc_memo;
	}

	public void setLoc_memo(String loc_memo) {
		this.loc_memo = loc_memo;
	}

	public String getLoc_date() {
		return loc_date;
	}

	public void setLoc_date(String loc_date) {
		this.loc_date = loc_date;
	}

}
