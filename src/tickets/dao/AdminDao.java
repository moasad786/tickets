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
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tickets.modal.Admin;





@Service("adminDao")

@Transactional
public class AdminDao {

private JdbcTemplate JdbcTemplate;

@Resource(name="dataSource")
public void setDataSource(DataSource dataSource) {
    this.JdbcTemplate=new JdbcTemplate(dataSource);
   
} 
  
   
  
public Admin getInfobyLogin(String email, String pass, String role) {
	
	
try {
	String  
		sql= "select * from tickets_admin where email_id='"+email+"' and password='"+pass.trim()+"' and role='"+role.trim()+"' and status=1 ";

	// Maps a SQL result to a Java object
	RowMapper<Admin> mapper = new RowMapper<Admin>() {  
        public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
        	Admin param = new Admin();
        	param.setId(rs.getInt("id"));
        	param.setEmail_id(rs.getString("email_id"));
        	param.setFull_name(rs.getString("full_name"));
        	param.setDate_time(rs.getString("date_time"));
        	param.setRole(rs.getString("role"));
        	
            return param;
        }
    };
    return JdbcTemplate.queryForObject(sql, mapper);
} catch (Exception e) {
	// TODO: handle exception
	return null;
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
  return JdbcTemplate.query(sql, mapper);
} catch (Exception e) {
	// TODO: handle exception
	return null;
}



}


 



  
  


}