<<<<<<< HEAD
package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.ResumeDao;
import com.dahiet.vo.ResumeVO;

public class ResumeAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
 
		return "/jsp/resume/mainResume.jsp";
	}

}
=======
package com.dahiet.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.ResumeDao;
import com.dahiet.vo.ResumeVO;

public class ResumeAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
 
		return "/jsp/resume/mainResume.jsp";
	}

}
>>>>>>> branch 'main' of https://github.com/kwangho4143/dahiet.git
