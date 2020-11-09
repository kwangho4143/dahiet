package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.RecruitDao;
import com.dahiet.dao.ResumeDao;
import com.dahiet.dao.ReviewDao;
import com.dahiet.vo.RecruitVO;
import com.dahiet.vo.ResumeVO;
import com.dahiet.vo.ReviewVO;

public class RecruitDetial implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		RecruitDao dao = new RecruitDao();
		RecruitVO vo = new RecruitVO();
		vo.setRecruit_seq(request.getParameter("no"));
		vo = dao.RECURUITDETAILSELECT(vo);
		request.setAttribute("vo",vo);
		
		
		
		ResumeDao redao = new ResumeDao();
		List<ResumeVO> list = new ArrayList<ResumeVO>();
		ResumeVO revo = new ResumeVO();
		
		list = dao.SELECTINF(revo);
		request.setAttribute("relists", list);
		
		return "/jsp/company/recruitDetail.jsp";
	}

}	