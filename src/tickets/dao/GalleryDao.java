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
import tickets.modal.Gallery;



@Service("galleryDao")
@Transactional
public class GalleryDao {

	
	
	 
	private JdbcTemplate jdbcTemplate;
	@Resource(name="dataSource")
	public void setDataSource(DataSource dataSource)
	{
	    this.jdbcTemplate=new JdbcTemplate(dataSource);
	    
	    
	} 
	
	
	
	
	
	
	
	
	
	

public int add_gallery( String gallery_title,String gallery_img, Integer event_id )
{

	try {
		int result=this.jdbcTemplate.update(
		        "insert into tickets_events_gallery (gallery_title, gallery_img,event_id) values (?, ?,?)", gallery_title, gallery_img,event_id	);
		return result;
	} catch (Exception e) {
 //System.out.println("dao..."+e);
		return 0;
		// TODO: handle exception
	}
	 
	
}  
	
 


	
	


public int update_gallery(Integer id, String gallery_title,String gallery_img, Integer event_id )
{

	try {
		int result=0;
		if(gallery_img!=null && !gallery_img.trim().equals(""))
		{
			  result=this.jdbcTemplate.update(
				        " update  tickets_events_gallery set gallery_title=? ,  gallery_img=?,event_id=?   where id=? ",gallery_title,gallery_img,event_id,id);
				
		}
		else
		{
			 result=this.jdbcTemplate.update(
				        " update  tickets_events_gallery set gallery_title=? ,event_id=?   where id=? ",gallery_title,event_id,id);
				
		}
		return result;
	} catch (Exception e) {

		System.out.println("update..."+e);
		
		return 0;
		// TODO: handle exception
	}
	
	
}  

	


public List<Gallery> listGallery(Integer event_id) {  
	
	  
try {
	String sql="";
	if(event_id!=null && event_id.intValue()>0)
	{
		sql= "select * from tickets_events_gallery where event_id="+event_id+" ORDER BY datetime_added DESC ";
	}
	else
	{
		
		sql= "select * from tickets_events_gallery  ORDER BY datetime_added DESC ";
	}
	
	RowMapper<Gallery> mapper = new RowMapper<Gallery>() {  
      public Gallery mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Gallery param = new Gallery();
      	param.setId(rs.getInt("id"));
      	param.setEvent_id(rs.getInt("event_id"));
      	param.setGallery_title(rs.getString("gallery_title"));
      	param.setGallery_img(rs.getString("gallery_img"));
      	param.setDatetime_added(rs.getString("datetime_added"));
      	
     
      	
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




public Gallery findByID(Integer id) {  
	
	 
try {
	String 
		sql= "select * from tickets_events_gallery where id="+id+"  ";
	RowMapper<Gallery> mapper = new RowMapper<Gallery>() {  
      public Gallery mapRow(ResultSet rs, int rowNum) throws SQLException {
    	  Gallery param = new Gallery();
      	param.setId(rs.getInt("id"));
    	param.setEvent_id(rs.getInt("event_id"));
      	param.setGallery_title(rs.getString("gallery_title"));
      	param.setGallery_img(rs.getString("gallery_img"));
      	param.setDatetime_added(rs.getString("datetime_added"));
      	
     
      	
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





public int delete_gallery(Integer id)
{

	try {
		int result=this.jdbcTemplate.update(
		        "delete from tickets_events_gallery where id=?", id);
		return result;
	} catch (Exception e) {

		return 0;
		// TODO: handle exception
	}
	
	
}  


	





	
}
