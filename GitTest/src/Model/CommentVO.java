package Model;

public class CommentVO {

		private int comm_seq;
		private String article_seq;
		private String comm_content;
		private String comm_date;
		private String mem_id;
		
		public CommentVO(int comm_seq, String article_seq, String comm_content, String comm_date, String mem_id) {
			
			this.comm_seq = comm_seq;
			this.article_seq = article_seq;
			this.comm_content = comm_content;
			this.comm_date = comm_date;
			this.mem_id = mem_id;
		}
		
		
		public CommentVO(String comm_content) {

			this.comm_content = comm_content;
		}


		public int getComm_seq() {
			return comm_seq;
		}
		public void setComm_seq(int comm_seq) {
			this.comm_seq = comm_seq;
		}
		public String getArticle_seq() {
			return article_seq;
		}
		public void setArticle_seq(String article_seq) {
			this.article_seq = article_seq;
		}
		public String getComm_content() {
			return comm_content;
		}
		public void setComm_content(String comm_content) {
			this.comm_content = comm_content;
		}
		public String getComm_date() {
			return comm_date;
		}
		public void setComm_date(String comm_date) {
			this.comm_date = comm_date;
		}
		public String getMem_id() {
			return mem_id;
		}
		public void setMem_id(String mem_id) {
			this.mem_id = mem_id;
		}
		
		
		
		
}
