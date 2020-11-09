package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.UserDao;
import com.dahiet.vo.UserVO;

public class UserMypageAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
				
		return "/jsp/user/UserMypage.jsp";
	}

}
