package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.ReviewDao;
import com.dahiet.vo.ReviewVO;

public class ReviewInsert implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReviewDao dao = new ReviewDao();
		ReviewVO vo = new ReviewVO();

		vo.setId(request.getParameter("id"));
		vo.setTitle(request.getParameter("title"));
		vo.setContent(request.getParameter("content"));
		vo.setCompany(request.getParameter("company"));
		vo.setNewbi(request.getParameter("newbi"));
		int n = dao.re_insert(vo);
		String page;

		if (n != 0) {
			page = "jsp/company/recruitSucess.jsp";
		} else {
			page = "jsp/company/recruitFail.jsp";
		}

		return page;
	}

}
