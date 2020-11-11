package com.dahiet.command;

import java.io.Console;
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
		RecruitVO vo = new RecruitVO();
		mainlist = dao.MAINSELECT(vo);
		request.setAttribute("mainlists" , mainlist);
		
		return "/test2.jsp";
	}

}
