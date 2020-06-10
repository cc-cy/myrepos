package cn.sz.cy.dao;

import org.apache.ibatis.session.SqlSession;


import cn.sz.cy.factory.MysqlSessionFactory;
import cn.sz.cy.pojo.User;

public class UserDaoImpl implements UserDao {

	public User getUserByPwd(User u) {
		SqlSession ss=null;
		 
		try {
			ss=MysqlSessionFactory.getSqlSession();
			User user=ss.selectOne("cn.sz.cy.pojo.User.SelectUserByPwd", u);
			return user;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			MysqlSessionFactory.closeAll();
		}
		return null;
	}

}
