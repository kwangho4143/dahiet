package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.CodeDao;
import com.dahiet.vo.CodeVO;

public class SearchAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	//  체크박스 리스트 구현
		CodeDao dao = new CodeDao();
		List<CodeVO> list = new ArrayList<CodeVO>();
		CodeVO vo = new CodeVO();
		list = dao.CODESELECT(vo);
		request.setAttribute("codes", list);
		return "/jsp/common/search.jsp";
		
	}

}
