package cn.sz.cy.listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class MySessionListener implements HttpSessionListener {

	public void sessionCreated(HttpSessionEvent arg0) {
		System.out.println("会话开始");

	}

	public void sessionDestroyed(HttpSessionEvent arg0) {
		System.out.println("会话结束");

	}

}
