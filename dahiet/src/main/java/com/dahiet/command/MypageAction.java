package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;

public class MypageAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "jsp/user/UserMypage.jsp";
	}

}
