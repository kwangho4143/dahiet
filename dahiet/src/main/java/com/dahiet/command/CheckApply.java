package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.RecruitDao;
import com.dahiet.dao.ResumeStatusDao;
import com.dahiet.vo.ResumeAppliedVO;
import com.dahiet.vo.ResumeStatusVO;

public class CheckApply implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ResumeStatusDao dao = new ResumeStatusDao();
		List<ResumeAppliedVO> list = new ArrayList<>();
		HttpSession session = request.getSession();
		String tel = (String) session.getAttribute("tel");
		list = dao.selectApplied(tel); //원하는 resume_status 테이블값가져옴
		request.setAttribute("list",list);
		
//		List<ResumeAppliedVO> alist= new ArrayList<>();
//		ResumeStatusDao rdao = new ResumeStatusDao();
//		alist=rado.selectFinal();
		
		
		
		
		return "/jsp/resume/UserAppliedResult.jsp";
	}
}
