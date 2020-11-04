package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;

public class ReviewCheck implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 체크박스 리스트 구현
	

				return "/jsp/review/reviewInsert.jsp";
	}

}
