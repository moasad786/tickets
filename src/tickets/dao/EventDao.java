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

import tickets.modal.Event;


@Service("eventDao")
@Transactional
public class EventDao {
 
	
 
private JdbcTemplate jdbcTemplate;
@Resource(name="dataSource")
public void setDataSource(DataSource dataSource)
{
    this.jdbcTemplate=new JdbcTemplate(dataSource);
    
    
} 


 
public int add_event(Integer id,Integer category_id, String event_title,String event_desc,String event_address,  String event_img, String event_start_date,String event_start_time,String event_end_date,String event_end_time, Integer total_ticket ,String event_price ,Integer manager_id )
{

	try {
		int result=this.jdbcTemplate.update(
		        "insert into tickets_events (event_title, event_desc,event_address,event_img,event_start_date,event_start_time,event_end_date,event_end_time,total_ticket,event_price,manager_id,category_id) values (?, ?, ?, ?,?,?,?,?,?,?,?,?)", event_title, event_desc,event_address,event_img,event_start_date,event_start_time,event_end_date,event_end_time,total_ticket,event_price,manager_id,category_id);
		return result;
	} catch (Exception e) {
 System.out.println("dao..."+e);
		return 0;
		// TODO: handle exception
	}
	 
	
}  
	
  

public int delete_event(Integer id)
{

	try {
		int result=this.jdbcTemplate.update(
		        "delete from tickets_events where id=?", id);
		return result;
	} catch (Exception e) {

		return 0;
		// TODO: handle exception
	}
	
	
}  
   

   
 
public List<Event> listEvent(String event_title, String event_date) {  
	 
	  
try {
	String sql="";
	if(event_title!=null && !event_title.trim().equals("") && event_date!=null && !event_date.trim().equals(""))
	{
		sql= "select * from tickets_events  where event_title like '%"+event_title+"%' and event_date='"+event_date+"'  ORDER BY date_time DESC ";

	}
	else if(event_title!=null && !event_title.trim().equals(""))
	{
		sql= "select * from tickets_events  where event_title like '%"+event_title+"%'  ORDER BY date_time DESC ";

	}
	else if(event_date!=null && !event_date.trim().equals(""))
	{
		sql= "select * from tickets_events  where  event_date='"+event_date+"'  ORDER BY date_time DESC ";

	}
	else
	{
		sql= "select * from tickets_events   ORDER BY date_time DESC ";
	}
	RowMapper<Event> mapper = new RowMapper<Event>() {  
      public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Event param = new Event();
      	param.setId(rs.getInt("id"));
      	param.setCategory_id(rs.getInt("category_id"));
      	param.setEvent_title(rs.getString("event_title"));
      	param.setEvent_desc(rs.getString("event_desc"));
      param.setEvent_img(rs.getString("event_img"));
    param.setEvent_start_date(rs.getDate("event_start_date"));
    param.setEvent_start_time(rs.getTime("event_start_time"));
    param.setEvent_end_date(rs.getDate("event_end_date"));
    param.setEvent_end_time(rs.getTime("event_end_time"));
    param.setTotal_ticket(rs.getInt("total_ticket"));
      param.setEvent_price(rs.getDouble("event_price"));
      param.setEvent_address(rs.getString("event_address"));
      param.setManager_id(rs.getInt("manager_id"));
     
      	 
          return param;
      }
  };
  return jdbcTemplate.query(sql, mapper);
} catch (Exception e) { 
	System.out.println("e..."+e);
	// TODO: handle exception
	return null;
}


} 



public List<Event> listEventByManagerId(Integer manager_id) {  
	 
	  
try {
	   
		String sql= "select * from tickets_events where manager_id="+manager_id+"  ORDER BY date_time DESC ";
	
	RowMapper<Event> mapper = new RowMapper<Event>() {  
      public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Event param = new Event();
      	param.setId(rs.getInt("id"));
      	param.setCategory_id(rs.getInt("category_id"));
      	param.setEvent_title(rs.getString("event_title"));
      	param.setEvent_desc(rs.getString("event_desc"));
      param.setEvent_img(rs.getString("event_img"));
    param.setEvent_start_date(rs.getDate("event_start_date"));
    param.setEvent_start_time(rs.getTime("event_start_time"));
    param.setEvent_end_date(rs.getDate("event_end_date"));
    param.setEvent_end_time(rs.getTime("event_end_time"));
    param.setTotal_ticket(rs.getInt("total_ticket"));
      param.setEvent_price(rs.getDouble("event_price"));
      param.setEvent_address(rs.getString("event_address"));
      param.setManager_id(rs.getInt("manager_id"));
     
      	 
          return param;
      }
  };
  return jdbcTemplate.query(sql, mapper);
} catch (Exception e) { 
	System.out.println("e..."+e);
	// TODO: handle exception
	return null;
}


}


public List<Event> listEventByMembersId(Integer member_id) {  
	 
	  
try {
	   
		String sql= "SELECT * FROM tickets_events e JOIN tickets_membership m ON e.id=m.event_id where m.user_id="+member_id+"  ORDER BY e.date_time DESC ";
	 
	RowMapper<Event> mapper = new RowMapper<Event>() {  
      public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Event param = new Event();
      	param.setId(rs.getInt("id"));
      	param.setCategory_id(rs.getInt("category_id"));
      	param.setEvent_title(rs.getString("event_title"));
      	param.setEvent_desc(rs.getString("event_desc"));
      param.setEvent_img(rs.getString("event_img"));
    param.setEvent_start_date(rs.getDate("event_start_date"));
    param.setEvent_start_time(rs.getTime("event_start_time"));
    param.setEvent_end_date(rs.getDate("event_end_date"));
    param.setEvent_end_time(rs.getTime("event_end_time"));
    param.setTotal_ticket(rs.getInt("total_ticket"));
      param.setEvent_price(rs.getDouble("event_price"));
      param.setEvent_address(rs.getString("event_address"));
      param.setManager_id(rs.getInt("manager_id"));
      param.setTicket_assigned(rs.getInt("tickets"));
      
      	 
          return param;
      }
  };
  return jdbcTemplate.query(sql, mapper);
} catch (Exception e) { 
	System.out.println("e..."+e);
	// TODO: handle exception
	return null;
}


}


public List<Event> listRelatedEventByCategoryId(Integer category_id, Integer event_id) {  
	 
	  
try { 
	    
		String sql= "SELECT * FROM tickets_events where category_id="+category_id+" and id!="+event_id+"  ORDER BY date_time DESC ";
	 
	RowMapper<Event> mapper = new RowMapper<Event>() {  
      public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Event param = new Event();
      	param.setId(rs.getInt("id"));
      	param.setCategory_id(rs.getInt("category_id"));
      	param.setEvent_title(rs.getString("event_title"));
      param.setEvent_img(rs.getString("event_img"));
    param.setEvent_start_date(rs.getDate("event_start_date"));
    param.setEvent_start_time(rs.getTime("event_start_time"));
    param.setEvent_end_date(rs.getDate("event_end_date"));
    param.setEvent_end_time(rs.getTime("event_end_time"));
      param.setEvent_price(rs.getDouble("event_price"));      
      	
          return param;
      }
  };
  return jdbcTemplate.query(sql, mapper);
} catch (Exception e) { 
	System.out.println("e..."+e);
	// TODO: handle exception
	return null;
}


}



public List<Event> listEventAutoComplete(String event_title) {  
	  
try {
	String 
		sql= "select * from tickets_events  where event_title like '%"+event_title+"%'  ORDER BY date_time DESC ";

	RowMapper<Event> mapper = new RowMapper<Event>() {  
      public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Event param = new Event();
      	param.setId(rs.getInt("id"));
      	param.setEvent_title(rs.getString("event_title"));
      
          return param;
      }
  };
  return jdbcTemplate.query(sql, mapper);
} catch (Exception e) {
	// TODO: handle exception
	return null;
}


} 
 

public Event findByID(Integer id) {  
	 
	       
try { 
	String 
		sql= "SELECT * FROM tickets_events e JOIN tickets_category c ON e.category_id=c.id JOIN tickets_users u ON e.manager_id=u.id AND u.role='managers' where e.id="+id+" ";
	RowMapper<Event> mapper = new RowMapper<Event>() {  
      public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Event param = new Event();
    		param.setId(rs.getInt("id"));
          	param.setCategory_id(rs.getInt("category_id"));
          	param.setEvent_title(rs.getString("event_title"));
          	param.setEvent_desc(rs.getString("event_desc"));
          param.setEvent_img(rs.getString("event_img"));
        param.setEvent_start_date(rs.getDate("event_start_date"));
        param.setEvent_start_time(rs.getTime("event_start_time"));
        param.setEvent_end_date(rs.getDate("event_end_date"));
        param.setEvent_end_time(rs.getTime("event_end_time"));
        param.setTotal_ticket(rs.getInt("total_ticket"));
          param.setEvent_price(rs.getDouble("event_price"));
          param.setEvent_address(rs.getString("event_address"));
          param.setManager_id(rs.getInt("manager_id"));
         param.setManager_name(rs.getString("first_name")+" "+rs.getString("last_name"));
         param.setManager_email(rs.getString("email_id"));
         param.setManager_phone(rs.getString("phone"));
         param.setCategory_name(rs.getString("category_name"));
         
          return param;
      }
  };
  return jdbcTemplate.queryForObject(sql, mapper);
} catch (Exception e) {
	// TODO: handle exception
	return null;
}
 

}

 
 
public int update_event(Integer id,Integer category_id, String event_title,String event_desc,String event_address,  String event_img, String event_start_date,String event_start_time,String event_end_date,String event_end_time, Integer total_ticket ,String event_price ,Integer manager_id )
{

	try {
		int result=0;
		if(event_img!=null && !event_img.trim().equals(""))
		{
			 result=this.jdbcTemplate.update(
			        " update  tickets_events set category_id=?,event_title=? , event_desc=? ,event_address=?, event_img=?  ,event_start_date=? , event_start_time=?,event_end_date=? , event_end_time=?, total_ticket=? ,event_price=?,manager_id=? where id=? ", category_id,event_title, event_desc,event_address, event_img, event_start_date , event_start_time,event_end_date,event_end_time,total_ticket ,event_price,manager_id,id);
			
		}
		else
		{
			result=this.jdbcTemplate.update(
			        " update  tickets_events set category_id=?,event_title=? , event_desc=? ,event_address=? ,event_start_date=? , event_start_time=?,event_end_date=? , event_end_time=?, total_ticket=? ,event_price=?,manager_id=? where id=? ", category_id,event_title, event_desc,event_address, event_start_date , event_start_time,event_end_date,event_end_time,total_ticket ,event_price,manager_id,id);
			
		}
		return result;
	} catch (Exception e) {

		return 0;
		// TODO: handle exception
	}
	
	
}  

 

//
//public int deleteById(Integer id) {
//	try {
// int count=this.jdbcTemplate.update(
//             "delete from tickets_events where id=?",  
//              id);
//return count;
//	} catch (Exception e) {
//	//System.out.println("exception......."+e);
//		return 0;
//		// TODO: handle exception
//}
//	}







	
}
