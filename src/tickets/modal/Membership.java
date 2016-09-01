package tickets.modal;

import java.sql.Date;

public class Membership {
	
	private Integer id;
	private Integer user_id;
	private Integer event_id;
	private Integer tickets;
	private Date membership_datetime;
	
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
	public Integer getTickets() {
		return tickets;
	}
	public void setTickets(Integer tickets) {
		this.tickets = tickets;
	}
	public Date getMembership_datetime() {
		return membership_datetime;
	}
	public void setMembership_datetime(Date membership_datetime) {
		this.membership_datetime = membership_datetime;
	}
	

}
