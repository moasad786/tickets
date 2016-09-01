package tickets.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

 
public class AdminInterceptor implements HandlerInterceptor
{
	@Autowired
	private HttpSession session;
	
    @Override
    public boolean preHandle(HttpServletRequest request,
            HttpServletResponse response, Object handler) throws Exception {
      // System.out.println("Inside pre handle Login");
        if(session.getAttribute("admin_id")!=null && session.getAttribute("admin_role")!=null && (session.getAttribute("admin_role").toString().trim().equals("admin")))
        {
        	 
        	  return true;
        }
        else
        { 
         
        	response.sendRedirect(request.getContextPath()+"/admin?expire=true");
        	return false;
        } 
    
    }
    
    @Override
    public void postHandle(HttpServletRequest request,
            HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {
    	System.gc();
       // System.out.println("Inside post handle Login");
    }
 
    @Override
    public void afterCompletion(HttpServletRequest request,
            HttpServletResponse response, Object handler, Exception exception)
            throws Exception {
    	
       // System.out.println("Inside after completion Login");
    }
}