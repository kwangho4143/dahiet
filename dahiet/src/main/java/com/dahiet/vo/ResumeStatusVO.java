package com.dahiet.vo;

import java.sql.Date;

public class ResumeStatusVO {
	private String resume_supply_seq;
	private String resume_seq;
	private String recruit_seq;
	private Date apply_date;
	
	
	
	public String getResume_supply_seq() {
		return resume_supply_seq;
	}
	public void setResume_supply_seq(String resume_supply_seq) {
		this.resume_supply_seq = resume_supply_seq;
	}
	public String getResume_seq() {
		return resume_seq;
	}
	public void setResume_seq(String resume_seq) {
		this.resume_seq = resume_seq;
	}
	public String getRecruit_seq() {
		return recruit_seq;
	}
	public void setRecruit_seq(String recruit_seq) {
		this.recruit_seq = recruit_seq;
	}
	public Date getApply_date() {
		return apply_date;
	}
	public void setApply_date(Date apply_date) {
		this.apply_date = apply_date;
	}

}
