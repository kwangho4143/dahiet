package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.RecruitDao;
import com.dahiet.vo.RecruitVO;

public class ShowRecruitList implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		RecruitDao dao = new RecruitDao();
		List<RecruitVO> list = new ArrayList<RecruitVO>();
		RecruitVO vo = new RecruitVO();
		list = dao.select(vo);
		request.setAttribute("rlists", list);
		
		return "/jsp/company/recruitList.jsp";
	}

}
