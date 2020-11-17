package com.dahiet.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.dahiet.common.Action;
import com.dahiet.dao.UserDao;
import com.dahiet.vo.UserVO;

public class UserIdCheck implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<UserVO> list = new ArrayList<>();
		UserDao dao = new UserDao();
		UserVO vo = new UserVO();
		vo.setId(request.getParameter("id"));
		String ms="아이디가 중복됩니다.";

		vo = dao.selectLogIn(vo);
	
		if(vo.getName()==null) {
			ms="사용가능합니다.";
		}
		
		try {
			response.getWriter().print(ms);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}

}
