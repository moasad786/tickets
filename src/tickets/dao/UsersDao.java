package tickets.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tickets.modal.Admin;
import tickets.modal.Users;






@Service("usersDao")
 
@Transactional
public class UsersDao {

private JdbcTemplate jdbcTemplate;

@Resource(name="dataSource")
public void setDataSource(DataSource dataSource) {
    this.jdbcTemplate = new JdbcTemplate(dataSource);
   
}





public int add_users(String first_name, String last_name,String email_id, String password,String phone, String role, Integer status)
{
 
	try {
		int result=this.jdbcTemplate.update(
		        "insert into tickets_users (first_name,last_name,email_id,password,phone,role,status) values (?, ?, ?, ?,?,?,?)", first_name,last_name,email_id, password,phone,role,status);
		return result;
	} catch (Exception e) {
		return 0;
		// TODO: handle exception
	}
	
	
}  
  




public List<Users> listUsers(String role, Integer status) {
	
	  
try { 
	String  sql="";
	if(status!=null)
	{
		sql= "select * from tickets_users where role='"+role+"'  and status="+status+" ORDER BY datetime_Added DESC ";

	} 
	else
	{
		sql= "select * from tickets_users where role='"+role+"' ORDER BY datetime_Added DESC ";

	} 
	
 
	// Maps a SQL result to a Java object
	RowMapper<Users> mapper = new RowMapper<Users>() {  
      public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Users param = new Users();
      	param.setId(rs.getInt("id"));
      	param.setFirst_name(rs.getString("first_name"));
      	param.setLast_name(rs.getString("last_name"));
    	param.setAddress(rs.getString("address"));
      	param.setEmail_id(rs.getString("email_id"));
      	param.setPassword(rs.getString("password"));
      	param.setPhone(rs.getString("phone"));
      	param.setStatus(rs.getInt("status"));
       
      	param.setRole(rs.getString("role"));
      	
          return param;
      }
  };
  return jdbcTemplate.query(sql, mapper);
} catch (Exception e) {
	// TODO: handle exception
	return null;
}



}




public List<Users> listUsersByMembership(Integer event_id) {
	 
	  
try { 
	String sql="SELECT * FROM tickets_users u LEFT JOIN tickets_membership m ON u.id=m.user_id  AND m.event_id="+event_id+" OR m.event_id is NULL  where u.role='members'   and u.status=1 ORDER BY u.datetime_added DESC";
 
	   
	// Maps a SQL result to a Java object
	RowMapper<Users> mapper = new RowMapper<Users>() {  
      public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Users param = new Users();
      	param.setId(rs.getInt("id"));
      	param.setFirst_name(rs.getString("first_name"));
      	param.setLast_name(rs.getString("last_name"));
    	param.setAddress(rs.getString("address"));
      	param.setEmail_id(rs.getString("email_id"));
      	param.setPassword(rs.getString("password"));
      	param.setPhone(rs.getString("phone"));
      	param.setStatus(rs.getInt("status"));
      	param.setRole(rs.getString("role"));
      	param.setTickets(rs.getInt("tickets"));
      	
          return param;
      }
  }; 
  return jdbcTemplate.query(sql, mapper);
} catch (Exception e) {
	return null;
}



}



public Users findByID(Integer id) {
	
	  
try { 
	String   
		sql= "select * from tickets_users where id='"+id+"' ORDER BY datetime_Added DESC ";
 
	// Maps a SQL result to a Java object
	RowMapper<Users> mapper = new RowMapper<Users>() {  
      public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Users param = new Users();
      	param.setId(rs.getInt("id"));
      	param.setFirst_name(rs.getString("first_name"));
      	param.setLast_name(rs.getString("last_name"));
      	
      	param.setEmail_id(rs.getString("email_id"));
      	param.setPassword(rs.getString("password"));
      	param.setPhone(rs.getString("phone"));
      	param.setAddress(rs.getString("address"));
      	param.setStatus(rs.getInt("status"));
       
      	param.setRole(rs.getString("role"));
      	
          return param;
      }
  };
  return jdbcTemplate.queryForObject(sql, mapper);
 
} catch (Exception e) {
	// TODO: handle exception
	return null;
}



}


public Users getInfobyLogin(String email, String pass) {
	
	  
try { 
	String  
		sql= "select * from tickets_users where email_id='"+email+"' and password='"+pass.trim()+"'  and status=1  ";
 
	// Maps a SQL result to a Java object
	RowMapper<Users> mapper = new RowMapper<Users>() {  
      public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Users param = new Users();
      	param.setId(rs.getInt("id"));
      	param.setFirst_name(rs.getString("first_name"));
      	param.setLast_name(rs.getString("last_name"));
    	param.setAddress(rs.getString("address"));
      	param.setEmail_id(rs.getString("email_id"));
      	param.setPassword(rs.getString("password"));
      	param.setPhone(rs.getString("phone"));
      	
       
      	param.setRole(rs.getString("role"));
      	
          return param;
      }
  };
  return jdbcTemplate.queryForObject(sql, mapper);
} catch (Exception e) {
	// TODO: handle exception
	return null;
}



}


public int checkAlreadyExistEmail(String email_id)
{
	try {
		String sql="SELECT id FROM tickets_users where email_id='"+email_id+"' ";
		Integer result=jdbcTemplate.queryForObject(sql,Integer.class);
		return result;
	} catch (Exception e) {
		return 0;
		// TODO: handle exception
	}
	
	
}  


public int checkAlreadyExistEmail2(String email_id, String myemail)
{
	try { 
		String sql="SELECT id FROM tickets_users where email_id='"+email_id+"' and email_id!='"+myemail+"' ";
		Integer result=jdbcTemplate.queryForObject(sql,Integer.class);
		return result;
	} catch (Exception e) {
		return 0;
		// TODO: handle exception
	}
	
	
}  





public int update_profile(Integer id, String first_name, String last_name,String email_id, String password,String phone ,String address)
{

	try {
		
	
			int  result=this.jdbcTemplate.update(
				        "update  tickets_users set first_name=? ,last_name=?,email_id=?, password=?, phone=?, address=? where id=? ",first_name,last_name,email_id,password,phone,address,id);
	
			return result;  
		} 
	
	 catch (Exception e) {
 		
		return 0;
		// TODO: handle exception
	}
	
	
}   



public int update_status(Integer status ,Integer id)
{

	try {
		int result=this.jdbcTemplate.update(
		        "update tickets_users set status=? where id=?", status, id);
		return result;
	} catch (Exception e) {

		return 0;
		// TODO: handle exception
	}
	
	
}  

	
}

