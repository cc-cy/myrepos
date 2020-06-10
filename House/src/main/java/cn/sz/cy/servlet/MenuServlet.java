package cn.sz.cy.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.sz.cy.dao.MenuImpl;
import cn.sz.cy.pojo.Menu;

/**
 * Servlet implementation class MenuServlet
 */
public class MenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MenuImpl mi = new MenuImpl();
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		String op=request.getParameter("op");
		String op2=request.getParameter("op2");
		if(op!=null) {
			int id=Integer.parseInt(op2);
			List<Menu>childMenuList =mi.selectChildTitle(id);
			session.setAttribute("menuChildList", childMenuList);
			request.getRequestDispatcher(op).forward(request, response);
		}else {
			List<Menu>menuList  =mi.selectParentTitle();
			session.setAttribute("menuList", menuList);
			request.getRequestDispatcher("HouseServlet").forward(request, response);
		}
	}

}
