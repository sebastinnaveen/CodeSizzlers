package com.vz.vzcommunicator;


import android.support.v7.app.ActionBarActivity;
import android.support.v7.app.ActionBar;
import android.support.v4.app.Fragment;
import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.os.Build;

public class MainActivity extends ActionBarActivity {

	private WebView webView;
	private static ProgressDialog dialog = null;
	@SuppressWarnings("deprecation")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);	
		if (savedInstanceState == null) {
			CookieSyncManager.createInstance(this);
			CookieManager cookieManager = CookieManager.getInstance();
			cookieManager.removeAllCookie();
			webView = (WebView) findViewById(R.id.webview);
			CookieSyncManager.createInstance(this);
			CookieManager.getInstance().setAcceptCookie(true);
			CookieSyncManager.getInstance().startSync();
			webView.getSettings().setJavaScriptEnabled(true);
			webView.getSettings().setAppCacheEnabled(true);
			webView.getSettings().setGeolocationEnabled(true);
			webView.setWebViewClient(new Callback());
			webView.setWebChromeClient(new GeoWebChromeClient());
			webView.loadUrl("http://vz.cfapps.io/jsp/login.jsp");
		}
	}
	
	private class Callback extends WebViewClient {
		@Override
		public void onPageStarted(WebView view, String url, Bitmap favicon) {
			// TODO Auto-generated method stub
			super.onPageStarted(view, url, favicon);
			dialog = ProgressDialog.show(webView.getContext(), "","Loading..", true);
		}

		@Override
		public boolean shouldOverrideUrlLoading(WebView view, String url) {
			view.loadUrl(url);
			return true;
		}

		public void onPageFinished(WebView view, String url) {
			// TODO Auto-generated method stub
			super.onPageFinished(view, url);
			dialog.dismiss();
		}

	}
	 public class GeoWebChromeClient extends WebChromeClient {
	        @Override
	        public void onGeolocationPermissionsShowPrompt(String origin,
	                GeolocationPermissions.Callback callback) {
	            // Always grant permission since the app itself requires location
	            // permission and the user has therefore already granted it
	            callback.invoke(origin, true, false);
	        }
	    }
	 @Override
		protected void onSaveInstanceState(Bundle outState) {
			super.onSaveInstanceState(outState);
			webView.saveState(outState);
		}

		@Override
		protected void onRestoreInstanceState(Bundle savedInstanceState) {
			super.onRestoreInstanceState(savedInstanceState);
			webView.restoreState(savedInstanceState);
		}
		
}
