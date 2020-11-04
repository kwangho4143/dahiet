package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.ReviewDao;
import com.dahiet.vo.ReviewVO;

import sun.java2d.pipe.SpanShapeRenderer.Simple;

public class ReviewAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	//  체크박스 리스트 구현
		ReviewDao dao = new ReviewDao();
		List<ReviewVO> list = new ArrayList<ReviewVO>();
		ReviewVO vo = new ReviewVO();
		list = dao.RE_LI_SELECT(vo);
		request.setAttribute("relists", list);
		
		return "/jsp/review/reviewList.jsp";
		
	}

}
