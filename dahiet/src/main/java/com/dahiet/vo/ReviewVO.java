package com.dahiet.vo;

import java.sql.Date;

public class ReviewVO {
	private String no;
	private String id;
	private String title;
	private String content;
	private Date redate;
	private String company;
	private String newbi;
	private String password;
	public String getNo() {
		return no;
	}
	public void setNo(String d) {
		this.no = d;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRedate() {
		return redate;
	}
	public void setRedate(Date redate) {
		this.redate = redate;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getNewbi() {
		return newbi;
	}
	public void setNewbi(String newbi) {
		this.newbi = newbi;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
