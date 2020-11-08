package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.ReviewDao;
import com.dahiet.vo.ReviewVO;

public class ReviewDetail implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 체크박스 리스트 구현
		ReviewDao dao = new ReviewDao();
		ReviewVO vo = new ReviewVO();
		vo.setNo(request.getParameter("no"));
		vo = dao.RE_DE_SELECT(vo);
		request.setAttribute("vo", vo);
		return "/jsp/review/reviewDetail.jsp";
	}

}
