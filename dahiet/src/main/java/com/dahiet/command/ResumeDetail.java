package com.dahiet.command;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.ResumeDao;
import com.dahiet.dao.ResumeDetailDao;
import com.dahiet.vo.ResumeVO;

public class ResumeDetail implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		// ResumeDetailDao dao = new ResumeDetailDao();
		HttpSession session = request.getSession();
		String resume_seq = (String) session.getAttribute("currentseq");
		ResumeVO vo = new ResumeVO();
		// 경력사항
		String[] co_name = request.getParameterValues("co_name");
		String[] dept_name = request.getParameterValues("dept_name");
		String[] ca_salary = request.getParameterValues("ca_salary");
		String[] ca_hiredate = request.getParameterValues("ca_hiredate");
		String[] ca_retiredate = request.getParameterValues("ca_retiredate");
		String[] ca_worked = request.getParameterValues("ca_worked");
		if (co_name != null && co_name.length >0 && !co_name[0].isEmpty()) {
			for (int i = 0; i < co_name.length; i++) {
				vo = new ResumeVO();
				ResumeDetailDao dao = new ResumeDetailDao();
				vo.setResume_seq(resume_seq);
				vo.setCo_name(co_name[i]);
				vo.setDept_name(dept_name[i]);
				vo.setCa_salary(ca_salary[i]);
				vo.setCa_hiredate(Date.valueOf(ca_hiredate[i]));
				;
				vo.setCa_retiredate(Date.valueOf(ca_retiredate[i]));
				;
				vo.setCa_worked(ca_worked[i]);
				dao.insertCa(vo);
			}
		}
		// 자격사항
		String[] lic_name = request.getParameterValues("lic_name");
		String[] lic_no = request.getParameterValues("lic_no");
		String[] lic_place = request.getParameterValues("lic_place");
		String[] lic_getdate = request.getParameterValues("lic_getdate");
		if (lic_name != null && lic_name.length >0 && !lic_name[0].isEmpty()) {
			for (int i = 0; i < lic_name.length; i++) {
				vo = new ResumeVO();
				ResumeDetailDao dao = new ResumeDetailDao();
				vo.setResume_seq(resume_seq);
				vo.setLic_name(lic_name[i]);
				vo.setLic_no(lic_no[i]);
				vo.setLic_place(lic_place[i]);
				vo.setLic_getdate(Date.valueOf(lic_getdate[i]));
				
				dao.insertLi(vo);
			}
		}
		// 대외활동
		String[] act_type = request.getParameterValues("act_type");
		String[] act_name = request.getParameterValues("act_name");
		String[] act_publish = request.getParameterValues("act_publish");
		String[] act_startdate = request.getParameterValues("act_startdate");
		String[] act_enddate = request.getParameterValues("act_enddate");
		if (act_type != null && act_type.length >0 && !act_type[0].isEmpty()) {
			for (int i = 0; i < act_type.length; i++) {
				vo = new ResumeVO();
				ResumeDetailDao dao = new ResumeDetailDao();
				vo.setResume_seq(resume_seq);
				vo.setAct_type(act_type[i]);
				vo.setAct_name(act_name[i]);
				vo.setAct_publish(act_publish[i]);
				vo.setAct_startdate(Date.valueOf(act_startdate[i]));
				vo.setAct_enddate(Date.valueOf(act_enddate[i]));
				dao.insertAc(vo);
				;
			}
		}
		// 수상내역
		String[] awd_name = request.getParameterValues("awd_name");
		String[] awd_place = request.getParameterValues("awd_place");
		String[] awd_date = request.getParameterValues("awd_date");
		String[] awd_content = request.getParameterValues("awd_content");
		if (awd_name != null && awd_name.length >0 && !awd_name[0].isEmpty()) {
			for (int i = 0; i < awd_name.length; i++) {
				vo = new ResumeVO();
				ResumeDetailDao dao = new ResumeDetailDao();
				vo.setResume_seq(resume_seq);
				vo.setAwd_name(awd_name[i]);
				vo.setAwd_place(awd_place[i]);
				vo.setAwd_date(Date.valueOf(awd_date[i]));
				vo.setAwd_content(awd_content[i]);
				dao.insertAw(vo);
				;
			}
		}
		// 어학능력
		String[] lag_name = request.getParameterValues("lag_name");
		String[] lag_place = request.getParameterValues("lag_place");
		String[] lag_score = request.getParameterValues("lag_score");
		String[] lag_date = request.getParameterValues("lag_date");
		if (lag_name != null && lag_name.length >0 && !lag_name[0].isEmpty()) {
			for (int i = 0; i < awd_name.length; i++) {
				vo = new ResumeVO();
				ResumeDetailDao dao = new ResumeDetailDao();
				vo.setResume_seq(resume_seq);
				vo.setLag_name(lag_name[i]);
				vo.setLag_place(lag_place[i]);
				vo.setLag_score(lag_score[i]);
				vo.setLag_date(Date.valueOf(lag_date[i]));
				dao.insertLa(vo);
				;
			}
		}
		Enumeration se = session.getAttributeNames();

		while (se.hasMoreElements()) {
			String getse = se.nextElement() + "";
			System.out.println("@@@@@@@ session : " + getse + " : " + session.getAttribute(getse));
		}
		
		
		
		return "/ResumeResult.do";
	}

}
