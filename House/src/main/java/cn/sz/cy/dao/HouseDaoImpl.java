package cn.sz.cy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import cn.sz.cy.factory.MysqlSessionFactory;
import cn.sz.cy.pojo.House;


public class HouseDaoImpl implements HouseDao {

	public List<House> getAllHouse() {
		SqlSession ss=null;
		try {
			ss=MysqlSessionFactory.getSqlSession();
			List<House>houseList=ss.selectList("cn.sz.cy.pojo.House.SelectAllHouse");
			return houseList;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			MysqlSessionFactory.closeAll();
		}
		return null;
	}

	public void delHouseById(Integer id) {
		SqlSession ss=null;
		try {
			ss=MysqlSessionFactory.getSqlSession();
			ss.delete("cn.sz.cy.pojo.House.DelHouseById",id);
			ss.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			ss.rollback();
		}
	}

	public void add(House house) {
		SqlSession ss=null;
		try {
			ss=MysqlSessionFactory.getSqlSession();
			ss.delete("cn.sz.cy.pojo.House.add",house);
			ss.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			ss.rollback();
		}
		
	}

	public House selHouseById(Integer id) {
		SqlSession ss=null;
		try {
			ss=MysqlSessionFactory.getSqlSession();
			House h=ss.selectOne("cn.sz.cy.pojo.House.selHouseById", id);
			return h;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			MysqlSessionFactory.closeAll();
		}
		return null;
	}

	public void updateHouse(House house) {
		SqlSession ss=null;
		try {
			ss=MysqlSessionFactory.getSqlSession();
			ss.update("cn.sz.cy.pojo.House.updateHouse", house);
			ss.commit();
		} catch (Exception e) {
			ss.rollback();
			e.printStackTrace();
		}finally {
			MysqlSessionFactory.closeAll();
		}
		
	}
}
