package com.dahiet.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.ReviewDao;
import com.dahiet.vo.ReviewVO;

public class ReviewInsert implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReviewDao dao = new ReviewDao();
		ReviewVO vo = new ReviewVO();

		vo.setId(request.getParameter("id"));
		vo.setTitle(request.getParameter("title"));
		vo.setContent(request.getParameter("content"));
		vo.setCompany(request.getParameter("company"));
		vo.setNewbi(request.getParameter("newbi"));
		int n = dao.re_insert(vo);

		if (n != 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer;
			try {
				writer = response.getWriter();
				writer.println("<script>alert('취업토크 등록이 완료되었습니다.'); location.href='"
						+ request.getContextPath() + "/ReviewAction.do';</script>");
				writer.close();
			} catch (IOException e) {
				e.printStackTrace();
				
			}
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer;
			try {
				writer = response.getWriter();
				writer.println("<script>alert('등록에 실패 하였습니다.'); location.href='" + request.getContextPath()
				+ "/jsp/user/ReviewCheck.do';</script>");
				writer.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}

		//


		}
		//
		return null;
	}

}
