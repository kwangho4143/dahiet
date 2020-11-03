package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.UserDao;
import com.dahiet.vo.UserVO;

public class userLoginAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		UserDao dao = new UserDao();
		UserVO vo = new UserVO();
		HttpSession session = request.getSession(false);
		String pw = request.getParameter("pw");//입력했던 pw
		String msq;	
		vo.setId(request.getParameter("id"));//입력했던 id를 vo에 담는다 

		
		vo = dao.selectLogIn(vo); // vo를 넣고 검색을 한다.  vo에는 id랑 pw만 존재
		
		if(vo.getPw() == null) {
			 msq = "id없음.";
		}
		else if(pw.equals(vo.getPw())) {;
	         session.setAttribute("id", vo.getId());  //session에 id 담음
	         msq = "정상적인 로그인";

	      }
	      else {
	         msq = "패스워드가 틀렸다.";
	      }
		request.setAttribute("msg", msq);

		
		return "/jsp/user/userloginResult.jsp";
	}

}
