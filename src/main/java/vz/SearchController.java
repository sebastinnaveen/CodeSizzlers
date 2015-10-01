package vz;



import java.io.IOException;
import java.net.SocketException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.log4j.//logger;




public class SearchController extends HttpServlet {
	 private static final long serialVersionUID = 0L;
	
	 private ServletConfig config;
	// private static //logger //logger = Cab//logger.get//logger(SearchController.class);
	// org.apache.log4j.//logger //logger = org.apache.log4j.//logger.get//logger(ListController.class.getName()); 
	 
	 public void init(ServletConfig config) throws ServletException {
	        this.config = config;
	        super.init(config);
	    }
	 
	   /**
	     * @param request
	     * @param response
	     * @throws ServletException
	     * @throws IOException
	     */
	    public void doGet(HttpServletRequest request,
	                      HttpServletResponse response) throws ServletException, IOException {
	        doPost(request, response);

	    }

	    /**
	     * @param request
	     * @param response
	     * @throws ServletException
	     * @throws IOException
	     */
	    
	  public void doPost(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException {
 try {
	 //logger.info("Inside servlet");
     String type = request.getParameter("type");
     
     if ("getData".equalsIgnoreCase(type)) {
         //doViewDocumentDetails(request, response);
        
    	// getMassMetadata(request, response); //August 8th Release QC:2288
     }
     else if ("getUserDetails".equalsIgnoreCase(type)) {
         //doViewDocumentDetails(request, response);
         
    	 //getUserDetails(request, response); //August 8th Release QC:2288
     }      
     else if ("submitTrip".equalsIgnoreCase(type)) {
         //doViewDocumentDetails(request, response);
         System.out.println("Hi changed");
    	 //logger.info("Inside get Metadata");
    	 //getMassMetadata(request, response); //August 8th Release QC:2288
     }      
     
     
 } catch (Exception e) {
     //logger.error("Error in servlet::" + e);
 }
}  
	
}
