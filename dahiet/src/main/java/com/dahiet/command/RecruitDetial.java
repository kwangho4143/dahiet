package com.dahiet.command;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.RecruitDao;
import com.dahiet.vo.RecruitVO;

public class RecruitDetial implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		RecruitDao dao = new RecruitDao();
		RecruitVO vo = new RecruitVO();
		vo.setRecruit_seq(request.getParameter("no"));
		vo = dao.RECURUITDETAILSELECT(vo);
		request.setAttribute("vo",vo);
		
		
		//리주메
		List<RecruitVO> rrlists = new ArrayList<RecruitVO>();
		RecruitDao rsdao = new RecruitDao();
		RecruitVO rsvo = new RecruitVO();
		HttpSession session = request.getSession();
		String tel = (String) session.getAttribute("tel");
		rsvo.setTel(tel);
		//System.out.println(vo.getTel());
		rrlists = rsdao.RECURUITRESUMESELECT(rsvo);

		//
		Enumeration se = session.getAttributeNames();

		while (se.hasMoreElements()) {
			String getse = se.nextElement() + "";
			System.out.println("@@@@@@@ session : " + getse + " : " + session.getAttribute(getse));
		}

		//
//		for(int i=0;i<list.size();i++){
//			System.out.println(list.get(i).getTel());
//		}
		
		

		request.setAttribute("rrlists", rrlists);
		
		
		
		return "/jsp/company/recruitDetail.jsp";
	}

}	

