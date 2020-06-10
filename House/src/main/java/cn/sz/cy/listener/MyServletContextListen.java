package cn.sz.cy.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyServletContextListen implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("服务器关闭");

	}

	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("服务器启动");

	}

}
