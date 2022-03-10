package Model;

public class GpsVO {
	
	private int jp_loc_seq;
	private String mem_id;
	private String mem_name;
	private String mem_tel;
	private String mem_guardian_tel;
	private String jp_num;
	

	private double latitude;
	private double longitude;
	private String loc_memo;
	private String loc_date;

	
	public GpsVO() {
	
	}

	public GpsVO(int jp_loc_seq, double latitude, double longitude, String mem_id, String mem_name, String mem_tel, String mem_guardian_tel, String jp_num
			) {
		
		this.jp_loc_seq = jp_loc_seq;
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_tel = mem_tel;
		this.mem_guardian_tel = mem_guardian_tel;
		this.jp_num = jp_num;
		this.latitude = latitude;
		this.longitude = longitude;
	}





	public GpsVO(int jp_loc_seq, String mem_id, double latitude, double longitude, String loc_memo, String loc_date) {
		
		this.jp_loc_seq = jp_loc_seq;
		this.mem_id = mem_id;
		this.latitude = latitude;
		this.longitude = longitude;
		this.loc_memo = loc_memo;
		this.loc_date = loc_date;
	}

	
	


	public GpsVO(double latitude, double longitude, String loc_date) {
		this.latitude = latitude;
		this.longitude = longitude;
		this.loc_date = loc_date;
		
	}

	public GpsVO(String mem_id, double latitude, double longitude, String loc_memo) {
		this.latitude = latitude;
		this.longitude = longitude;
		this.mem_id = mem_id;
		this.loc_memo = loc_memo;
	}

	
	public int getJp_loc_seq() {
		return jp_loc_seq;
	}

	public void setJp_loc_seq(int jp_loc_seq) {
		this.jp_loc_seq = jp_loc_seq;
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
	
	public String getLoc_memo() {
		return loc_memo;
	}

	public void setLoc_memo(String loc_memo) {
		this.loc_memo = loc_memo;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_name() {
		return mem_name;
	}





	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}





	public String getMem_tel() {
		return mem_tel;
	}





	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}





	public String getMem_guardian_tel() {
		return mem_guardian_tel;
	}





	public void setMem_guardian_tel(String mem_guardian_tel) {
		this.mem_guardian_tel = mem_guardian_tel;
	}





	public String getJp_num() {
		return jp_num;
	}





	public void setJp_num(String jp_num) {
		this.jp_num = jp_num;
	}
	
}
