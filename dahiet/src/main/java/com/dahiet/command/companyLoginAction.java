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
		String msq;
		String page = "/jsp/user/loginForm.jsp";
		
		vo.setId(request.getParameter("id"));
		
		vo = dao.selectLogIn(vo);  //MemberDao 를 실행시킨다.
		
		if (vo.getPw() == null) {
			msq = "아이디 또는 패스워드가 일치하지 않습니다.";

		}
		else if(vo.getPw().equals(request.getParameter("pw"))) {
			session.setAttribute("id", vo.getId());  //session에 id 담음
			session.setAttribute("no", vo.getNo());  //session에 no 담음
			session.setAttribute("link", vo.getLink());
			
			msq = "정상적인 로그인";
			request.setAttribute("msg", msq);
			request.setAttribute("vo", vo);	//멤버를 실어 보냄
			page = "/jsp/company/comloginResult.jsp";
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
		request.setAttribute("msg", msq);
		return page;
	}

}
