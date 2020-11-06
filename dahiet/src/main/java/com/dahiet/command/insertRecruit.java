package com.dahiet.command;

import java.io.Console;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.RecruitDao;
import com.dahiet.vo.RecruitVO;


public class insertRecruit implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		RecruitDao dao = new RecruitDao();
		RecruitVO vo = new RecruitVO();
		
		HttpSession session = request.getSession();
		String no = (String) session.getAttribute("no");
		session.invalidate();
		
		
		vo.setNo(no);
		vo.setTitle(request.getParameter("title"));
		vo.setPosition(request.getParameter("position"));
		vo.setWork(request.getParameter("work"));
		vo.setEmp_type(request.getParameter("emp_type"));
		vo.setLoc(request.getParameter("loc"));
		vo.setQualify(request.getParameter("qualify"));
		vo.setSalary(request.getParameter("salary"));
		vo.setNewbi(request.getParameter("newbi"));
		
		int n = dao.insert(vo);
		String page;

		if (n != 0) {
			page = "jsp/company/recruitSucess.jsp";
		} else {
			page = "jsp/company/recruitFail.jsp";
		}

		return page;
	}

}
