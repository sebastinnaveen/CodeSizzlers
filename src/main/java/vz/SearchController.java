package vz;
import com.google.android.gcm.server.Message;
import com.google.android.gcm.server.MulticastResult;
import com.google.android.gcm.server.Sender;
import com.google.gson.Gson;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketException;
import java.net.URL;
import java.nio.channels.MulticastChannel;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

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
     String requestType = request.getParameter("type");
     if(requestType!=null&&requestType.equalsIgnoreCase("fiosDispatch"))
     {
    	 
    	 System.out.println("calling");
    	 String apiKey="AIzaSyBLtx1iYEW18xQTa46fpP_O4VOhBQpy4O8";
    		Sender sender = new Sender(apiKey);
    		ArrayList<String> deviceIds = new ArrayList<String>();
    		deviceIds.add("1");
    		Gson json= new Gson();
    		
    		Content c = new Content();
    		HttpURLConnection conn = null;
    		try
    		{
    			MessageBean msgBean = new MessageBean();
        		msgBean.setCustomerName(request.getParameter("customerName"));
        		msgBean.setCustomerLocation(request.getParameter("customerLocation"));
        		msgBean.setCustomerNumber(request.getParameter("customerNumber"));
        		//msgBean.setMsgTech(request.getParameter("message"));
        
        		//c.addRegId("APA91bERQuEQxDtIMdmdGZ96-A3IRfvn_y4Wt0fE55G5rfmG7M93P9IcfFTb4Ruh-ByqngiezG-6-E9_E4JLjE379wxh8jIt1y5z_I1JmMRI7oVU0-xns3Zgn4j-UejDVC_IOWjfp4Iw");
        	//	c.createData("customerName", "sebastinnaveen");
//        		c.createData("customerLocation", "Tambaram,chennai");
//        		c.createData("customerNumber", "");
//        		c.createData("msgTech", "Fios Dispatch Job");
        		       		
        	 
        		Content content = new Content();
        		   //POJO class as above for standard message format
        		  // content.addRegId("APA91bERQuEQxDtlMdmdGZ96-A3lRfvn_y4Wt0fE55G5rfmG7M93P9lcfFTb4Ruh-ByqngiezG-6-E9_E4JLjE379wxh8jlt1y5z_l1JmMRl7oVU0-xns3Zgn4j-UejDVC_lOWjfp4lw");
        		content.addRegId("APA91bE40Poia4sfOJpEmCQ6ktGRxcxkFLC0NRYOqZRRdNFZx1jM5LxRAY_ARQ-s45GRMMhkdiJ8g2CuDT5KyhVZCYaSjJLxUyAlez93bvBcvqQuW6Qac4NUqrOfFVj0CDNHqJKiJwQQ");
        		content.addRegId("APA91bHhEh3JBNr8siLLZKzzcTXWEG8xOVs7QEDcqXF9wyBX5d0DOhry8N73infE9TCG8Bm2aJAmlBaA9PwA0qmiomoFXd2zP_A-RluiUHigWUbPGkr2CLTCXzHxS5O04yABbMiuKK0U");
        		
        		//content.addRegId("APA91bGqqyr-X4Wu_MGFk8Mu9bhq8dcuVO62cTWFelPa2LjvgpIxTL3IzsME76pVHwVsCb1C8vZoFjzTzEnwko_B902ou0okU5B35l_5xzeagqd4_TLT8apSYwQ8VSF6oqOakz2_1bBT");
        		//APA91bGqqyr-X4Wu_MGFk8Mu9bhq8dcuVO62cTWFelPa2LjvgpIxTL3IzsME76pVHwVsCb1C8vZoFjzTzEnwko_B902ou0okU5B35l_5xzeagqd4_TLT8apSYwQ8VSF6oqOakz2_1bBT
        		   content.createData("Title", "Notification Message");
        		   URL url = new URL("https://android.googleapis.com/gcm/send");
        		   conn = (HttpURLConnection) url.openConnection();
        		   conn.setRequestMethod("POST");
        		   conn.setRequestProperty("Content-Type", "application/json");
        		   conn.setRequestProperty("Authorization", "key="+apiKey);
        		   conn.setDoOutput(true);
        		   ObjectMapper mapper = new ObjectMapper();
        		   DataOutputStream wr = new DataOutputStream(conn.getOutputStream());
        		   mapper.writeValue(wr, content);
        		   wr.flush();
        		   wr.close();
        		  int responseCode = conn.getResponseCode();
        		  BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
    				String inputLine;
    				StringBuffer responseBuff = new StringBuffer();
    				while((inputLine=in.readLine())!= null)
    				{
    					responseBuff.append(inputLine);
    				}
    				in.close();
    			//	response.getWriter().append("Response Code: ").append(String.valueOf(responseCode));
    			//response.getWriter().append("Served at: ").append(responseBuff.toString());
        		 
    		}catch(MalformedURLException e){e.printStackTrace();
    		//response.getWriter().append("Error at: ").append(e.getMessage());
    		}
    		catch (IOException e) {
    			e.printStackTrace();
    			//response.getWriter().append("Error at: ").append(e.getMessage());
    		}
    		request.setAttribute("success", "mobilesub");
    	     RequestDispatcher rd = request.getRequestDispatcher("/jsp/successMessage.jsp");
    			rd.include(request, response);
    		
    		/*String jsonMsg = json.toJson(msgBean);
    		
    		Message msg = new Message.Builder().addData("message", jsonMsg).build();
    		
    		MulticastResult result = sender.send(msg, deviceIds, 1);
    		
    		String succMsg="";
    		int errorCode=0;
    		if(result.getResults()!=null)
    		{
    			int canonicalId = result.getCanonicalIds();
    			if(canonicalId!=0)
    			{
    				
    				errorCode = result.getSuccess();
    			}
    			else
    			{
    				succMsg ="Failure";
    				errorCode = result.getFailure();
    			}
    		}*/
    		
    		
     }
     else if(requestType!=null&&requestType.equals("Complaints"))
     {
    	 System.out.println("requestType--->"+requestType);
    	 request.setAttribute("success", "mobilesub");
	     RequestDispatcher rd = request.getRequestDispatcher("/jsp/Complaints.html");
			rd.include(request, response);
//    	 		response.setContentType("text/html;charset=UTF-8");
//    	 		PrintWriter out = response.getWriter();
//    	 		try {
//    	 				/* TODO output your response here.*/
//    	 				out.println(requestString);
//    	 			} finally {
//    	 					out.close();
//    	 			}
    	 
     	}
     else if(requestType!=null&&requestType.equals("payments"))
     {
    	 System.out.println("requestType--->"+requestType);
    	 request.setAttribute("success", "mobilesub");
	     RequestDispatcher rd = request.getRequestDispatcher("/jsp/payments.jsp");
			rd.include(request, response);
//    	 		response.setContentType("text/html;charset=UTF-8");
//    	 		PrintWriter out = response.getWriter();
//    	 		try {
//    	 				/* TODO output your response here.*/
//    	 				out.println(requestString);
//    	 			} finally {
//    	 					out.close();
//    	 			}
    	 
     	}
     else if(requestType!=null&&requestType.equals("swapplan"))
     {
    	 System.out.println("requestType--->"+requestType);
    	 request.setAttribute("success", "mobilesub");
	     RequestDispatcher rd = request.getRequestDispatcher("/jsp/swapPlan.jsp");
			rd.include(request, response);
//    	 		response.setContentType("text/html;charset=UTF-8");
//    	 		PrintWriter out = response.getWriter();
//    	 		try {
//    	 				/* TODO output your response here.*/
//    	 				out.println(requestString);
//    	 			} finally {
//    	 					out.close();
//    	 			}
    	 
     	}
     else if(requestType!=null&&requestType.equals("complaints"))
     {
    	 System.out.println("requestType--->"+requestType);
    	 request.setAttribute("success", "mobilesub");
	     RequestDispatcher rd = request.getRequestDispatcher("/jsp/complaints.jsp");
			rd.include(request, response);
//    	 		response.setContentType("text/html;charset=UTF-8");
//    	 		PrintWriter out = response.getWriter();
//    	 		try {
//    	 				/* TODO output your response here.*/
//    	 				out.println(requestString);
//    	 			} finally {
//    	 					out.close();
//    	 			}
    	 
     	}
     
 } catch (Exception e) {
	 e.printStackTrace();
     //logger.error("Error in servlet::" + e);
	 
 }
}  
	
}
