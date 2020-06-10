package cn.sz.cy.pojo;

import java.io.Serializable;

public class News implements Serializable {
	private int newid; 
	private String title; 
	private String content_url; 
	private String  publish_time; 
	private String  picpath; 
	private int menuid; 
	private String summary; 
	private String new_status;
	public News() {
		super();
		// TODO Auto-generated constructor stub
	}
	public News(int newid, String title, String content_url, String publish_time, String picpath, int menuid,
			String summary, String new_status) {
		super();
		this.newid = newid;
		this.title = title;
		this.content_url = content_url;
		this.publish_time = publish_time;
		this.picpath = picpath;
		this.menuid = menuid;
		this.summary = summary;
		this.new_status = new_status;
	}
	
	public int getNewid() {
		return newid;
	}
	public void setNewid(int newid) {
		this.newid = newid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent_url() {
		return content_url;
	}
	public void setContent_url(String content_url) {
		this.content_url = content_url;
	}
	public String getPublish_time() {
		return publish_time;
	}
	public void setPublish_time(String publish_time) {
		this.publish_time = publish_time;
	}
	public String getPicpath() {
		return picpath;
	}
	public void setPicpath(String picpath) {
		this.picpath = picpath;
	}
	public int getMenuid() {
		return menuid;
	}
	public void setMenuid(int menuid) {
		this.menuid = menuid;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getNew_status() {
		return new_status;
	}
	public void setNew_status(String new_status) {
		this.new_status = new_status;
	}
	@Override
	public String toString() {
		return "News [newid=" + newid + ", title=" + title + ", content_url=" + content_url + ", publish_time="
				+ publish_time + ", picpath=" + picpath + ", menuid=" + menuid + ", summary=" + summary
				+ ", new_status=" + new_status + "]";
	}
	
	
}
