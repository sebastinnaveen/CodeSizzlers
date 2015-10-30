package vz;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import com.google.android.gcm.server.Sender;
import com.google.gson.Gson;

/**
 * Servlet implementation class TestServlet
 */
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
    		//c.createData("customerName", "sebastinnaveen");
//    		c.createData("customerLocation", "chennai");
//    		c.createData("customerNumber", "12345");
//    		c.createData("msgTech", "Fios Dispatch Job");
    		       		
    	
    		Content content = new Content();
    		   //POJO class as above for standard message format
    		   content.addRegId("APA91bERQuEQxDtlMdmdGZ96-A3lRfvn_y4Wt0fE55G5rfmG7M93P9lcfFTb4Ruh-ByqngiezG-6-E9_E4JLjE379wxh8jlt1y5z_l1JmMRl7oVU0-xns3Zgn4j-UejDVC_lOWjfp4lw");       
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
				response.getWriter().append("Response Code: ").append(String.valueOf(responseCode));
			response.getWriter().append("Served at: ").append(responseBuff.toString());
    		 
		}catch(MalformedURLException e){e.printStackTrace();response.getWriter().append("Error at: ").append(e.getMessage());}
		catch (IOException e) {
			e.printStackTrace();
			response.getWriter().append("Error at: ").append(e.getMessage());
		}
	}

}
