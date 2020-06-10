package cn.sz.cy.pojo;

import java.io.Serializable;
import java.util.HashMap;

public class House implements Serializable {
	private int houseid; 
	private String title; 
	private String picpath; 
	private String summary; 
	private String content_url; 
	private int menuid; 
	private String house_status;
	public House() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public House(int houseid, String title, String summary, int menuid, String house_status) {
		super();
		this.houseid = houseid;
		this.title = title;
		this.summary = summary;
		this.menuid = menuid;
		this.house_status = house_status;
	}

	public House( String title, String summary, int menuid,String house_status) {
		super();
		this.title = title;
		this.summary = summary;
		this.menuid = menuid;
		this.house_status = house_status;
	}
	public int getHouseid() {
		return houseid;
	}
	public void setHouseid(int houseid) {
		this.houseid = houseid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPicpath() {
		return picpath;
	}
	public void setPicpath(String picpath) {
		this.picpath = picpath;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getContent_url() {
		return content_url;
	}
	public void setContent_url(String content_url) {
		this.content_url = content_url;
	}
	public int getMenuid() {
		return menuid;
	}
	public void setMenuid(int menuid) {
		this.menuid = menuid;
	}
	public String getHouse_status() {
		return house_status;
	}
	public void setHouse_status(String house_status) {
		this.house_status = house_status;
	}
	@Override
	public String toString() {
		return "House [houseid=" + houseid + ", title=" + title + ", picpath=" + picpath + ", summary=" + summary
				+ ", content_url=" + content_url + ", menuid=" + menuid + ", house_status=" + house_status + "]";
	}
	
}
