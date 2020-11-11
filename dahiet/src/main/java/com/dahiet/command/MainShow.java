package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;

public class MainShow implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		return "/test2.jsp";
	}

}
