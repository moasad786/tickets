package tickets.admin.controller;

import java.io.InputStream;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.services.s3.model.ObjectMetadata;

import config.AmazonS3Conf;

import tickets.dao.CategoryDao;
import tickets.dao.EventDao;
import tickets.dao.UsersDao;
import tickets.modal.Category;
import tickets.modal.Event;
import tickets.modal.Users;


@Controller
public class AdminEvents {
	
	
	 @Resource(name="eventDao")
	 private EventDao eventDao;
	
	 @Resource(name="categoryDao")
	 private CategoryDao categoryDao;
	 
	 @Resource(name="usersDao")
	 private UsersDao usersDao;
	
	  
	 @Autowired
	 HttpSession session;
 
	 
	 
	 @RequestMapping(value="/admin/addEvent",method = RequestMethod.GET)
	   public String  addEvent(ModelMap model) {
	     try {
			
	    	 List<Category>  category_list= categoryDao.listCategory();
		      model.addAttribute("category_list", category_list);
		      
		      List<Users> manager_list=usersDao.listUsers("managers",1);
		      model.addAttribute("manager_list",manager_list);
		      
		  
		} catch (Exception e) {
			// TODO: handle exception
			//System.out.println("a.."+e);
		}
	     finally {
			System.gc();
		} 
	      
	     return "admin/addEvent";
	     
	   }
	   	 
	      
		 @RequestMapping(value="/admin/addEvent_action",method = RequestMethod.POST)  
		   public String  addEvent(ModelMap model ,@RequestParam(value ="event_title" , required=false) String event_title,
				   @RequestParam(value ="category_id" , required=false) Integer category_id,
				   @RequestParam(value ="event_desc" , required=false) String event_desc,
				   @RequestParam(value ="event_address" , required=false) String event_address,
				   @RequestParam(value ="event_img" , required=false) MultipartFile fileUpload,
				   @RequestParam(value ="event_start_date" , required=false) String event_start_date,
				   @RequestParam(value ="event_start_time" , required=false) String event_start_time,
				   @RequestParam(value ="event_end_date" , required=false) String event_end_date,
				   @RequestParam(value ="event_end_time" , required=false) String event_end_time	,
				   @RequestParam(value ="total_ticket" , required=false) Integer total_ticket,
				   @RequestParam(value ="event_price" , required=false) String event_price,
				   @RequestParam(value ="manager_id" , required=false) Integer manager_id,
				   @RequestParam(value ="id" , required=false) Integer id) {
			
				       
		     try {
		    	 if(id!=null && id.intValue()>0)
		    	 {
		    		 String file_name=null;
		    		 if(fileUpload!=null && !fileUpload.isEmpty())
						{ 
							  file_name=fileUpload.getOriginalFilename();
							 String filePath = "bluecloudpro.com/Tickets/events";
								 try {
										Date date=new Date();
										String timespanid=String.valueOf(date.getTime());
										
								        int dotPos = file_name.lastIndexOf(".");
								        String extension=file_name.substring(dotPos);
								        file_name=String.valueOf(timespanid)+extension.toLowerCase();
								   
								        InputStream is = fileUpload.getInputStream();
								       

								        ObjectMetadata metadata = new ObjectMetadata();
								        metadata.setContentLength(fileUpload.getSize());
								        
								        try {
								 
										AmazonS3Conf.getAmazonConn().putObject(filePath, file_name,is, metadata);
							                
								               
								    	
								        } catch (Exception ex) {
								            System.out.println("Could not copy file "+ex);
								            
								        }
								         
								      
						            } catch (Exception e) {
						             System.out.println("ex....."+e);
						            } 
								   
				    	 }   
		    		  
		    		 
                         eventDao.update_event(id, category_id, event_title, event_desc, event_address, file_name, event_start_date, event_start_time, event_end_date, event_end_time, total_ticket, event_price, manager_id);
					     return "redirect:updateEvent?id="+id+"&update=success";
  
						} 
		    		 
		    		
		    	 else
		    	 {
		    	 
		    	 if(fileUpload!=null && !fileUpload.isEmpty())
					{ 
						 String file_name=fileUpload.getOriginalFilename();
						 String filePath = "bluecloudpro.com/Tickets/events";
							 try {
									Date date=new Date();
									String timespanid=String.valueOf(date.getTime());
									
							        int dotPos = file_name.lastIndexOf(".");
							        String extension=file_name.substring(dotPos);
							        file_name=String.valueOf(timespanid)+extension.toLowerCase();
							   
							        InputStream is = fileUpload.getInputStream();
							       

							        ObjectMetadata metadata = new ObjectMetadata();
							        metadata.setContentLength(fileUpload.getSize());
							        
							        try {
							 
									AmazonS3Conf.getAmazonConn().putObject(filePath, file_name,is, metadata);
						                
							               
							    	
							        } catch (Exception ex) {
							            System.out.println("Could not copy file "+ex);
							            
							        }
							         
							      
					            } catch (Exception e) {
					             System.out.println("ex....."+e);
					            } 
							   
						      model.addAttribute("img", file_name);
						      //AmazonS3Conf.getAmazonConn().deleteObject(filePath, old_img);
						       
						     eventDao.add_event(id, category_id, event_title, event_desc, event_address, file_name, event_start_date, event_start_time, event_end_date, event_end_time, total_ticket, event_price, manager_id);
					}
		    	 }
			 
			} catch (Exception e) {
				// TODO: handle exception
				//System.out.println("a.."+e);
				 return "redirect:addEvent?added=error";
			}
		     finally {
				System.gc();
			} 
		         
		     return "redirect:addEvent?added=success";
		     
		   }
		  
		 
 		 
		 
		 

		 @RequestMapping(value="/admin/eventList",method = RequestMethod.GET)
		   public String  eventList(ModelMap model) {
		     try {
		    		List<Event> event_list=eventDao.listEvent(null,null);
					model.addAttribute("event_list", event_list);
				 
			 
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("a.."+e);
			}
		     finally {
				System.gc();
			} 
		      
		     return "admin/eventList";
		     
		   }
		  
		  
		 @RequestMapping(value="/admin/eventDetail",method = RequestMethod.GET)
		 public String  eventDetail(ModelMap model,@RequestParam(value ="event_id" , required=false) Integer event_id) {
		  try {
		 	    
		 Event event=eventDao.findByID(event_id);
		 model.addAttribute("event",event);
		 		  
		 	} catch (Exception e) {
		 		// TODO: handle exception
		 	}
		  finally {
		 	}
 
		  return "admin/eventDetail";
		  
		 }
		 	

 
		 @RequestMapping(value="/admin/updateEvent",method = RequestMethod.GET)
		   public String  update(ModelMap model, @RequestParam(value ="id" , required=false) Integer id)
		   
		    
		 {     
		     try {  
		    	
				 Event event=eventDao.findByID(id);
				 model.addAttribute("event", event); 
				 
				 List<Category>  category_list= categoryDao.listCategory();
			      model.addAttribute("category_list", category_list);
			     
			      List<Users> manager_list=usersDao.listUsers("managers",1);
			      model.addAttribute("manager_list",manager_list);
			       
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("a.."+e);
				  
			}
		     finally {
				System.gc();
			} 
		      
		     return "admin/addEvent";
		     
		   }
		   	
	 

		 @RequestMapping(value="/admin/deleteEvent",method = RequestMethod.GET)
		   public String  deleteEvent(ModelMap model, @RequestParam(value ="id" , required=false) Integer id) {
		     try {
		    	 
				  int a= eventDao.delete_event(id);
				 
				 
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("a.."+e);
			}
		     finally {
				System.gc();
			} 
		      
		     return "redirect:eventList?delete=success";
		     
		   }
	
		 


}
