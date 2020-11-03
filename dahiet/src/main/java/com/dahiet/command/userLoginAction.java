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
		vo.setId(request.getParameter("id"));
//		vo.setPassword(request.getParameter("password"));
		
		vo = dao.select(vo);  //MemberDao 를 실행시킨다.
		
		if(vo.getPw().equals(request.getParameter("pw"))) {;
			session.setAttribute("id", vo.getId());  //session에 id 담음
			msq = "정상적인 로그인";
			request.setAttribute("msg", msq);
			request.setAttribute("vo", vo);	//멤버를 싫어 보냄
		}
		else {
			msq = "패스워드가 틀렸다.";
			request.setAttribute("msg", msq);
		}
		
		return "/jsp/userloginResult.jsp";
	}


}
