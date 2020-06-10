package cn.sz.cy.pojo;

import java.io.Serializable;

public class Menu implements Serializable {
	private int menuid; 
	private String menu_name; 
	private int parentid; 
	private String picpath; 
	private String menu_status; 
	private String menu_url;
	public Menu() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Menu(int menuid, String menu_name, int parentid, String picpath, String menu_status, String menu_url) {
		super();
		this.menuid = menuid;
		this.menu_name = menu_name;
		this.parentid = parentid;
		this.picpath = picpath;
		this.menu_status = menu_status;
		this.menu_url = menu_url;
	}
	public int getMenuid() {
		return menuid;
	}
	public void setMenuid(int menuid) {
		this.menuid = menuid;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public int getParentid() {
		return parentid;
	}
	public void setParentid(int parentid) {
		this.parentid = parentid;
	}
	public String getPicpath() {
		return picpath;
	}
	public void setPicpath(String picpath) {
		this.picpath = picpath;
	}
	public String getMenu_status() {
		return menu_status;
	}
	public void setMenu_status(String menu_status) {
		this.menu_status = menu_status;
	}
	public String getMenu_url() {
		return menu_url;
	}
	public void setMenu_url(String menu_url) {
		this.menu_url = menu_url;
	}
	@Override
	public String toString() {
		return "News [menuid=" + menuid + ", menu_name=" + menu_name + ", parentid=" + parentid + ", picpath=" + picpath
				+ ", menu_status=" + menu_status + ", menu_url=" + menu_url + "]";
	}
	
}
