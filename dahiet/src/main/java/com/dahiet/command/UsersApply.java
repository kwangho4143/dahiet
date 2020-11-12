package com.dahiet.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.ResumeDao;
import com.dahiet.dao.ResumeStatusDao;
import com.dahiet.vo.ResumeStatusVO;
import com.dahiet.vo.ResumeVO;

public class UsersApply implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String recruit_seq = request.getParameter("recruit_seq");
		//
		ResumeStatusDao dao = new ResumeStatusDao();
		List<ResumeStatusVO> list  = dao.select(recruit_seq);
		request.setAttribute("list", list);
		//
//		for(int i=0;i<list.size();i++) {
//			list.get(i).getResume_seq();
//		}
//		
//		ResumeVO rvo = new ResumeVO();
//		ResumeDao rdao = new ResumeDao();
//		rvo.setResume_seq(resume_seq);
//		
//		rdao.selectjoin()
		
		
		
		
		
		
		
		
		
		
		
		
		
		return "jsp/company/recruitApplyResult.jsp";
	}

}
