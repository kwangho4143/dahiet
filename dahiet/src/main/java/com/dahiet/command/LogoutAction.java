package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;

public class LogoutAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		session.invalidate();
		request.setAttribute("id", id);
		return "jsp/user/logout.jsp";
	}

}
