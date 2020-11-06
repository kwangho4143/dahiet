package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.ResumeDao;
import com.dahiet.vo.ResumeVO;

public class ResumeList implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ResumeDao dao = new ResumeDao();
		ResumeVO vo = new ResumeVO();
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		vo.setId(id);
		vo = dao.loadInfo(vo);
		
		
		
		
		
		
		//request.setAttribute("vo", vo);		
		return "/jsp/resume/mainResume.jsp";
	}

}
