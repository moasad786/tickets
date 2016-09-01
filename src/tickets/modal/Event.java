package tickets.modal;

import java.sql.Date;
import java.sql.Time;

public class Event {
	
	private Integer id;
	private String event_title;
	private String 	event_desc;
	private String event_img;

	private Date 	event_start_date;
	private Time 	event_start_time;
	
	private Date 	event_end_date;
	private Time 	event_end_time;
	private Integer total_ticket;
	private Double 	event_price;
	private String 	date_time;
	private String 	event_address;
	private Integer manager_id;
	private Integer category_id;
	private String category_name;
	private String manager_name;
	private String manager_phone;
	private String manager_email;
	
	private Integer ticket_assigned;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEvent_title() {
		return event_title;
	}
	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}
	public String getEvent_desc() {
		return event_desc;
	}
	public void setEvent_desc(String event_desc) {
		this.event_desc = event_desc;
	}
	public String getEvent_img() {
		return event_img;
	}
	public void setEvent_img(String event_img) {
		this.event_img = event_img;
	}
	
	
	public Double getEvent_price() {
		return event_price;
	}
	public void setEvent_price(Double event_price) {
		this.event_price = event_price;
	}
	public String getDate_time() {
		return date_time;
	}
	public void setDate_time(String date_time) {
		this.date_time = date_time;
	}
	public String getEvent_address() {
		return event_address;
	}

	public void setEvent_address(String event_address) {
		this.event_address = event_address;
	}
	
	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
	
	

	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public Date getEvent_start_date() {
		return event_start_date;
	}
	public void setEvent_start_date(Date event_start_date) {
		this.event_start_date = event_start_date;
	}
	public Time getEvent_start_time() {
		return event_start_time;
	}
	public void setEvent_start_time(Time event_start_time) {
		this.event_start_time = event_start_time;
	}
	public Date getEvent_end_date() {
		return event_end_date;
	}
	public void setEvent_end_date(Date event_end_date) {
		this.event_end_date = event_end_date;
	}
	public Time getEvent_end_time() {
		return event_end_time;
	}
	public void setEvent_end_time(Time event_end_time) {
		this.event_end_time = event_end_time;
	}
	public Integer getTotal_ticket() {
		return total_ticket;
	}
	public void setTotal_ticket(Integer total_ticket) {
		this.total_ticket = total_ticket;
	}
	public Integer getManager_id() {
		return manager_id;
	}
	public void setManager_id(Integer manager_id) {
		this.manager_id = manager_id;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public String getManager_phone() {
		return manager_phone;
	}
	public void setManager_phone(String manager_phone) {
		this.manager_phone = manager_phone;
	}
	public String getManager_email() {
		return manager_email;
	}
	public void setManager_email(String manager_email) {
		this.manager_email = manager_email;
	}
	public Integer getTicket_assigned() {
		return ticket_assigned;
	}
	public void setTicket_assigned(Integer ticket_assigned) {
		this.ticket_assigned = ticket_assigned;
	}
	
	
}
