package cn.sz.cy.factory;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MysqlSessionFactory {
	private static String resouse="mybatis.xml";
	private static InputStream is=null;
	private static SqlSessionFactoryBuilder builder =null;
	private static SqlSessionFactory factory =null;
	private static  ThreadLocal<SqlSession> threadlocal=new ThreadLocal<SqlSession>();
	static {
		try {
			is=Resources.getResourceAsStream(resouse);
			builder=new SqlSessionFactoryBuilder();
			factory=builder.build(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static SqlSession getSqlSession() {
		SqlSession ss=threadlocal.get();
		if(ss==null) {
			ss=factory.openSession();
			return ss;
		}
		threadlocal.set(ss);
		return null;
	}
	
	public static void closeAll() {
		SqlSession ss=threadlocal.get();
		if(ss!=null) {
			ss.close();
		}
		threadlocal.set(null);
	}
}
