package com.dahiet.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.ComDao;
import com.dahiet.vo.ComVO;


public class ComIdCheck implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ComDao dao = new ComDao();
		ComVO vo = new ComVO();
		vo.setId(request.getParameter("id"));
		String ms="아이디가 중복됩니다.";

		vo = dao.selectLogIn(vo);
		System.out.println(vo.getId());
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
