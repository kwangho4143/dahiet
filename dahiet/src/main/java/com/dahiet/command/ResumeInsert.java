package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.ResumeDao;
import com.dahiet.dao.ResumeDetailDao;
import com.dahiet.vo.ResumeVO;

public class ResumeInsert implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		ResumeDao dao = new ResumeDao();
		ResumeDetailDao daoD = new ResumeDetailDao();
		ResumeVO vo = new ResumeVO();
		
		HttpSession session = request.getSession();
		String tel = (String)session.getAttribute("tel");
		vo.setTel(tel);
		
		
		System.out.println("이력서제목:"+request.getParameter("resume_name"));
		request.setAttribute("name", request.getParameter("resume_name"));
		vo.setResume_name(request.getParameter("resume_name"));
		
		
		int n = dao.insertResume(vo);
		session.setAttribute("currentseq", vo.getResume_seq());
		
		List<ResumeVO> list = new ArrayList<>();
		list = daoD.loadInfo(vo);
		request.setAttribute("list", list);
		
		
	
		
		String page;

		if (n != 0) {
			page = "jsp/resume/insertResume.jsp";
		} else {
			page = "jsp/resume/insertResumeFail.jsp";
		}
		
		return page;
	}
}
