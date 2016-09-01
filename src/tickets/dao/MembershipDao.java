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

import tickets.modal.Admin;





@Service("membershipDao")

@Transactional
public class MembershipDao {

private JdbcTemplate jdbcTemplate;

@Resource(name="dataSource")
public void setDataSource(DataSource dataSource) {
    this.jdbcTemplate=new JdbcTemplate(dataSource);
   
} 
  
     
    
public int add_membership( Integer user_id , Integer event_id,Integer tickets )
{

	try {
		int result=this.jdbcTemplate.update(
		        "insert into tickets_membership (user_id, event_id,tickets) values (?,?,?)", user_id, event_id,tickets);
		return result;
	} catch (Exception e) {
		return 0;
		// TODO: handle exception
	}
	 
	
}  


public int update_membership( Integer user_id , Integer event_id,Integer tickets )
{

	try {
		int result=this.jdbcTemplate.update(
		        "update tickets_membership set tickets=? where user_id=? and event_id=? ", tickets,user_id,event_id);
		return result;
	} catch (Exception e) {
		return 0;
		// TODO: handle exception
	}
	 
	 
}  

	
   
 
public int checkAlreadyExistMembership(Integer user_id , Integer event_id)
{
	try {
		String sql="SELECT id FROM tickets_membership where user_id="+user_id+" and event_id="+event_id+" ";
		Integer result=jdbcTemplate.queryForObject(sql,Integer.class);
		return result;
	} catch (Exception e) {
		return 0;
		// TODO: handle exception
	}
	
	
} 



public int getTotalTicketAdded(Integer event_id, Integer user_id)
{
	try {
		String sql="SELECT SUM(tickets) FROM tickets_membership where event_id="+event_id+" and user_id!="+user_id+" ";
		Integer result=jdbcTemplate.queryForObject(sql,Integer.class);
		return result;
	} catch (Exception e) {
		return 0;
		// TODO: handle exception
	}
	
} 

  
public int getAvailableEventTickets(Integer event_id)
{
	try {
		String sql="SELECT total_ticket FROM tickets_events where id="+event_id+" ";
		Integer result=jdbcTemplate.queryForObject(sql,Integer.class);
		return result;
	} catch (Exception e) {
		return 0;
		// TODO: handle exception
	}
	
	
} 



public List<Admin> listAdmin(String role) {
	
	 
try {
	String 
		sql= "select * from tickets_admin where role='"+role.trim()+"' ORDER BY date_time DESC ";
	// Maps a SQL result to a Java object
	RowMapper<Admin> mapper = new RowMapper<Admin>() {  
      public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
      	Admin param = new Admin();
      	param.setId(rs.getInt("id"));
      	param.setEmail_id(rs.getString("email_id"));
      	param.setFull_name(rs.getString("full_name"));
      	param.setDate_time(rs.getString("date_time"));
      	param.setRole(rs.getString("role"));
      	param.setStatus(rs.getInt("status"));
      	
          return param;
      }
  };
  return jdbcTemplate.query(sql, mapper);
} catch (Exception e) {
	// TODO: handle exception
	return null;
}



}


 



  
  


}