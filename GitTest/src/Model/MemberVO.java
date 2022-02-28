package Model;

public class MemberVO {

	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String mem_gender;	
	private String mem_tel;
	private String mem_guardian_tel;
	private String mem_birthdate;
	private String jp_num;
	
	public MemberVO() {
		// TODO Auto-generated constructor stub
	}
	
	public MemberVO(String mem_id, String mem_pw, String mem_name, String mem_gender, String mem_tel, String mem_guardian_tel, String mem_birthdate 
			 , String jp_num) {
		
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_gender = mem_gender;
		this.mem_tel = mem_tel;
		this.mem_guardian_tel = mem_guardian_tel;
		this.mem_birthdate = mem_birthdate;
		this.jp_num = jp_num;
		
	}





	public MemberVO(String mem_id, String mem_pw) {
		
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		
	}


	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}


	public String getMem_pw() {
		return mem_pw;
	}


	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}


	public String getMem_name() {
		return mem_name;
	}


	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}


	public String getMem_gender() {
		return mem_gender;
	}


	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}


	public String getMem_birthdate() {
		return mem_birthdate;
	}


	public void setMem_birthdate(String mem_birthdate) {
		this.mem_birthdate = mem_birthdate;
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
