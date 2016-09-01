package tickets.modal;

public class Users {
	
	private Integer id;
	private String first_name;
	private String last_name;
	private String email_id;
	private String password;
	private String phone;
	private String address;
	private String role;
	private Integer 	status;
	private String 	datetime_added;
	
	private Integer tickets;
	 
	public Integer getId() {
		return id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public String getEmail_id() {
		return email_id;
	}
	public String getPassword() {
		return password;
	}
	public String getPhone() {
		return phone;
	}
	public String getAddress() {
		return address;
	}
	public String getRole() {
		return role;
	}
	public Integer getStatus() {
		return status;
	}
	public String getDatetime_added() {
		return datetime_added;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public void setDatetime_added(String datetime_added) {
		this.datetime_added = datetime_added;
	}
	public Integer getTickets() {
		return tickets;
	}
	public void setTickets(Integer tickets) {
		this.tickets = tickets;
	}
}
