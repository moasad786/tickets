package tickets.users.controller;



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

import tickets.dao.BookingDao;
import tickets.dao.UsersDao;
import tickets.modal.Booking;
import tickets.modal.Users;

@Controller
public class UsersController {

	
	
	
	 @Resource(name="usersDao")
	 private UsersDao usersDao;

	 @Resource(name="bookingDao")
	 private BookingDao bookingDao;


	 @Autowired
	 HttpSession session;
   	
	  
	  
 @RequestMapping(value="/users/login",method = RequestMethod.GET)
   public String  memberslogin(Model model) {
     try {
		//System.out.println("under dashboard");
	} catch (Exception e) {
		// TODO: handle exception
	}
     finally {
		System.gc();
	}
      
     return "users/login";
     
   }
   	
 
 
 
  
 @RequestMapping(value="/users/dashboard",method = RequestMethod.GET)
   public String  membersdashboard(Model model) {
     try {
		//System.out.println("under dashboard");
	} catch (Exception e) {
		// TODO: handle exception
	}
     finally {
		System.gc();
	}
      
     return "users/index";
     
   }
 
 
 @RequestMapping(value="/users_login_action",method = RequestMethod.POST)
   public String  members_login_action(Model model, @RequestParam(value ="email_id" , required=false) String email_id
		   , @RequestParam(value="password", required=false) String password) {
     try {
	 
    	 Users a= usersDao.getInfobyLogin(email_id, password);
    	 
    	if(a!=null) 
    	{ 
    		session.setAttribute("user_id", a.getId());
    		session.setAttribute("user_first_name", a.getFirst_name());
    		session.setAttribute("user_last_name", a.getLast_name());
    		session.setAttribute("user_email", a.getEmail_id());
    		session.setAttribute("user_role", a.getRole());
    	}
    	else
    	{ 
    		return "redirect:/users/login?login=incorrect";
    	} 
    	 
	} catch (Exception e) {
		// TODO: handle exception
	}
     finally {
		System.gc();
	}
      
     return "redirect:/users/myProfile";
     
   }
   	  
	      
     
 @RequestMapping(value="/users/logout_users",method = RequestMethod.GET)
 public String  logout_users(Model model) {
   try {
	  
  		session.removeAttribute("user_id");
  		session.removeAttribute("user_first_name");
  		session.removeAttribute("user_last_name");
  		session.removeAttribute("user_email");
  		session.removeAttribute("user_role");
 
	} catch (Exception e) {
		// TODO: handle exception
	}
   finally {
		System.gc();
	}
     
   return "redirect:/users/login";
   
 }
 
 
 
 
@RequestMapping(value="/users_signup_action",method = RequestMethod.POST)
public String  members_signup_action(Model model , @RequestParam(value="first_name" ,required=false) String first_name,
		 @RequestParam(value="last_name" ,required=false) String last_name,
		@RequestParam(value="email_id" ,required=false) String email_id,
		@RequestParam(value="password",required=false) String password,
		@RequestParam(value="phone",required=false) String 	phone,
		@RequestParam(value="role",required=false) String role) 
		
		
       
{ 
		 
 try {
	 Integer status=0; 
	 if(role!=null && role.trim().equals("users"))
	 { 
		 status=1;
	 } 
	 if(first_name!=null && !first_name.trim().equals("") && last_name!=null && !last_name.trim().equals("") && email_id!=null && !email_id.trim().equals("") && 
			 password!=null && !password.trim().equals("") && phone!=null && !phone.trim().equals("") && role!=null && !role.trim().equals(""))
	 {
		 
		 if(usersDao.checkAlreadyExistEmail(email_id)>0)
		 {
			 model.addAttribute("msg","User Already Exist with this email");
 
		 }
		 else
		 {
		 
	 int a= usersDao.add_users(first_name, last_name, email_id, password, phone, role,status);
	 if(a>0)
	 {
		 model.addAttribute("msg","Congrats! You have successfully Signup");
	 }
	 else
	 {
		 model.addAttribute("msg","Oops! You got some error while Signup");
 
	 }
		 }
		 
	 }    
	//System.out.println("under dashboard"); 
} catch (Exception e) {
	model.addAttribute("msg","Oops! You got some error while Signup");
}
 finally {
	System.gc();
}
  
 return "users/ajax/users_signup_ajax";
 
}

 

 
  
 
@RequestMapping(value="/users/myProfile",method = RequestMethod.GET)
  public String  myProfile(Model model) {
    try {
		
  Integer user_id= 	Integer.parseInt(session.getAttribute("user_id").toString());
    	    
   	 Users users=  usersDao.findByID(user_id);
		 model.addAttribute("users",users); 
   	 
   	 
	} catch (Exception e) {
		// TODO: handle exception
		//System.out.println("a.."+e);
	}
    finally {
		System.gc();
	} 
     
    return "users/myProfile";
    
  }
  

 
@RequestMapping(value="/users/updateprofile_action",method = RequestMethod.POST)
  public String  updateprofile(Model model, @RequestParam(value="first_name" ,required=false) String first_name,
			 @RequestParam(value="last_name" ,required=false) String last_name,
				@RequestParam(value="email_id" ,required=false) String email_id,
				@RequestParam(value="password",required=false) String password,
				@RequestParam(value="phone",required=false) String 	phone,
				@RequestParam(value="address",required=false) String 	address
			) 
 
{    
	
    try {  
    	if(first_name!=null && !first_name.trim().equals("") && last_name!=null && !last_name.trim().equals("")
    		&&	email_id!=null && !email_id.trim().equals("") && password!=null && !password.trim().equals("") && phone!=null && !phone.trim().equals(""))
    	{ 
    	Integer user_id= Integer.parseInt(session.getAttribute("user_id").toString());
    	String user_email= session.getAttribute("user_email").toString();
    	// System.out.println(first_name);
    	int b=  usersDao.checkAlreadyExistEmail2(email_id,user_email);
    	if(b>0)
    	{
  		  return "redirect:myProfile?tab=edit&action=exist";

    	}   
    	else
    	{
    		int a= usersDao.update_profile(user_id, first_name, last_name, email_id, password, phone ,address);
    		if(a>0)
    		{
    			session.setAttribute("user_first_name", first_name);
        		session.setAttribute("user_last_name", last_name);
        		session.setAttribute("user_email", email_id);
    		}
    		  return "redirect:myProfile?tab=edit&action=updated"; 
    	} 
    	}
    	  
	  
		 
	 
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println("a.."+e);
		  
	}
    finally {
		System.gc();
	} 
      
    return "redirect:myProfile";
    
  }





 
@RequestMapping(value="/users/bookingRequest",method = RequestMethod.GET)
public String  bookingList(Model model) {
try {
	if(session.getAttribute("user_role").toString().equals("members"))
	{
    Integer user_id= Integer.parseInt(session.getAttribute("user_id").toString());
 
	 List<Booking> booking_list =bookingDao.bookingList(user_id,0,0,10);
	 model.addAttribute("booking_list", booking_list);
	 
	}
	else 
	{
		return "redirect:dashboard";
	}
	
	//System.out.println("under dashboard");
} catch (Exception e) {
	// TODO: handle exception
}
finally {
	System.gc();
}
 
return "users/bookingRequest";

}
	

 
 


@RequestMapping(value="/users/myBooking",method = RequestMethod.GET)
public String  myBooking(Model model) {
try {
	
    Integer user_id= Integer.parseInt(session.getAttribute("user_id").toString());
 
	 List<Booking> booking_list =bookingDao.bookingList(0,user_id,0,10);
	 model.addAttribute("booking_list", booking_list);
	 
	
	
	//System.out.println("under dashboard");
} catch (Exception e) {
	// TODO: handle exception
}
finally {
	System.gc();
}
 
return "users/myBooking";

}
	

@RequestMapping(value="/users/list_membership_users")
public String  list_membership_users(Model model,
		@RequestParam(value ="event_id" , required=false) Integer event_id) {
try {
	  List<Users> list_membership=usersDao.listUsersByMembership(event_id);
	  model.addAttribute("list_membership", list_membership);
		  
	} catch (Exception e) {
		// TODO: handle exception
	} 
finally {
	}

return "users/ajax/list_membership_users";

}
	


	


	
}
	   
