package Model;

public class MessagingVO {

		private int msg_seq;
		private String msg_content;
		private String mem_id;
		private String msg_time;
		private String mem_name;
		private String mem_guardian_tel;
		
		
		public MessagingVO(String msg_content, String msg_time, String mem_name, String mem_guardian_tel) {
			super();
			this.msg_content = msg_content;
			this.msg_time = msg_time;
			this.mem_name = mem_name;
			this.mem_guardian_tel = mem_guardian_tel;
		}
		
		public MessagingVO(int msg_seq, String msg_content, String mem_id, String msg_time) {
			
			this.msg_seq = msg_seq;
			this.msg_content = msg_content;
			this.mem_id = mem_id;
			this.msg_time = msg_time;
		}
		
		public String getMem_name() {
			return mem_name;
		}
		
		public void setMem_name(String mem_name) {
			this.mem_name = mem_name;
		}
		
		public String getMem_guardian_tel() {
			return mem_guardian_tel;
		}
		
		public void setMem_guardian_tel(String mem_guardian_tel) {
			this.mem_guardian_tel = mem_guardian_tel;
		}
		
		public int getMsg_seq() {
			return msg_seq;
		}
		public void setMsg_seq(int msg_seq) {
			this.msg_seq = msg_seq;
		}
		public String getMsg_content() {
			return msg_content;
		}
		public void setMsg_content(String msg_content) {
			this.msg_content = msg_content;
		}
		public String getMem_id() {
			return mem_id;
		}
		public void setMem_id(String mem_id) {
			this.mem_id = mem_id;
		}
		public String getMsg_time() {
			return msg_time;
		}
		public void setMsg_time(String msg_time) {
			this.msg_time = msg_time;
		}
		
		
}
