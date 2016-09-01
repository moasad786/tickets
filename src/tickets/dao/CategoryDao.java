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

import tickets.modal.Category;




@Service("categoryDao")
@Transactional
public class CategoryDao {

	
	
	 
	private JdbcTemplate jdbcTemplate;
	@Resource(name="dataSource")
	public void setDataSource(DataSource dataSource)
	{
	    this.jdbcTemplate=new JdbcTemplate(dataSource);
	    
	    
	} 
	
	
	
	
	
	
	
	
	
	

public int add_category( String category_name,String category_desc )
{

	try {
		int result=this.jdbcTemplate.update(
		        "insert into tickets_category (category_name, category_desc) values (?, ?)", category_name, category_desc);
		return result;
	} catch (Exception e) {
 //System.out.println("dao..."+e);
		return 0;
		// TODO: handle exception
	}
	 
	
}  
	
 


	
	


public int update_category(Integer id, String category_name,String category_desc)
{

	try {
		
	
			int  result=this.jdbcTemplate.update(
				        " update  tickets_category set category_name=? ,  category_desc=?  where id=? ",category_name,category_desc,id);
	
			return result;  
		}
	
	 catch (Exception e) {

		System.out.println("update..."+e);
		
		return 0;
		// TODO: handle exception
	}
	
	
}  

	


public List<Category> listCategory() {  
	
	 
try {
	String 
		sql= "select * from tickets_category  ORDER BY category_date_time DESC ";
	RowMapper<Category> mapper = new RowMapper<Category>() {  
      public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Category param = new Category();
      	param.setId(rs.getInt("id"));
      	param.setCategory_name(rs.getString("category_name"));
      	param.setCategory_desc(rs.getString("category_desc"));
      	param.setCategory_date_time(rs.getString("category_date_time"));
     
      	
          return param;
      }
  };
  return jdbcTemplate.query(sql, mapper);
} catch (Exception e) {
	// TODO: handle exception
	
	System.out.println("dao list..."+e);
	return null;
}

}




public Category findByID(Integer id) {  
	
	 
try {
	String 
		sql= "select * from tickets_category where id="+id+"  ";
	RowMapper<Category> mapper = new RowMapper<Category>() {  
      public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Category param = new Category();
      	param.setId(rs.getInt("id"));
    	param.setCategory_name(rs.getString("category_name"));
      	param.setCategory_desc(rs.getString("category_desc"));
      	param.setCategory_date_time(rs.getString("category_date_time"));
     
      	
          return param;
      }
  };
  return jdbcTemplate.queryForObject(sql, mapper);
} catch (Exception e) {
	// TODO: handle exception
	
	System.out.println("dao list..."+e);
	return null;
}

}

  



public int delete_category(Integer id)
{

	try {
		int result=this.jdbcTemplate.update(
		        "delete from tickets_category where id=?", id);
		return result;
	} catch (Exception e) {

		return 0;
		// TODO: handle exception
	}
	
	
}  


	





	
}
