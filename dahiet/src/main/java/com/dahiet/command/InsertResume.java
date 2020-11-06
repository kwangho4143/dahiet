package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.ResumeDao;
import com.dahiet.vo.ResumeVO;

public class InsertResume implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ResumeDao dao = new ResumeDao();
		ResumeVO vo = new ResumeVO();

		HttpSession session = request.getSession();
		String tel = (String)session.getAttribute("tel");
		vo.setTel(tel);
		vo = dao.loadInfo(vo);
		
		request.setAttribute("vo", vo);
		
		int n = dao.insertResume(vo);
		String page;
		if (n != 0) { //이력서 등록 성공
			page = "jsp/resume/insertResumeSuccess.jsp";
		} else { //이력서 등록 실패
			page = "jsp/resume/insertResumeSuccess.jsp";
		}
		
		return page;
	}
}
