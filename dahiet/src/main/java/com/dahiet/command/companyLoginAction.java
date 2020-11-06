package com.dahiet.command;

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
		String msq;
		vo.setId(request.getParameter("id"));
		
		vo = dao.selectLogIn(vo);  //MemberDao 를 실행시킨다.
		
		if(vo.getPw().equals(request.getParameter("pw"))) {
			session.setAttribute("id", vo.getId());  //session에 id 담음
			session.setAttribute("no", vo.getNo());  //session에 id 담음
			
			msq = "정상적인 로그인";
			request.setAttribute("msg", msq);
			request.setAttribute("vo", vo);	//멤버를 실어 보냄
		}
		else {
			msq = "패스워드가 틀렸다.";
			request.setAttribute("msg", msq);
		}
		return "/jsp/company/comloginResult.jsp";
	}

}
