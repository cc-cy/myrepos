package cn.sz.cy.dao;

import java.util.List;

import cn.sz.cy.pojo.Menu;

public interface MenuDao {
	public List<Menu> selectParentTitle();
	public List<Menu> selectChildTitle(Integer id);
}
