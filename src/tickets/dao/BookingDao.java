package tickets.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tickets.modal.Booking;
import tickets.modal.Users;

@Service("bookingDao")
@Transactional
public class BookingDao {

	
	 
	 
		private JdbcTemplate jdbcTemplate;
		@Resource(name="dataSource")
		public void setDataSource(DataSource dataSource)
		{
		    this.jdbcTemplate=new JdbcTemplate(dataSource);
		    
		    
		} 
		
	
	 

public int add_booking( Integer user_id , Integer event_id,Integer member_id , String ticket_id,Integer number_ticket, String message, Double total_price )
{

	try {
		int result=this.jdbcTemplate.update(
		        "insert into tickets_booking (user_id, event_id,member_id,ticket_id,number_ticket,message, total_price) values (?, ?,?,?,?,?,?)", user_id, event_id,member_id,ticket_id,number_ticket,message,total_price);
		return result;
	} catch (Exception e) {
 //System.out.println("dao..."+e);
		return 0;
		// TODO: handle exception
	}
	 
	
}  
	
 

public List<Booking> bookingList(Integer member_id,Integer user_id,Integer offset, Integer limit) {
	 
	  
try { 
	String  sql=""; 
   if(member_id!=null && member_id.intValue()>0)
   {
		sql= "SELECT   b.id,b.ticket_id,b.event_id,b.total_price ,b.member_id,b.number_ticket,b.status,b.message,b.booking_datetime,u.first_name,u.last_name ,b.user_id,e.event_title,e.event_img FROM  tickets_booking b JOIN tickets_users u ON b.user_id=u.id join tickets_events e ON e.id=b.event_id where b.member_id="+member_id+" ORDER BY b.booking_datetime DESC";
 
   }
   else if(user_id!=null && user_id.intValue()>0)
   {
		sql= "SELECT  b.id,b.ticket_id,b.event_id,b.total_price ,b.member_id,b.number_ticket,b.status,b.message,b.booking_datetime,u.first_name,u.last_name ,b.user_id,e.event_title,e.event_img FROM  tickets_booking b JOIN tickets_users u ON b.user_id=u.id join tickets_events e ON e.id=b.event_id where b.user_id="+user_id+" ORDER BY b.booking_datetime DESC";

   }
   else
   {
		sql= "SELECT b.id,b.ticket_id,b.event_id,b.total_price ,b.member_id,b.number_ticket,b.status,b.message,b.booking_datetime,u.first_name,u.last_name ,b.user_id,e.event_title,e.event_img FROM  tickets_booking b JOIN tickets_users u ON b.user_id=u.id join tickets_events e ON e.id=b.event_id ORDER BY b.booking_datetime DESC LIMIT "+limit+" OFFSET "+offset+" ";

   }
    
   
        
	// Maps a SQL result to a Java object
	RowMapper<Booking> mapper = new RowMapper<Booking>() {  
      public Booking mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Booking param = new Booking();
      	param.setId(rs.getInt("id"));
      	param.setEvent_id(rs.getInt("event_id"));
      param.setTicket_id(rs.getString("ticket_id"));
      	param.setUser_id(rs.getInt("user_id"));
      	param.setMember_id(rs.getInt("member_id"));
      	param.setMessage(rs.getString("message"));
      	param.setTotal_price(rs.getDouble("total_price"));
       param.setNumber_ticket(rs.getInt("number_ticket"));
      	param.setBooking_datetime(rs.getTimestamp("booking_datetime"));
      	param.setFirst_name(rs.getString("first_name"));
      	param.setLast_name(rs.getString("last_name"));
      	param.setEvent_title(rs.getString("event_title"));
      	param.setStatus(rs.getInt("status"));
      	param.setEvent_img(rs.getString("event_img"));
      	 
          return param;
      }
  };
  return jdbcTemplate.query(sql, mapper);
} catch (Exception e) {
	// TODO: handle exception
	System.out.println("dao..."+e);
	return null;
}



}



public int count_total_row()
{

	try {
		String sql="select count(id) from  tickets_booking";
		Integer result=jdbcTemplate.queryForObject(sql,Integer.class);
		return result;
	} catch (Exception e) {

		return 0;
		// TODO: handle exception
	}
	
	
}  






public int update_status_booking(Integer status ,Integer id)
{

	try {
		int result=this.jdbcTemplate.update(
		        "update tickets_booking set status=? where id=?", status, id);
		return result;
	} catch (Exception e) {

		return 0;
		// TODO: handle exception
	}
	
	
}  


	
	
}
