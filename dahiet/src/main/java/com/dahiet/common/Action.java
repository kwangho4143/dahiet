package com.dahiet.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	public String exec(HttpServletRequest request,HttpServletResponse response);
}
