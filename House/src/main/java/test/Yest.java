package test;

import java.util.HashMap;
import java.util.List;

import cn.sz.cy.dao.NewsImpl;
import cn.sz.cy.pojo.News;

public class Yest {
	public static void main(String[] args) {
		NewsImpl ni=new NewsImpl();
		HashMap<String,Object>map=new HashMap<String,Object>();
		map.put("end", 3);
		map.put("start", 1);
		List<News> selectByPage = ni.selectByPage(map);
		for (News news : selectByPage) {
			System.out.println(news);
		}
	}
}
