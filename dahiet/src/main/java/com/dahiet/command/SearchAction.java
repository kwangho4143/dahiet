package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.CodeDao;
import com.dahiet.dao.ItemCodeDao;
import com.dahiet.dao.SimpleDao;
import com.dahiet.vo.CodeVO;
import com.dahiet.vo.ItemCodeVO;
import com.dahiet.vo.RecruitVO;
import com.dahiet.vo.SearchVO;

public class SearchAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	//  체크박스 리스트 구현
		
		CodeDao dao = new CodeDao();
		List<CodeVO> list = new ArrayList<CodeVO>();
		CodeVO vo = new CodeVO();
		list = dao.CODESELECT(vo);
		request.setAttribute("codes", list);
		
		ItemCodeDao idao = new ItemCodeDao();
		List<ItemCodeVO> ilist = new ArrayList<ItemCodeVO>();
		ItemCodeVO ivo = new ItemCodeVO();
		ivo.setGroupid("1");
		ilist = idao.ITEMCODESELECT(ivo);
		request.setAttribute("itemcodes", ilist);
		
		ItemCodeDao wdao = new ItemCodeDao();
		List<ItemCodeVO> wlist = new ArrayList<ItemCodeVO>();
		ItemCodeVO wvo = new ItemCodeVO();
		wvo.setGroupid("3");
		wlist = wdao.WITEMCODESELECT(wvo);
		request.setAttribute("witemcodes", wlist);
		
		SimpleDao sedao = new SimpleDao();
		SearchVO sevo = new SearchVO();
		List<RecruitVO> searchlist = new ArrayList<RecruitVO>();
		
		sevo.setLoc(request.getParameterValues("loc"));
		sevo.setItem(request.getParameterValues("item"));
		sevo.setSalary(request.getParameter("salary"));
		sevo.setType(request.getParameterValues("type"));
		sevo.setEmp_type(request.getParameterValues("emp_type"));
		sevo.setWork(request.getParameterValues("work"));
		searchlist = sedao.SIMPLE_SEARCH(sevo); //서치에 담아서
		request.setAttribute("simples", searchlist);
		
	
		
		return "/jsp/common/search.jsp";
		
	}

}
