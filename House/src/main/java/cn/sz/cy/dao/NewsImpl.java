package cn.sz.cy.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import cn.sz.cy.factory.MysqlSessionFactory;
import cn.sz.cy.pojo.News;

public class NewsImpl implements NewsDao {

	public List<News> SelectAllNews() {
		SqlSession ss=null;
		try {
			ss=MysqlSessionFactory.getSqlSession();
			List<News>newsList=ss.selectList("cn.sz.cy.pojo.News.SelectAllNews");
			return newsList;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			MysqlSessionFactory.closeAll();
		}
		return null;
	}

	public List<News> selectByPage(HashMap <String, Object> p) {
		SqlSession ss=null;
		try {
			ss=MysqlSessionFactory.getSqlSession();
			List<News>newsList=ss.selectList("cn.sz.cy.pojo.News.select",p);
			return newsList;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			MysqlSessionFactory.closeAll();
		}
		return null;
	}

	public int selectCount() {
		SqlSession ss=null;
		int num=0;
		try {
			ss=MysqlSessionFactory.getSqlSession();
			num=ss.selectOne("cn.sz.cy.pojo.News.selectCount");
			return num;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			MysqlSessionFactory.closeAll();
		}
		return 0;
	}

	public void delete(Integer id) {
		SqlSession ss=null;
		try {
			ss=MysqlSessionFactory.getSqlSession();
			ss.delete("cn.sz.cy.pojo.News.delete",id);
			ss.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			ss.rollback();
		}finally {
			MysqlSessionFactory.closeAll();
		}
		
	}

	public void addNews(News news) {
		SqlSession ss=null;
		try {
			ss=MysqlSessionFactory.getSqlSession();
			ss.insert("cn.sz.cy.pojo.News.add",news);
			ss.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			ss.rollback();
		}finally {
			MysqlSessionFactory.closeAll();
		}
		
	}

}
