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
import com.dahiet.vo.SimpleVO;

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
		ilist = idao.ITEMCODESELECT(ivo);
		request.setAttribute("itemcodes", ilist);
		
		SimpleDao sdao = new SimpleDao();
		List<SimpleVO> slist = new ArrayList<SimpleVO>();
		SimpleVO svo = new SimpleVO();
		slist = sdao.SIMPLESELECT(svo);
		request.setAttribute("simples", slist);
		
		
		
		
		return "/jsp/common/search.jsp";
		
	}

}
