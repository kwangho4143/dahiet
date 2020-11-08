package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.RecruitDao;
import com.dahiet.vo.RecruitVO;

public class RecruitDetial implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		RecruitDao dao = new RecruitDao();
		RecruitVO vo = new RecruitVO();
		vo.setRecruit_seq(request.getParameter("no"));
		vo = dao.RECURUITDETAILSELECT(vo);
		request.setAttribute("vo",vo);
		
		return "/jsp/company/recruitDetail.jsp";
	}

}	