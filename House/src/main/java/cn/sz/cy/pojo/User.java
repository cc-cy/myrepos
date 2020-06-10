package cn.sz.cy.pojo;

import java.io.Serializable;

public class User implements Serializable {
	private int userid; 
	private String loginname; 
	private String loginpwd; 
	private String realname;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(String loginname, String loginpwd) {
		super();
		this.loginname = loginname;
		this.loginpwd = loginpwd;
	}

	public User(int userid, String loginname, String loginpwd, String realname) {
		super();
		this.userid = userid;
		this.loginname = loginname;
		this.loginpwd = loginpwd;
		this.realname = realname;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getLoginpwd() {
		return loginpwd;
	}
	public void setLoginpwd(String loginpwd) {
		this.loginpwd = loginpwd;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", loginname=" + loginname + ", loginpwd=" + loginpwd + ", realname="
				+ realname + "]";
	}
	
	
}
