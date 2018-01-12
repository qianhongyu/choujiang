package com.xinyenetwork.prize.pojo;

public class People {
	
	private int userid;
	private String headpath;
	private String username;
	public People(int userid, String headpath, String username) {
		super();
		this.userid = userid;
		this.headpath = headpath;
		this.username = username;
	}
	public People() {
		super();
		// TODO 鑷姩鐢熸垚鐨勬瀯閫犲嚱鏁板瓨鏍�	
		}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getHeadpath() {
		return headpath;
	}
	public void setHeadpath(String headpath) {
		this.headpath = headpath;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

}
