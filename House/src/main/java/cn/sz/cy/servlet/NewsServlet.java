package cn.sz.cy.servlet;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import cn.sz.cy.dao.MenuImpl;
import cn.sz.cy.dao.NewsImpl;
import cn.sz.cy.pojo.Menu;
import cn.sz.cy.pojo.News;

/**
 * Servlet implementation class NewsServlet
 */
public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    NewsImpl ni=new NewsImpl();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String op=request.getParameter("op");
			try {
				Method m=this.getClass().getDeclaredMethod(op,new Class[]{HttpServletRequest.class,HttpServletResponse.class});
				m.invoke(this, new Object[] {request,response});
			} catch (NoSuchMethodException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	protected void selectByPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cp1=request.getParameter("cp");
		int cp=1;
		if(cp1!=null && !cp1.equals("")) {
			 cp=Integer.valueOf(cp1);
		}
		int ps=3;
		int num=ni.selectCount();
		int totalpage=num%ps==0?num/ps:num/ps+1;
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("end", cp*ps);
		map.put("start", (cp-1)*ps);
		List<News> newsList=ni.selectByPage(map);
		System.out.println(totalpage);
		request.setAttribute("cp", cp);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("newsList", newsList);
		request.getRequestDispatcher("news.jsp").forward(request, response);
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		int newsid=0;
		if(id!=null && !id.equals("")) {
			newsid=Integer.valueOf(id);
		}
		ni.delete(newsid);
		this.selectByPage(request, response);
		request.getRequestDispatcher("news.jsp").forward(request, response);
	}
	
	protected void preadd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MenuImpl mi = new MenuImpl();
		List<Menu>childMenuList =mi.selectChildTitle(2);
		request.setAttribute("childMenuList", childMenuList);
		request.getRequestDispatcher("news_add.jsp").forward(request, response);
	}
	
	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FileItemFactory factory=new DiskFileItemFactory();
		ServletFileUpload upload =new ServletFileUpload(factory);
		upload.setHeaderEncoding("utf-8");
		try {
			List<FileItem> Item = upload.parseRequest(request);
			News news =new News();
			for (FileItem fileItem : Item) {
				if(fileItem.isFormField()) {//∆’Õ®¿‡–Õ
					String fieldname = fileItem.getFieldName();
					if(fieldname.equals("title")) {
						String str=new String(fileItem.getString().getBytes("ISO-8859-1"),"UTF-8");
						news.setTitle(str);
					}else if(fieldname.equals("content_url")) {
						String str=new String(fileItem.getString().getBytes("ISO-8859-1"),"UTF-8");
						news.setContent_url(str);
					}else if(fieldname.equals("menuid")) {
						news.setMenuid(Integer.valueOf(fileItem.getString()));
					}else if(fieldname.equals("summary")) {
						String str=new String(fileItem.getString().getBytes("ISO-8859-1"),"UTF-8");
						news.setSummary(str);
					}
				}else {
					String realPath=request.getSession().getServletContext().getRealPath("/upload");
					String uuid=UUID.randomUUID().toString();
					String endname=fileItem.getName().substring(fileItem.getName().lastIndexOf("."));
					File file = new File(realPath+"/"+uuid+endname);
					fileItem.write(file);
					news.setPicpath(uuid+endname);
					news.setPublish_time(new Date().toString());
				}
			}
			news.setNew_status(0+"");
			ni.addNews(news);
			this.selectByPage(request, response);
			request.getRequestDispatcher("news.jsp").forward(request, response);	
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
