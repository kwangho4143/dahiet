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
		list=dao.check();
		String ms="사용가능합니다.";
		
		for(int i=0;i<list.size();i++) {
			if(request.getParameter("id").equals(list.get(i).getId())) {
				ms="아이디를 다른 것으로 설정해주세요.";
				break;
			}		
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
