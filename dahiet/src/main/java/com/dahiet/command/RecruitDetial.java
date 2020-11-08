package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.ReviewDao;
import com.dahiet.vo.ReviewVO;

public class RecruitDetial implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReviewDao dao = new ReviewDao();
		ReviewVO vo = new ReviewVO();
		vo.setNo(request.getParameter("no"));
		vo = dao.RE_DE_SELECT(vo);
		request.setAttribute("vo", vo);
		return "/jsp/company/recuritDetail.jsp";
	}

}	