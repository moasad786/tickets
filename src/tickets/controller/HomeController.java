package tickets.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tickets.dao.EventDao;
import tickets.dao.GalleryDao;
import tickets.dao.UsersDao;
import tickets.modal.Event;
import tickets.modal.Gallery;
import tickets.modal.Users;

@Controller
public class HomeController {

	
	 @Resource(name="eventDao")
	 private EventDao eventDao;
	 @Resource(name="galleryDao")
	 private GalleryDao galleryDao;
	
	 @Resource(name="usersDao")
	 private UsersDao usersDao;

	 
	   @RequestMapping(value="/")
	   public String home(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	     
	     return "index";
	     
	   }
	   
	     
	   @RequestMapping(value="/blog")
	   public String blog(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "blog";
	     
	   }
	   
	 

	   
	   @RequestMapping(value="/blog-cover")
	   public String blogcover(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "blog-cover";
	     
	   }
	   
	   
	   @RequestMapping(value="/blog-with-sidebar")
	   public String blogwithsidebar(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "blog-with-sidebar";
	     
	   }
	   
	   
	   @RequestMapping(value="/blog-masonry")
	   public String blogmasonryr(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "blog-masonry";
	     
	   }
	   
	   @RequestMapping(value="/shortcode")
	   public String shortcode(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "shortcode";
	     
	   }
	   
	   
	   
	   @RequestMapping(value="/archive")
	   public String archive(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "archive";
	     
	   }
	   
	  
	   
	   
	   @RequestMapping(value="/faq")
	   public String  faq(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "faq";
	     
	   }
	
	   
	   
	   

	   @RequestMapping(value="/about")
	   public String  about(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "about";
	     
	   }
	   
	   

	   @RequestMapping(value="/contact")
	   public String  contact(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "contact";
	     
	   }
	   
	   

	   @RequestMapping(value="/contact-v2")
	   public String  contactv2(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return " contact-v2";
	     
	   }
	
	   
	   @RequestMapping(value="/contact-v3")
	   public String  contactv3(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "contact-v3";
	     
	   } 
	   
	   @RequestMapping(value="/event")
	   public String  event(ModelMap model,@RequestParam(value ="event_date" , required=false) String event_date,
			   @RequestParam(value ="event_title" , required=false) String event_title) {
	     try {
			 
	    	  
	    	 List<Event> event_list=eventDao.listEvent(event_title,event_date);
				model.addAttribute("event_list", event_list);
	    	 
	    	 
	    	 
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "event";
	     
	   }
	     
	   
	   @RequestMapping(value="/event_detail")
	   public String  eventdetail(ModelMap model , @RequestParam(value ="id" , required=false) Integer id) {
	     try {
			
	    	 Event event=eventDao.findByID(id);
			 model.addAttribute("event", event); 
			 
			
			 List<Gallery>  gallery_list= galleryDao.listGallery(id);
		      model.addAttribute("gallery_list", gallery_list);
	    	 
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "event-detail";
	     
	   }
	   
	    
	   @RequestMapping(value="/related_events")
	   public String  related_events(ModelMap model , @RequestParam(value ="category_id" , required=false) Integer category_id
			   , @RequestParam(value ="event_id" , required=false) Integer event_id) {
	     try {
			  
	    	
			 List<Event>  event_list= eventDao.listRelatedEventByCategoryId(category_id,event_id);
		      model.addAttribute("event_list", event_list);
	    	 
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
		} 
	      
	     return "ajax/related_events";
	     
	   }
	   
	   
	   
	   
	   
	   @RequestMapping(value="/past-event")
	   public String  pastevent(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "past-event";
	     
	   }
	   
	   
	   
	   
	   @RequestMapping(value="/upcoming-event")
	   public String  upcomingevent(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "upcoming-event";
	     
	   }
	   
	   
	   
	   
	   @RequestMapping(value="/eventicka")
	   public String  eventicka(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "eventicka";
	     
	   }
	   
	  
	   
	   
	   @RequestMapping(value="/eventicka_event")
	   public String  eventickaevent(ModelMap model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "eventicka_event";
	     
	   }
	   
	   
	   
	   @RequestMapping(value="/eventicka_ticket")
	   public String  eventickaticket(Model model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "eventicka_ticket";
	     
	   }
	  
	   

	   @RequestMapping(value="/event-theme")
	   public String   eventtheme(Model model) {
	     try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
			System.gc();
		}
	      
	     return "event-theme";
	     
	   }
	    
	      
	   
	   @RequestMapping(value = "/event_autocomplete")
		public @ResponseBody List<Event> event_autocomplete(Model model,@RequestParam(value = "event_title", required = false) String event_title) 
		{		   
			List<Event> result=null;
			try {
				result = eventDao.listEventAutoComplete(event_title);
				model.addAttribute("result", result);
			} catch (Exception e) { 
			}
			return result; 
		}
	   
	   
	
}
	   
