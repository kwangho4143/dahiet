package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dahiet.common.Action;
import com.dahiet.dao.ComDao;
import com.dahiet.vo.ComVO;


public class comInsert implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ComDao dao = new ComDao();
		ComVO vo = new ComVO();

		vo.setId(request.getParameter("id"));
		vo.setPw(request.getParameter("pw"));
		vo.setNo(request.getParameter("no"));
		vo.setEmail(request.getParameter("email"));
		vo.setTel(request.getParameter("tel"));
		vo.setAddr(request.getParameter("addr"));
		
		int n = dao.insert(vo);
		String page;

		if (n != 0) {
			page = "jsp/company/insertCompanySucess.jsp";
		} else {
			page = "jsp/company/insertCompanyFail.jsp";
		}

		return page;
	}

}
