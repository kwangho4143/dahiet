package com.dahiet.vo;

public class SimpleVO { //상세검색
	private String recruit_seq;
	private String img;
	private String name;
	private String title;
	private String emp_type; //SEARCH N SELECT
	private String work;
	private String salary; //SEARCH N SELECT
	// SEARCH를 위한 값
	private String loc;
	private String item;
	private String type; 
	
	
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEmp_type() {
		return emp_type;
	}
	public void setEmp_type(String emp_type) {
		this.emp_type = emp_type;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getRecruit_seq() {
		return recruit_seq;
	}
	public void setRecruit_seq(String recruit_seq) {
		this.recruit_seq = recruit_seq;
	}
	
}
