package com.dahiet.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.ReviewDao;
import com.dahiet.vo.ReviewVO;

public class ReviewDetailUp implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 체크박스 리스트 구현
		String page;
		ReviewDao dao = new ReviewDao();
		ReviewVO vo = new ReviewVO();
		vo.setNo(request.getParameter("no"));
		vo = dao.RE_DE_SELECT(vo);
		String action = request.getParameter("ac");
		if (vo.getPassword().equals(request.getParameter("password"))) {
			if(action.equals("upd")) {
				request.setAttribute("vo", vo);
				page = "/jsp/review/reviewUpdate.jsp";
				
			} else {
				dao = new ReviewDao();
				int n = dao.RE_UP_DELETE(vo);
				page = "/ReviewAction.do";
			}
		}
		else {
			page = null;
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script>");
				out.println("alert('비밀번호를 확인해주세요');");
				out.println("history.back();");
				out.println("</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return page;
	}

}
