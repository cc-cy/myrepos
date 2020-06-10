package cn.sz.cy.dao;

import java.util.List;

import cn.sz.cy.pojo.House;

public interface HouseDao {
	
	public List<House> getAllHouse();
	public void delHouseById(Integer id);
	public void add(House house);
	public House selHouseById(Integer id);
	public void updateHouse(House house);
}
