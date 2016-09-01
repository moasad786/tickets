package tickets.admin.controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tickets.dao.CategoryDao;
import tickets.modal.Category;




@Controller
public class AdminCategory {
	
	
	// @Resource(name="eventDao")
	// private EventDao eventDao;
	
	 @Resource(name="categoryDao")
	 private CategoryDao categoryDao;
	 
	 @Autowired
	 HttpSession session;
 
	 
		   	
	 
		 
		 @RequestMapping(value="/admin/addCategory",method = RequestMethod.GET)
		   public String  addCategory(ModelMap model) {
		     try {
				
		  
			 
			} catch (Exception e) {
				// TODO: handle exception
				//System.out.println("a.."+e);
			}
		     finally {
				System.gc();
			} 
		      
		     return "admin/addCategory";
		     
		   }
		 
		 

		 
		   	
		 
		 
		 @RequestMapping(value="/admin/addCategory_action",method = RequestMethod.POST)  
		   public String  addEvent(ModelMap model ,@RequestParam(value ="category_name" , required=false) String category_name,
				   @RequestParam(value ="category_desc" , required=false) String category_desc,
				   @RequestParam(value ="id" , required=false) Integer id) {
			
				      
		     try {
		    	 if(id!=null && id.intValue()>0)
		    	 {
		    		
		    		 categoryDao.update_category(id, category_name, category_desc);
		    		 return "redirect:updateCategory?id="+id+"&update=success";
		    		 
						} 
		    		 
		    		
		    	 else
		    	 {
		    		 categoryDao.add_category(category_name, category_desc);
		    	
		    	 } 
			 
			} catch (Exception e) {
				// TODO: handle exception
				//System.out.println("a.."+e);
				 return "redirect:addCategory?added=error";
			}
		     finally {
				System.gc();
			} 
		         
		     return "redirect:addCategory?added=success";
		     
		   }
		 
		 
		 
		 

		 
		
		 

		 
		 

		 @RequestMapping(value="/admin/updateCategory",method = RequestMethod.GET)
		   public String  updateCategory(ModelMap model, @RequestParam(value ="id" , required=false) Integer id)
		   
		    
		 {   
		     try {  
		    	
		    	 Category category=categoryDao.findByID(id);
				 model.addAttribute("category",category); 
				 
//				 List<Event> event_list=eventDao.listEvent();
//					model.addAttribute("event_list", event_list);
//				 
				 
			 
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("a.."+e);
				  
			}
		     finally {
				System.gc();
			} 
		      
		     return "admin/add_Category";
		     
		   }
		 
		 
		 
		 
		 
		 

		 @RequestMapping(value="/admin/listCategory",method = RequestMethod.GET)
		   public String  listCategory(ModelMap model) {
		     try {
	    	 List<Category>  category_list= categoryDao.listCategory();
			      model.addAttribute("category_list", category_list);
				 
			 
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("a.."+e);
			}
		     finally {
				System.gc();
			} 
		      
		     return "admin/listCategory";
		     
		   }
		 
		  

		 @RequestMapping(value="/admin/deleteCategory",method = RequestMethod.GET)
		   public String  deleteCategory(ModelMap model, @RequestParam(value ="id" , required=false) Integer id) {
		     try {
		    	  
				  int a= categoryDao.delete_category(id);
				 
				 
				  
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("a.."+e);
			}
		     finally {
				System.gc();
			} 
		      
		     return "redirect:listCategory?delete=success";
		     
		   }
		 
		 
		 
		 


}
