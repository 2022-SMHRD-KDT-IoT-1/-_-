package Model;

public class CommunityVO {

	private int article_seq;
	private String article_title;
	private String article_content;
	private String article_file1;
	private String article_file2;
	private String article_date;
	private String mem_id;

	public CommunityVO(int article_seq, String article_title, String article_content, String article_file1,
			String article_file2, String article_date, String mem_id) {

		this.article_seq = article_seq;
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_file1 = article_file1;
		this.article_file2 = article_file2;
		this.article_date = article_date;
		this.mem_id = mem_id;
	}

	public int getArticle_seq() {
		return article_seq;
	}

	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}

	public String getArticle_title() {
		return article_title;
	}

	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}

	public String getArticle_content() {
		return article_content;
	}

	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}

	public String getArticle_file1() {
		return article_file1;
	}

	public void setArticle_file1(String article_file1) {
		this.article_file1 = article_file1;
	}

	public String getArticle_file2() {
		return article_file2;
	}

	public void setArticle_file2(String article_file2) {
		this.article_file2 = article_file2;
	}

	public String getArticle_date() {
		return article_date;
	}

	public void setArticle_date(String article_date) {
		this.article_date = article_date;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

}
