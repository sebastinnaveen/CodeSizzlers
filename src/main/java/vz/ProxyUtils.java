package vz;

import java.lang.reflect.Proxy;
import java.net.Authenticator;
import java.net.InetSocketAddress;

public class ProxyUtils {

	private static  Proxy proxy = null;
	private ProxyUtils()
	{
		
	}
	static{createProxy();}
	
	private static void createProxy()
	{
		//Authenticator.setDefault(new SimpleAuthenticator("e9c78118-6ba6-4071-cec9a977f95a",""));
		//proxy = new Proxy(Proxy.Type.HTTP,new InetSocketAddress("proxy.ebiz.verizon.com",80));
		System.setProperty("https.proxyHost", "proxy.ebiz.verizon.com");
		System.setProperty("https:.proxyPort", "80");
		
	}
	
	public static Proxy getProxy()
	{
		return proxy;
	}
}
