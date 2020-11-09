package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.ResumeStatusDao;
import com.dahiet.vo.ResumeStatusVO;

public class ResumeApply implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String recruit_seq = request.getParameter("recruit_seq");
		String resume_seq = request.getParameter("resume_seq");
		
		
		
		
		
		ResumeStatusDao dao = new ResumeStatusDao();
		ResumeStatusVO vo = new ResumeStatusVO();
		
		
		
		return "/jsp/resume/resumeApply.jsp";
	}

}
