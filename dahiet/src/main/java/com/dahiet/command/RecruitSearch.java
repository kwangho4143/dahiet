package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.SimpleDao;
import com.dahiet.vo.SimpleVO;

public class RecruitSearch implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//값을 넘겨줘야됨
		SimpleDao sdao = new SimpleDao();
		List<SimpleVO> searchlist = new ArrayList<SimpleVO>();
		SimpleVO svo = new SimpleVO();
		searchlist = sdao.SIMPLE_SEARCH(svo);
		request.setAttribute("search", searchlist);
		
		return null;
	}

}
