package cn.sz.cy.test;

import cn.sz.cy.dao.HouseDaoImpl;

public class Test {
	public static void main(String[] args) {
		HouseDaoImpl hdi=new HouseDaoImpl();
		hdi.delHouseById(7);
	}
}
