package com.dahiet.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.ComDao;
import com.dahiet.vo.ComVO;

public class companyLoginAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ComDao dao = new ComDao();
		ComVO vo = new ComVO();
		HttpSession session = request.getSession(false);
		
		vo.setId(request.getParameter("id"));
		
		vo = dao.selectLogIn(vo);  //MemberDao 를 실행시킨다.
		
		if (vo.getPw() == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer;
			try {
				writer = response.getWriter();
				writer.println("<script>alert('아이디 또는 비밀번호가 다릅니다.'); location.href='" + request.getContextPath()
						+ "/MainListShow.do';</script>");
				writer.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}

		}
		else if(vo.getPw().equals(request.getParameter("pw"))) {
			session.setAttribute("id", vo.getId());  //session에 id 담음
			session.setAttribute("no", vo.getNo());  //session에 no 담음
			session.setAttribute("link", vo.getLink());
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer;
			try {
				writer = response.getWriter();
				writer.println("<script>alert('"+vo.getId()+" 님 기업회원 로그인되었습니다.'); location.href='" + request.getContextPath()
						+ "/MainListShow.do';</script>");
				writer.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}
		
		
		
		}
		else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer;
			try {
				writer = response.getWriter();
				writer.println("<script>alert('패스워드가 틀렸습니다 다시 확인해주세요.'); location.href='" + request.getContextPath()
						+ "/jsp/user/loginForm.jsp';</script>");
				writer.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}
		}
		return null;
	}

}
