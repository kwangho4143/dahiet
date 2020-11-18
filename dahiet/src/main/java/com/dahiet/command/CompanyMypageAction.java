package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dahiet.common.Action;
import com.dahiet.dao.ComDao;
import com.dahiet.dao.ItemCodeDao;
import com.dahiet.vo.ComVO;
import com.dahiet.vo.ItemCodeVO;

public class CompanyMypageAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		ComDao dao = new ComDao();
		ComVO vo = new ComVO();
		vo.setId(id);
		vo = dao.selectLogIn1(vo);
		request.setAttribute("vo", vo);
		
		ItemCodeDao idao = new ItemCodeDao();
		List<ItemCodeVO> ilist = new ArrayList<ItemCodeVO>();
		ItemCodeVO ivo = new ItemCodeVO();
		ivo.setGroupid("1");
		ilist = idao.ITEMCODESELECT(ivo);
		request.setAttribute("itemcodes", ilist);
		
		return "/jsp/company/CompanyMypage.jsp";
	}

}
