package tickets.modal;

import java.sql.Date;
import java.sql.Timestamp;

public class Booking {
	private Integer id;
	private Integer user_id;
	private Integer event_id;
	private Integer member_id;
	private String ticket_id;
	private Integer number_ticket;
	private String 	message;
	private Timestamp booking_datetime;
	private String 	event_title;
	private String 	first_name;
	private String 	last_name;
	private Integer status;
	private Double total_price;
	private String 	event_img;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getEvent_id() {
		return event_id;
	}
	public void setEvent_id(Integer event_id) {
		this.event_id = event_id;
	}
	public Integer getMember_id() {
		return member_id;
	}
	public void setMember_id(Integer member_id) {
		this.member_id = member_id;
	}
	public String getTicket_id() {
		return ticket_id;
	}
	public void setTicket_id(String ticket_id) {
		this.ticket_id = ticket_id;
	}
	public Integer getNumber_ticket() {
		return number_ticket;
	}
	public void setNumber_ticket(Integer number_ticket) {
		this.number_ticket = number_ticket;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Timestamp getBooking_datetime() {
		return booking_datetime;
	}
	public void setBooking_datetime(Timestamp booking_datetime) {
		this.booking_datetime = booking_datetime;
	}
	public String getEvent_title() {
		return event_title;
	}
	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Double getTotal_price() {
		return total_price;
	}
	public void setTotal_price(Double total_price) {
		this.total_price = total_price;
	}
	public String getEvent_img() {
		return event_img;
	}
	public void setEvent_img(String event_img) {
		this.event_img = event_img;
	}
	
	
}
