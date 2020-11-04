package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;

public class ResumeAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
//		ResumeDao dao = new ResumeDao();
//		ResumeVO vo = new ResumeVO();
//		request.setAttribute("", a);
		
		return null;
		return "/jsp/resume/mainResume.jsp";
	}

}
