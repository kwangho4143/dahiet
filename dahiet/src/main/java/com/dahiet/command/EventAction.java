package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;

public class EventAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		return "jsp/user/event.jsp";
	}

}
