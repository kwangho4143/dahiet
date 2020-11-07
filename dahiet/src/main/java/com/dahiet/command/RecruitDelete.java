package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.RecruitDao;
import com.dahiet.dao.ReviewDao;
import com.dahiet.vo.RecruitVO;
import com.dahiet.vo.ReviewVO;

public class RecruitDelete implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		RecruitDao dao = new RecruitDao();
		RecruitVO vo = new RecruitVO();

		vo.setRecruit_seq(request.getParameter("recruit_seq"));

		int n = dao.RECURUITDELETE(vo);
		String page;

		if (n != 0) {
			page = "/showRecruitList.do";
		} else {
			page = "/showRecruitList.do";
		}

		return page;
	}

}
