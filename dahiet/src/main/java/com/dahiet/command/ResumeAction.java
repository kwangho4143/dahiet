package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.ResumeDao;
import com.dahiet.vo.ResumeVO;

public class ResumeAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ResumeDao dao = new ResumeDao();
		ResumeVO vo = new ResumeVO();
		vo.setId(request.getParameter("id"));
		vo = dao.LOADINFO(vo);
		request.setAttribute("vo", vo);		
		return "/jsp/resume/mainResume.jsp";
	}

}
