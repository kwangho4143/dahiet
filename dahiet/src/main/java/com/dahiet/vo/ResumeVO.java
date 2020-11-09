package com.dahiet.vo;

import java.sql.Date;

public class ResumeVO {

	// 유저
	private String id;
	private String pw;
	private String name; // 이름
	private String imag; // 사진
	private Date birth; // 생년월일
	private String email; // 이메일
	private String tel; // 휴대폰
	private String addr; // 주소
	private String univ; // 최종학력
	private String major; // 전공
	private String score; // 졸업학점
	// 이력서
	private String resume_name; // 이력서 이름
	private String resume_seq;
	private Date redgt;
	// 공통
	private String resume_sub_seq; // 이력서 하위 시퀀스

	// 경력
	private String co_name[]; // 회사명
	private String dept_name[]; // 근무부서
	private String ca_salary[]; // 연봉
	private Date ca_hiredate[]; // 입사일
	private Date ca_retiredate[]; // 퇴사일
	private String ca_worked[]; // 담당업무
	// 자격
	private String lic_name[]; // 자격증명
	private String lic_no[]; // 자격증번호
	private Date lic_place[]; // 발행처
	private Date lic_getdate[]; // 취득연월일
	// 대외
	private String act_type[]; // 활동구분(고용형태)
	private String act_name[]; // 활동명
	private String act_publish[]; // 주관처
	private Date act_startdate[]; // 시작일
	private Date act_enddate[]; // 종료일
	// 수상
	private String awd_name[]; // 수상명
	private String awd_place[]; // 수여기관
	private Date awd_date[]; // 수상일
	private String awd_content[]; // 수상내용
	// 어학
	private String lag_name[]; // 어학자격명
	private String lag_place[]; // 인증기관
	private String lag_score[]; // 성적
	private String lag_date[]; // 인증날짜

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImag() {
		return imag;
	}

	public void setImag(String imag) {
		this.imag = imag;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getUniv() {
		return univ;
	}

	public void setUniv(String univ) {
		this.univ = univ;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getResume_name() {
		return resume_name;
	}

	public void setResume_name(String resume_name) {
		this.resume_name = resume_name;
	}

	public String getResume_seq() {
		return resume_seq;
	}

	public void setResume_seq(String resume_seq) {
		this.resume_seq = resume_seq;
	}

	public Date getRedgt() {
		return redgt;
	}

	public void setRedgt(Date redgt) {
		this.redgt = redgt;
	}

	public String getResume_sub_seq() {
		return resume_sub_seq;
	}

	public void setResume_sub_seq(String resume_sub_seq) {
		this.resume_sub_seq = resume_sub_seq;
	}

	public String[] getCo_name() {
		return co_name;
	}

	public void setCo_name(String[] co_name) {
		this.co_name = co_name;
	}

	public String[] getDept_name() {
		return dept_name;
	}

	public void setDept_name(String[] dept_name) {
		this.dept_name = dept_name;
	}

	public String[] getCa_salary() {
		return ca_salary;
	}

	public void setCa_salary(String[] ca_salary) {
		this.ca_salary = ca_salary;
	}

	public Date[] getCa_hiredate() {
		return ca_hiredate;
	}

	public void setCa_hiredate(Date[] ca_hiredate) {
		this.ca_hiredate = ca_hiredate;
	}

	public Date[] getCa_retiredate() {
		return ca_retiredate;
	}

	public void setCa_retiredate(Date[] ca_retiredate) {
		this.ca_retiredate = ca_retiredate;
	}

	public String[] getCa_worked() {
		return ca_worked;
	}

	public void setCa_worked(String[] ca_worked) {
		this.ca_worked = ca_worked;
	}

	public String[] getLic_name() {
		return lic_name;
	}

	public void setLic_name(String[] lic_name) {
		this.lic_name = lic_name;
	}

	public String[] getLic_no() {
		return lic_no;
	}

	public void setLic_no(String[] lic_no) {
		this.lic_no = lic_no;
	}

	public Date[] getLic_place() {
		return lic_place;
	}

	public void setLic_place(Date[] lic_place) {
		this.lic_place = lic_place;
	}

	public Date[] getLic_getdate() {
		return lic_getdate;
	}

	public void setLic_getdate(Date[] lic_getdate) {
		this.lic_getdate = lic_getdate;
	}

	public String[] getAct_type() {
		return act_type;
	}

	public void setAct_type(String[] act_type) {
		this.act_type = act_type;
	}

	public String[] getAct_name() {
		return act_name;
	}

	public void setAct_name(String[] act_name) {
		this.act_name = act_name;
	}

	public String[] getAct_publish() {
		return act_publish;
	}

	public void setAct_publish(String[] act_publish) {
		this.act_publish = act_publish;
	}

	public Date[] getAct_startdate() {
		return act_startdate;
	}

	public void setAct_startdate(Date[] act_startdate) {
		this.act_startdate = act_startdate;
	}

	public Date[] getAct_enddate() {
		return act_enddate;
	}

	public void setAct_enddate(Date[] act_enddate) {
		this.act_enddate = act_enddate;
	}

	public String[] getAwd_name() {
		return awd_name;
	}

	public void setAwd_name(String[] awd_name) {
		this.awd_name = awd_name;
	}

	public String[] getAwd_place() {
		return awd_place;
	}

	public void setAwd_place(String[] awd_place) {
		this.awd_place = awd_place;
	}

	public Date[] getAwd_date() {
		return awd_date;
	}

	public void setAwd_date(Date[] awd_date) {
		this.awd_date = awd_date;
	}

	public String[] getAwd_content() {
		return awd_content;
	}

	public void setAwd_content(String[] awd_content) {
		this.awd_content = awd_content;
	}

	public String[] getLag_name() {
		return lag_name;
	}

	public void setLag_name(String[] lag_name) {
		this.lag_name = lag_name;
	}

	public String[] getLag_place() {
		return lag_place;
	}

	public void setLag_place(String[] lag_place) {
		this.lag_place = lag_place;
	}

	public String[] getLag_score() {
		return lag_score;
	}

	public void setLag_score(String[] lag_score) {
		this.lag_score = lag_score;
	}

	public String[] getLag_date() {
		return lag_date;
	}

	public void setLag_date(String[] lag_date) {
		this.lag_date = lag_date;
	}

}
