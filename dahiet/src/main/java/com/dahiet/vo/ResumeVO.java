package com.dahiet.vo;

import java.sql.Date;

public class ResumeVO {

	//유저
	private String id;
	private String pw;
	private String name; //이름
	private String imag; //사진
	private Date birth; //생년월일
	private String email; //이메일
	private String tel; //휴대폰
	private String addr; //주소
	private String univ; //최종학력
	private String major; //전공
	private String score; //졸업학점
	//이력서
	private String resume_name; //이력서 이름
	private String seq;
	private Date redgt;
	//경력
	private String ca_sub_seq;
	private String co_name[]; //회사명
	private String dept_name[]; //근무부서
	private String ca_salary[]; //연봉
	private Date ca_hiredate[]; //입사일
	private Date ca_retiredate[]; //퇴사일
	private String ca_worked[]; //담당업무
	//자격
	private String lic_sub_seq;
	private String lic_name[]; //자격증명
	private String lic_no[]; //자격증번호
	private Date lic_place[]; //발행처
	private Date lic_getdate[]; //취득연월일
	//대외
	private String act_sub_seq;
	private String act_type[]; //활동구분(고용형태)
	private String act_name[]; //활동명
	private String act_publish[]; //주관처
	private Date act_startdate[]; //시작일
	private Date act_enddate[]; //종료일
	//수상
	private String awd_sub_seq;
	private String awd_name[]; //수상명
	private String awd_place[]; //수여기관
	private Date awd_date[]; //수상일
	private String awd_content[]; //수상내용
	//어학
	private String lag_sub_seq;
	private String lag_name[]; //어학자격명
	private String lag_place[]; //인증기관
	private String lag_score[]; //성적
	private String lag_date[]; //인증날짜
	
	
	
}
