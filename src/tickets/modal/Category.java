package tickets.modal;

public class Category {
	
	private Integer id;
	private String category_name;
	private String category_desc;
	private String 	category_date_time;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getCategory_desc() {
		return category_desc;
	}
	public void setCategory_desc(String category_desc) {
		this.category_desc = category_desc;
	}
	public String getCategory_date_time() {
		return category_date_time;
	}
	public void setCategory_date_time(String category_date_time) {
		this.category_date_time = category_date_time;
	}
	

}
