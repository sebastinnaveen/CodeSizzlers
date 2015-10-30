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
    
    		c.addRegId("APA91bERQuEQxDtIMdmdGZ96-A3IRfvn_y4Wt0fE55G5rfmG7M93P9IcfFTb4Ruh-ByqngiezG-6-E9_E4JLjE379wxh8jIt1y5z_I1JmMRI7oVU0-xns3Zgn4j-UejDVC_IOWjfp4Iw");
    		c.createData("customerName", "sebastinnaveen");
    		c.createData("customerLocation", "chennai");
    		c.createData("customerNumber", "12345");
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
			
			response.getWriter().append("Served at: ").append(request.getContextPath());
    		 
		}catch(MalformedURLException e){e.printStackTrace();response.getWriter().append("Error at: ").append(e.getMessage());}
		catch (IOException e) {
			e.printStackTrace();
			response.getWriter().append("Error at: ").append(e.getMessage());
		}catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			response.getWriter().append("Error at: ").append(e.getMessage());
		}catch (KeyManagementException e) {
			e.printStackTrace();
			response.getWriter().append("Error at: ").append(e.getMessage());
		}
	}

}
