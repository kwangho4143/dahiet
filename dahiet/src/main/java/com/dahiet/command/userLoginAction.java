package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.UserDao;
import com.dahiet.vo.UserVO;

public class userLoginAction implements Action {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 로그인 인증과정을 처리한다.
		UserDao dao = new UserDao();
		UserVO vo = new UserVO();
		HttpSession session = request.getSession(false);
		String msq;
		String page = "/jsp/user/loginForm.jsp";
		vo.setId(request.getParameter("id"));
//		vo.setPassword(request.getParameter("password"));

		vo = dao.selectLogIn(vo); // MemberDao 를 실행시킨다.
		if (vo.getPw() == null) {
			msq = "아이디 또는 패스워드가 일치하지 않습니다.";

		} else if (vo.getPw().equals(request.getParameter("pw"))) {
			session.setAttribute("id", vo.getId()); // session에 id 담음
			session.setAttribute("tel", vo.getTel());
			msq = "정상적인 로그인";
			page = "/jsp/user/userloginResult.jsp";
			request.setAttribute("vo", vo); // 멤버를 실어 보냄
		} else {
			msq = "패스워드가 틀렸습니다.";
		}
		request.setAttribute("msg", msq);

		return page;
	}

}
