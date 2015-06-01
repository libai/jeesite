package com.gome.trend.modules.api.entity;

public class ApiUser {
	
	public String uid;
	public String uname;
	public String avater;
	
	public ApiUser(String uid, String uname, String avater){
		this.uid = uid;
		this.uname = uname;
		this.avater = avater;
	}
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getAvater() {
		return avater;
	}
	public void setAvater(String avater) {
		this.avater = avater;
	}
}
