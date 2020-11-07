package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.ReviewDao;
import com.dahiet.vo.ReviewVO;

public class ReviewDelete implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReviewDao dao = new ReviewDao();
		ReviewVO vo = new ReviewVO();

		vo.setNo(request.getParameter("no"));
		int n = dao.RE_UP_DELETE(vo);
		String page;

		if (n != 0) {
			page = "/ReviewAction.do";
		} else {
			page = "/ReviewAction.do";
		}

		return page;
	}

}
