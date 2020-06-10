package cn.sz.cy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import cn.sz.cy.factory.MysqlSessionFactory;
import cn.sz.cy.pojo.Menu;

public class MenuImpl implements MenuDao {

	public List<Menu> selectParentTitle() {
		SqlSession ss=null;
		try {
			ss=MysqlSessionFactory.getSqlSession();
			List<Menu>menuList=ss.selectList("cn.sz.cy.pojo.Menu.selectParentTitle");
			return menuList;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			MysqlSessionFactory.closeAll();
		}
		return null;
	}

	public List<Menu> selectChildTitle(Integer id) {
		SqlSession ss=null;
		try {
			ss=MysqlSessionFactory.getSqlSession();
			List<Menu>childMenuList=ss.selectList("cn.sz.cy.pojo.Menu.selectChildTitle", id);
			return childMenuList;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			MysqlSessionFactory.closeAll();
		}
		return null;
	}

}
