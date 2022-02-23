package Model;

public class SosVO {

	private int sos_seq;
	private String sos_time;
	private String latitude;
	private String longtitude;
	private String mem_name;
	private String mem_tel;
	private String mem_guardian_tel;
	private String jp_num;
	
	public SosVO(int sos_seq, String sos_time, String latitude, String longtitude, String mem_name, String mem_tel,
			String mem_guardian_tel, String jp_num) {
		super();
		this.sos_seq = sos_seq;
		this.sos_time = sos_time;
		this.latitude = latitude;
		this.longtitude = longtitude;
		this.mem_name = mem_name;
		this.mem_tel = mem_tel;
		this.mem_guardian_tel = mem_guardian_tel;
		this.jp_num = jp_num;
	}

	public int getSos_seq() {
		return sos_seq;
	}

	public void setSos_seq(int sos_seq) {
		this.sos_seq = sos_seq;
	}

	public String getSos_time() {
		return sos_time;
	}

	public void setSos_time(String sos_time) {
		this.sos_time = sos_time;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongtitude() {
		return longtitude;
	}

	public void setLongtitude(String longtitude) {
		this.longtitude = longtitude;
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