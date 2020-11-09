package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.RecruitDao;
import com.dahiet.dao.ResumeDao;
import com.dahiet.dao.ResumeStatusDao;
import com.dahiet.vo.RecruitVO;
import com.dahiet.vo.ResumeStatusVO;
import com.dahiet.vo.ResumeVO;

public class ResumeApply implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String recruit_seq = request.getParameter("recruit_seq");
		String resume_seq = request.getParameter("resume_seq");
		
		RecruitDao cdao = new RecruitDao();
		RecruitVO cvo = new RecruitVO();
		cvo = cdao.selectinf(recruit_seq);
		
		ResumeDao sdao = new ResumeDao();
		ResumeVO svo = new ResumeVO();
		svo = sdao.selectinf(resume_seq);
		
		ResumeStatusDao tdao = new ResumeStatusDao();
		ResumeStatusVO tvo = new ResumeStatusVO();
		
		tdao.insert(cvo, svo);
		
		n
		
		
		return null;
	}

}
