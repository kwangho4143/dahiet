package com.dahiet.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.UserDao;
import com.dahiet.vo.UserVO;

public class userLoginAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 로그인 인증과정을 처리한다.
		UserDao dao = new UserDao();
		UserVO vo = new UserVO();
		HttpSession session = request.getSession();
		vo.setId(request.getParameter("id"));
//		vo.setPassword(request.getParameter("password"));

		vo = dao.selectLogIn(vo); // MemberDao 를 실행시킨다.

		if (vo.getPw() == null || vo.getId() ==null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer;
			try {
				writer = response.getWriter();
				writer.println("<script>alert('아이디 또는 비밀번호가 다릅니다.'); location.href='" + request.getContextPath()
						+ "/jsp/user/loginForm.jsp';</script>");
				writer.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}

		} else if (vo.getPw().equals(request.getParameter("pw"))) {
			session.setAttribute("id", vo.getId());
			session.setAttribute("pw", vo.getPw());
			session.setAttribute("name", vo.getName());
			session.setAttribute("birth", vo.getBirth());
			session.setAttribute("email", vo.getEmail());
			session.setAttribute("addr", vo.getAddr());
			session.setAttribute("univ", vo.getUniv());
			session.setAttribute("major", vo.getMajor());
			session.setAttribute("score", vo.getScore());
			session.setAttribute("imag", vo.getImage());

			session.setAttribute("tel", vo.getTel());

			request.setAttribute("vo", vo); // 멤버를 실어 보냄

			//
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer;
			try {
				writer = response.getWriter();
				writer.println("<script>alert('" + vo.getId() + " 님 로그인 되었습니다.'); location.href='"
						+ request.getContextPath() + "/MainListShow.do';</script>");
				writer.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}

			//

		} else {
			//
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
			//
		}
		return null;
	}

}
