package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.RecruitDao;
import com.dahiet.vo.RecruitVO;

public class MainListShow implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		RecruitDao dao = new RecruitDao();
		List<RecruitVO> mainlist = new ArrayList<RecruitVO>();
		HttpSession session = request.getSession();
		String no = (String)session.getAttribute("no");
		RecruitVO vo = new RecruitVO();
		vo.setNo(no);
		mainlist = dao.MAINSELECT(vo);
		
		request.setAttribute("mainlists", mainlist);
		
		return "/jsp/test2.jsp";
	}

}
