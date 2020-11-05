package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.ReviewDao;
import com.dahiet.vo.ReviewVO;

public class ReviewUpdate implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	
		return "/jsp/review/reviewUpdate.jsp";
	
	}

}
