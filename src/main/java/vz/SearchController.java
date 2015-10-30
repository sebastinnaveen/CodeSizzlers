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
     if(requestType.equalsIgnoreCase("Notify"))
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
        
        		c.addRegId("APA91bERQuEQxDtIMdmdGZ96-A3IRfvn_y4Wt0fE55G5rfmG7M93P9IcfFTb4Ruh-ByqngiezG-6-E9_E4JLjE379wxh8jIt1y5z_I1JmMRI7oVU0-xns3Zgn4j-UejDVC_IOWjfp4Iw");
        		c.createData("customerName", request.getParameter("customerName"));
        		c.createData("customerLocation", request.getParameter("customerLocation"));
        		c.createData("customerNumber", request.getParameter("customerNumber"));
        		c.createData("msgTech", "Fios Dispatch Job");
        		       		
        	
    			TrustManager[] trustAllCerts = new TrustManager[]{new X509TrustManager() {
					
					public X509Certificate[] getAcceptedIssuers() {
						// TODO Auto-generated method stub
						return null;
					}
					
					public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
						// TODO Auto-generated method stub
						
					}
					
					public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
						// TODO Auto-generated method stub
						
					}
				}};
    			
    			SSLContext sc;
    			sc= SSLContext.getInstance("SSL");
    			sc.init(null, trustAllCerts ,new java.security.SecureRandom());
    			
    			HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
    			
    			HostnameVerifier allHostValid = new HostnameVerifier() {
					
					public boolean verify(String hostname, SSLSession session) {
						// TODO Auto-generated method stub
						return true;
					}
				};
				
				
				
				HttpsURLConnection.setDefaultHostnameVerifier(allHostValid);
				
				URL url = new URL("https://android.googleapis.com/gcm/send");
				
				conn = (HttpURLConnection)url.openConnection();//.openConnection(ProxyUtils.getProxy());
				
				conn.setRequestMethod("POST");
				conn.setRequestProperty("Content-Type", "application/json");
				conn.setRequestProperty("Authorization", "key="+apiKey);
				conn.setDoOutput(true);
				
				ObjectMapper mapper = new ObjectMapper();
				
				DataOutputStream wr = new DataOutputStream(conn.getOutputStream());
				mapper.writeValue(wr, c);
				wr.flush();
				wr.close();
				int responseCode = conn.getResponseCode();
				System.out.println(responseCode);
				BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
				String inputLine;
				StringBuffer responseBuff = new StringBuffer();
				while((inputLine=in.readLine())!= null)
				{
					responseBuff.append(inputLine);
				}
				in.close();
				
				request.setAttribute("succMsg", responseBuff);
	    		request.setAttribute("errorCode", responseCode);
	    		
    		}catch(MalformedURLException e){e.printStackTrace();}
    		catch (IOException e) {
    			e.printStackTrace();
			}catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}catch (KeyManagementException e) {
				e.printStackTrace();
			}
    		
    		
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
     else if(requestType.equals("CMR"))
     {
    	 System.out.println("requestType--->"+requestType);
    	 String requestString =" <thead>" +
                                        "<tr>"+
                                            "<th>Mobile No</th>"+
                                            "<th>Call Duration</th>"+
                                            "<th>Originating Cell Id</th>"+
                                            "<th>Destinating Cell Id</th>"+
                                            "<th>IMEI NO</th>"+
                                        "</tr>"+
                                    "</thead>"+
                                    "<tbody ><tr class=\"odd gradeX\">"+
                                            "<td>Trident</td>;" +
                                            "<td>Internet Explorer 4.0</td>" +
                                            "<td>Win 95+</td>" +
                                            "<td class=\"center\">4</td>"+
                                            "<td class=\"center\">X</td>" +
                                       " </tr></tbody>" ;
//    	 		response.setContentType("text/html;charset=UTF-8");
//    	 		PrintWriter out = response.getWriter();
//    	 		try {
//    	 				/* TODO output your response here.*/
//    	 				out.println(requestString);
//    	 			} finally {
//    	 					out.close();
//    	 			}
    	 
     	}
     request.setAttribute("success", "mobilesub");
     RequestDispatcher rd = request.getRequestDispatcher("/jsp/successMessage.jsp");
		rd.include(request, response);
 } catch (Exception e) {
	 e.printStackTrace();
     //logger.error("Error in servlet::" + e);
	 
 }
}  
	
}
