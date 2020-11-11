package com.dahiet.vo;

public class SearchVO {
	private String loc[];
	private String item[];
	private String emp_type[];
	private String salary;
	private String type[];
	private String work[];
	public String[] getLoc() {
		return loc;
	}
	public void setLoc(String[] loc) {
		this.loc = loc;
	}
	public String[] getItem() {
		return item;
	}
	public void setItem(String[] item) {
		this.item = item;
	}
	public String[] getEmp_type() {
		return emp_type;
	}
	public void setEmp_type(String[] emp_type) {
		this.emp_type = emp_type;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String[] getType() {
		return type;
	}
	public void setType(String[] type) {
		this.type = type;
	}
	public String[] getWork() {
		return work;
	}
	public void setWork(String work[]) {
		this.work = work;
	}

}	
