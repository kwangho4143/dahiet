package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.ComDao;
import com.dahiet.vo.ComVO;

public class UpdateComInf implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ComDao dao = new ComDao();
		ComVO vo = new ComVO();
		
		HttpSession session = request.getSession();
		String id= (String)session.getAttribute("id");
		vo.setId(id);
		vo.setPw(request.getParameter("pw"));
		vo.setTel(request.getParameter("tel"));
		vo.setAddr(request.getParameter("addr"));
		vo.setLink(request.getParameter("link"));
		vo.setType(request.getParameter("type"));
		vo.setEmps(request.getParameter("emps"));
		vo.setProfit(request.getParameter("profit"));
		vo.setItem(request.getParameter("item"));
		vo.setImg(request.getParameter("img"));
		
		int n = dao.ComUpdate(vo);
		
		request.setAttribute("n", n);
		
		
		return "/companyMypage.do";
	}

}
