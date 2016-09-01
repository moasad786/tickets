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

import tickets.dao.EventDao;
import tickets.dao.GalleryDao;

import tickets.modal.Event;
import tickets.modal.Gallery;

@Controller
public class AdminGallery {
	
	
	 @Resource(name="eventDao")
	 private EventDao eventDao;
	
	 @Resource(name="galleryDao")
	 private GalleryDao galleryDao;
	 
	 @Autowired
	 HttpSession session;
 
	 
		   	
	 
		 
		 @RequestMapping(value="/admin/addGallery",method = RequestMethod.GET)
		   public String  addGallery(ModelMap model) {
		     try {
				 
		    	 List<Event> event_list=eventDao.listEvent(null,null);
					model.addAttribute("event_list", event_list);
				 
			 
			} catch (Exception e) {
				// TODO: handle exception
				//System.out.println("a.."+e);
			}
		     finally {
				System.gc();
			} 
		      
		     return "admin/addGallery";
		     
		   }
		 
		 

		 
		 

		   	
		 
		 
		 @RequestMapping(value="/admin/addGallery_action",method = RequestMethod.POST)  
		   public String  addEvent(ModelMap model ,@RequestParam(value ="gallery_title" , required=false) String gallery_title,
				   @RequestParam(value ="gallery_img" , required=false) MultipartFile fileUpload,
				   @RequestParam(value ="event_id" , required=false) Integer event_id,
				   @RequestParam(value ="id" , required=false) Integer id) {
			
				      
		     try {
		    	 if(id!=null && id.intValue()>0)
		    	 {
		    		 String file_name=null;
		    		 if(fileUpload!=null && !fileUpload.isEmpty())
						{ 
							  file_name=fileUpload.getOriginalFilename();
							 String filePath = "bluecloudpro.com/Tickets/gallery";
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
		    		  
		    		 
                     galleryDao.update_gallery(id, gallery_title, file_name, event_id);
					     return "redirect:updateGallery?id="+id+"&update=success";

						} 
		    		 
		    		
		    	 else
		    	 {
		    	 
		    	 if(fileUpload!=null && !fileUpload.isEmpty())  
					{ 
						 String file_name=fileUpload.getOriginalFilename();
						 String filePath = "bluecloudpro.com/Tickets/gallery";
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
							   
						       
						      galleryDao.add_gallery(gallery_title, file_name, event_id);
					}
		    	 } 
			 
			} catch (Exception e) {
				// TODO: handle exception
				//System.out.println("a.."+e);
				 return "redirect:addGallery?added=error";
			}
		     finally {
				System.gc();
			} 
		         
		     return "redirect:addGallery?added=success";
		     
		   }
		 
		 
		 
		 

		 
		  

		 @RequestMapping(value="/admin/listGallery",method = RequestMethod.GET)
		   public String  list_Gallery(ModelMap model) {
		     try { 
		    	 List<Gallery>  gallery_list= galleryDao.listGallery(0);
			      model.addAttribute("gallery_list", gallery_list);
				 
			 
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("a.."+e);
			}
		     finally {
				System.gc();
			} 
		      
		     return "admin/listGallery";
		     
		   }
		  
		 
		 

		 @RequestMapping(value="/admin/updateGallery",method = RequestMethod.GET)
		   public String  updateGallery(ModelMap model, @RequestParam(value ="id" , required=false) Integer id)
		   
		    
		 {   
		     try {  
		    	
		    	 Gallery gallery=galleryDao.findByID(id);
				 model.addAttribute("gallery",gallery); 
				 
				 List<Event> event_list=eventDao.listEvent(null,null);
					model.addAttribute("event_list", event_list);
				 
				  
			 
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("a.."+e);
				  
			}
		     finally {
				System.gc();
			} 
		      
		     return "admin/addGallery";
		     
		   }
		 
		 
		 
		 

		 @RequestMapping(value="/admin/deleteGallery",method = RequestMethod.GET)
		   public String  deleteGallery(ModelMap model, @RequestParam(value ="id" , required=false) Integer id) {
		     try {
		    	  Gallery g=galleryDao.findByID(id); 
				  int a= galleryDao.delete_gallery(id);
				 
				  if(a>0)
				  {
					  AmazonS3Conf.getAmazonConn().deleteObject("bluecloudpro.com/Tickets/gallery",g.getGallery_img());

				  } 
				  
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("a.."+e);
			}
		     finally {
				System.gc();
			} 
		      
		     return "redirect:listGallery?delete=success";
		     
		   }
		 
		 
		 
		 


}
