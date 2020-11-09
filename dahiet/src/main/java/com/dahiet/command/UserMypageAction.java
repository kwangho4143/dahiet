package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.UserDao;
import com.dahiet.vo.UserVO;

public class UserMypageAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		UserDao dao = new UserDao();
		UserVO vo = new UserVO();
		vo.setId(id);
		vo = dao.selectLogIn(vo);
		System.out.println(vo.getId());
		request.setAttribute("vo", vo);
		
		return "/jsp/user/UserMypage.jsp";
	}

}
