package Model;

public class SosVO {

	private int sos_seq;
	private String sos_time;
	private String jp_loc_seq;
	private String sos_memo;
	private String sos_status;

	public SosVO(int sos_seq, String sos_time, String jp_loc_seq, String sos_memo, String sos_status) {

		this.sos_seq = sos_seq;
		this.sos_time = sos_time;
		this.jp_loc_seq = jp_loc_seq;
		this.sos_memo = sos_memo;
		this.sos_status = sos_status;
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

	public String getJp_loc_seq() {
		return jp_loc_seq;
	}

	public void setJp_loc_seq(String jp_loc_seq) {
		this.jp_loc_seq = jp_loc_seq;
	}

	public String getSos_memo() {
		return sos_memo;
	}

	public void setSos_memo(String sos_memo) {
		this.sos_memo = sos_memo;
	}

	public String getSos_status() {
		return sos_status;
	}

	public void setSos_status(String sos_status) {
		this.sos_status = sos_status;
	}

}
