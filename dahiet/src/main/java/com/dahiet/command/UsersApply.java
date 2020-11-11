package com.dahiet.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.ResumeStatusDao;
import com.dahiet.vo.ResumeStatusVO;

public class UsersApply implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String recruit_seq = request.getParameter("recruit_seq");
		ResumeStatusDao dao = new ResumeStatusDao();
		List<ResumeStatusVO> list  = dao.select(recruit_seq);
		request.setAttribute("list", list);
		return "jsp/company/recruitApplyResult.jsp";
	}

}
