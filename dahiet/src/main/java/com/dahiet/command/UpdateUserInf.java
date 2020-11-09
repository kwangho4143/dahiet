package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.UserDao;
import com.dahiet.vo.UserVO;

public class UpdateUserInf implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		UserDao dao = new UserDao();
		UserVO vo = new UserVO();
		
		HttpSession session = request.getSession();
		String id =(String)session.getAttribute("id");
		vo.setId(id);
		vo.setPw(request.getParameter("pw"));
		vo.setEmail(request.getParameter("email"));
		vo.setAddr(request.getParameter("addr"));
		vo.setTel(request.getParameter("tel"));
		vo.setUniv(request.getParameter("univ"));
		vo.setMajor(request.getParameter("major"));
		vo.setScore(request.getParameter("score"));
		
		System.out.println(request.getParameter("major"));
		
		int n = dao.UserUpdate(vo);
		
		request.setAttribute("n", n);
		
		return "test.jsp";
	}

}
