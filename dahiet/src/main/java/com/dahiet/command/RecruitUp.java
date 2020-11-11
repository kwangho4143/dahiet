package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.RecruitDao;
import com.dahiet.dao.ReviewDao;
import com.dahiet.vo.RecruitVO;
import com.dahiet.vo.ReviewVO;

public class RecruitUp implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		RecruitDao dao = new RecruitDao();
		RecruitVO vo = new RecruitVO();

		vo.setRecruit_seq(request.getParameter("recruit_seq"));
		vo.setTitle(request.getParameter("title"));
		vo.setEmp_type(request.getParameter("emp_type"));
		vo.setLoc(request.getParameter("loc"));
		vo.setWork(request.getParameter("work"));
		vo.setQualify(request.getParameter("qualify"));
		vo.setSalary(request.getParameter("salary"));
		vo.setNewbi(request.getParameter("newbi"));
		int n = dao.RECURUITUPDATE(vo);
		request.setAttribute("b", n);

		return "/showRecruitList.do";
	}

}
