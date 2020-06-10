package cn.sz.cy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sz.cy.dao.UserDaoImpl;
import cn.sz.cy.pojo.User;

/**
 * Servlet implementation class UserServlet
 */

public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDaoImpl udi = new UserDaoImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Object o = request.getSession().getAttribute("KAPTCHA_SESSION_KEY");
		String name = request.getParameter("textfield");
		String pwd = request.getParameter("textfield2");
		String code = request.getParameter("textfield3");
		PrintWriter out = response.getWriter();
		if (o.toString().equals(code)) {
			User u = new User(name, pwd);
			User user = udi.getUserByPwd(u);
			if (user == null) {
				out.print("<script type='text/javascript'>alert('用户名或密码错误');location.href='login.jsp'</script>");
			} else {
				request.getSession().setAttribute("user", user);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}else {
			out.print("<script type='text/javascript'>alert('验证码错误');location.href='login.jsp'</script>");
		}

	}

}
