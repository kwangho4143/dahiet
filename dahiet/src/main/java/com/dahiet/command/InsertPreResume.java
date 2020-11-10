package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.ResumeDao;
import com.dahiet.vo.ResumeVO;

public class InsertPreResume implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ResumeDao dao = new ResumeDao();
		ResumeVO vo = new ResumeVO();
		HttpSession session = request.getSession();
		String tel = (String)session.getAttribute("tel");
		List<ResumeVO> list = new ArrayList<>();
		vo.setTel(tel);
		list = dao.loadInfo(vo);
		
		request.setAttribute("list", list);
		
		return "/jsp/resume/InsertPreResume.jsp";
	}

}
