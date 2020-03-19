package com.kidream.context;

import javax.servlet.ServletRequest;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class RequestListener
 *
 */

@WebListener
public class RequestListener implements ServletRequestListener {

    public RequestListener() {
    	
    }

    public void requestDestroyed(ServletRequestEvent sre)  { 
    	
    }

    public void requestInitialized(ServletRequestEvent sre)  { 
    	ServletRequest request = sre.getServletRequest();
    	System.out.println("用户访问网站：");
    	System.out.println("主机："+request.getRemoteHost()+"ip地址为："+request.getRemoteAddr());
    	
    }
	
}
