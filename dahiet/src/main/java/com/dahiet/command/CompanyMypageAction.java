package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.ComDao;
import com.dahiet.vo.ComVO;

public class CompanyMypageAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		ComDao dao = new ComDao();
		ComVO vo = new ComVO();
		vo.setId(id);
		vo = dao.selectLogIn(vo);
		request.setAttribute("vo", vo);
		
		return "/jsp/company/CompanyMypage.jsp";
	}

}
