package com.dahiet.command;

import java.util.ArrayList;
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
		
		ResumeDetailDao dao = new ResumeDetailDao();
		ResumeVO vo = new ResumeVO();
		List<ResumeVO> list1 = new ArrayList<ResumeVO>();
		List<ResumeVO> list2 = new ArrayList<ResumeVO>();
		List<ResumeVO> list3 = new ArrayList<ResumeVO>();
		List<ResumeVO> list4 = new ArrayList<ResumeVO>();
		List<ResumeVO> list5 = new ArrayList<ResumeVO>();
		
		HttpSession session = request.getSession();
		String resume_seq = (String)session.getAttribute("resume_seq");
		vo.setResume_seq(resume_seq);
		
		list1 = dao.insertCareer(resume_seq);
		list2 = dao.insertLicense(resume_seq);
		list3 = dao.insertActivity(resume_seq);
		list4 = dao.insertAward(resume_seq);
		list5 = dao.insertLanguage(resume_seq);
		
		request.setAttribute("list1", list1);
		request.setAttribute("list2", list2);
		request.setAttribute("list3", list3);
		request.setAttribute("list4", list4);
		request.setAttribute("list5", list5);
		
		return "/jsp/resume/ResumeDetail.jsp";
	}

}
