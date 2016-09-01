package tickets.admin.controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import config.PaginationTaglib;



import tickets.dao.AdminDao;
import tickets.dao.BookingDao;

import tickets.dao.UsersDao;
import tickets.modal.Admin;
import tickets.modal.Booking;

import tickets.modal.Users;

@Controller
public class AdminController {
	
	 @Resource(name="adminDao")
	 private AdminDao adminDao;
	 @Resource(name="bookingDao")
	 private BookingDao bookingDao;
	 @Resource(name="usersDao")
	 private UsersDao usersDao;
	
	 
	 @Autowired
	 HttpSession session;
 
	 @RequestMapping(value="/admin",method = RequestMethod.GET)
	   public String  admin_login(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "admin/login";
	     
	   }
	  
	 @RequestMapping(value="/admin_login_action",method = RequestMethod.POST)
	   public String  admin_login_action(ModelMap model, @RequestParam(value ="email_id" , required=false) String email_id
			   , @RequestParam(value="password", required=false) String password) {
	     try {
		
	    	Admin a= adminDao.getInfobyLogin(email_id, password, "admin");
	    	
	    	if(a!=null)
	    	{
	    		session.setAttribute("admin_id", a.getId());
	    		session.setAttribute("admin_name", a.getFull_name());
	    		session.setAttribute("admin_role", a.getRole());
	    		session.setAttribute("admin_email", a.getEmail_id());
	    	}
	    	else
	    	{
	    		return "redirect:/admin?login=incorrect";
	    	}
	    	 
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "redirect:/admin/dashboard";
	     
	   }
	   	
	 
	 
	 
	 
	
	 @RequestMapping(value="/admin/admin_logout",method = RequestMethod.GET)
	   public String  admin_logout(ModelMap model) {
	     try {
		
	    		session.removeAttribute("admin_id");
	    		session.removeAttribute("admin_name");
	    		session.removeAttribute("admin_role");
	    		session.removeAttribute("admin_email");
	    
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "redirect:/admin?logout=success";
	     
	   }
	   	
	 
	 
	  
	 
	 
	 
	 @RequestMapping(value="/admin/dashboard",method = RequestMethod.GET)
	   public String  admindashbord(ModelMap model) {
	     try {
			System.out.println("under dashboard");
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "admin/index";
	     
	   }
	   	
	   
     
@RequestMapping(value="/admin/managersList",method = RequestMethod.GET)
  public String  managersList(ModelMap model) {
    try {
		List<Users>  members_list= usersDao.listUsers("managers",null);
		model.addAttribute("members_list", members_list);
	  
	} catch (Exception e) {
		// TODO: handle exception
		//System.out.println("a.."+e);
	}
    finally {
		System.gc();
	} 
     
    return "admin/managersList";
    
  }
    
	      
	 @RequestMapping(value="/admin/membersList",method = RequestMethod.GET)
	   public String  membersList(ModelMap model) {
	     try {
			List<Users>  members_list= usersDao.listUsers("members",null);
			model.addAttribute("members_list", members_list);
		 
		} catch (Exception e) {
			// TODO: handle exception
			//System.out.println("a.."+e);
		}
	     finally {
			System.gc();
		} 
	      
	     return "admin/membersList";
	     
	   }
	   	
	  
     
	 @RequestMapping(value="/admin/usersList",method = RequestMethod.GET)
	   public String  usersList(ModelMap model) {
	     try {
			List<Users>  members_list= usersDao.listUsers("users",null);
			model.addAttribute("members_list", members_list);
		  
		} catch (Exception e) {
			// TODO: handle exception
			//System.out.println("a.."+e);
		}
	     finally {
			System.gc();
		} 
	      
	     return "admin/usersList";
	     
	   }
	   	
 

	    
	
	 @RequestMapping(value="/admin/update_status",method = RequestMethod.POST)
	   public String  update_status(ModelMap model, @RequestParam(value ="id" , required=false) Integer id,
			   @RequestParam(value ="status" , required=false) Integer status) {
	     try {
	
	    	int a = usersDao.update_status(status, id);
	    	
	    	  
	    	 
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
		 
		}
	      
	     return "admin/ajax/update_status";
	     
	   }
	   	
	  
	   
	 @RequestMapping(value="/admin/bookingList",method = RequestMethod.GET)
	   public String bookingList(Model model,@RequestParam(value ="offset" , required=false) Integer offset_param
			   ,@RequestParam(value ="maxResults" , required=false) Integer maxResults) {
	     try { 
	     	                  
 Integer limit=5;
 Integer offset=offset_param!=null?offset_param:0; 
 PaginationTaglib.limit=limit;
 model.addAttribute("count", bookingDao.count_total_row());
 model.addAttribute("offset", offset);
 model.addAttribute("maxLimit", limit);
        
	    	 List<Booking> booking_list =bookingDao.bookingList(0,0,offset,limit);
	    	 model.addAttribute("booking_list", booking_list);
	    	     	    	   
		} catch (Exception e) {   
			// TODO: handle exception  
		}
	     finally {
			System.gc();
		} 
	     
	     return "admin/bookingList"; 
	     
	   } 
	   
	    
	   

		 @RequestMapping(value="/admin/update_status_booking",method = RequestMethod.POST)
		   public String  update_status_booking(ModelMap model, @RequestParam(value ="id" , required=false) Integer id,
				   @RequestParam(value ="status" , required=false) Integer status) {
		     try {
		
		    	 bookingDao.update_status_booking(status, id);
		    	
		    	  
		    	 
			} catch (Exception e) {
				// TODO: handle exception
			}
		     finally {
			 
			}
		      
		     return "admin/ajax/update_status";
		     
		   }
	   
	  
	 



}
