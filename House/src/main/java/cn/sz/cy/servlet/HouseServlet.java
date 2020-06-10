package cn.sz.cy.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sz.cy.dao.HouseDaoImpl;
import cn.sz.cy.pojo.House;

/**
 * Servlet implementation class HouseSerlet
 */
public class HouseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    HouseDaoImpl hdi=new HouseDaoImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HouseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String op =request.getParameter("op");
		System.out.println(op);
		if(op!=null && op.equals("sel")) {
			this.select(request, response);
			request.getRequestDispatcher("house.jsp").forward(request, response);
		}else if(op!=null && op.equals("del")){
			this.del(request, response);
			request.getRequestDispatcher("house.jsp").forward(request, response);
		}else if(op!=null && op.equals("add")) {
			this.add(request, response);
			request.getRequestDispatcher("house.jsp").forward(request, response);
		}else if(op!=null && op.equals("preadd")) {
			this.selHouseById(request, response);
			request.getRequestDispatcher("addHouse.jsp").forward(request, response);
		}else if(op!=null && op.equals("preupdate")) {
			this.selHouseById(request, response);
			request.getRequestDispatcher("addHouse.jsp").forward(request, response);
		}else if(op!=null && op.equals("update")) {
			this.updateHouse(request, response);
			request.getRequestDispatcher("house.jsp").forward(request, response);
		}else {
			this.select(request, response);
			request.getRequestDispatcher("iframe.jsp").forward(request, response);
		}	
	}

	protected void select(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<House>houseList=hdi.getAllHouse();
		request.setAttribute("houseList", houseList);
	}
	
	protected void del(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		int houseid=-1;
		if(id!=null && !id.equals("")) {
			houseid=Integer.valueOf(id);
		}
		hdi.delHouseById(houseid);
		this.select(request, response);
	}
	
	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title=request.getParameter("title");
		String summary=request.getParameter("summary");
		String mid=request.getParameter("menuid");
		String status=request.getParameter("status");
		int menuid=Integer.valueOf(mid);
		House h=new House(title,summary,menuid,status);
		hdi.add(h);
		this.select(request, response);
	}
	
	protected void selHouseById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		int houseid=-1;
		if(id!=null && !id.equals("")) {
			houseid=Integer.valueOf(id);
		}
		House h=hdi.selHouseById(houseid);
		request.setAttribute("house", h);
	}
	
	protected void updateHouse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("houseid");
		String title=request.getParameter("title");
		String summary=request.getParameter("summary");
		String mid=request.getParameter("menuid");
		String status=request.getParameter("status");
		int houseid=Integer.valueOf(id);
		int menuid=Integer.valueOf(mid);
		House h=new House(houseid,title,summary,menuid,status);
		hdi.updateHouse(h);
		this.select(request, response);
	}
	
}
