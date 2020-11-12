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

public class resumeResult implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String resume_seq;
		if(request.getParameter("resumed_seq") != null) {
			resume_seq = request.getParameter("resumed_seq");
		}else {
			//기본정보
			HttpSession session = request.getSession();
			resume_seq =(String)session.getAttribute("currentseq");
			
		}
		
		
		
		
		
		
		//기존
		//기본정보
		//HttpSession session = request.getSession();
		//String resume_seq =(String)session.getAttribute("currentseq");
		
		
		//이력서 작성, 기업 이력서 조희 동일
		ResumeVO vo = new ResumeVO();
		ResumeDao dao = new ResumeDao();
		vo = dao.selectinf(resume_seq);
		request.setAttribute("vo", vo);
		
		ResumeDetailDao detaildao1 = new ResumeDetailDao();
		List<ResumeVO> list1 = new ArrayList<>();
		list1 = detaildao1.selectCa(vo);
		request.setAttribute("list1", list1);
		
		ResumeDetailDao detaildao2 = new ResumeDetailDao();
		List<ResumeVO> list2 = new ArrayList<>();
		list2 = detaildao2.selectAc(vo);
		request.setAttribute("list2", list2);
		
		ResumeDetailDao detaildao3 = new ResumeDetailDao();
		List<ResumeVO> list3 = new ArrayList<>();
		list3 = detaildao3.selectAw(vo);
		request.setAttribute("list3", list3);
		
		ResumeDetailDao detaildao4 = new ResumeDetailDao();
		List<ResumeVO> list4 = new ArrayList<>();
		list4 = detaildao4.selectLi(vo);
		request.setAttribute("list4", list4);
		
		ResumeDetailDao detaildao5 = new ResumeDetailDao();
		List<ResumeVO> list5 = new ArrayList<>();
		list5 = detaildao5.selectLa(vo);
		request.setAttribute("list5", list5);
		
		
		

		
		return "/jsp/resume/ResumeDetail.jsp";
	}

}
