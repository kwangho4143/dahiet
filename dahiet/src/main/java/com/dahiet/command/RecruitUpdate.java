package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.CodeDao;
import com.dahiet.dao.ItemCodeDao;
import com.dahiet.dao.RecruitDao;
import com.dahiet.vo.CodeVO;
import com.dahiet.vo.ItemCodeVO;
import com.dahiet.vo.RecruitVO;

public class RecruitUpdate implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		RecruitDao dao = new RecruitDao();
		RecruitVO vo = new RecruitVO();
		vo.setRecruit_seq(request.getParameter("recruit_seq"));
		vo = dao.wantselect(vo);
		//담기
		request.setAttribute("vo",vo);
		
		CodeDao dao1 = new CodeDao();
		List<CodeVO> list = new ArrayList<CodeVO>();
		CodeVO vo1 = new CodeVO();
		list = dao1.CODESELECT(vo1);
		request.setAttribute("codes", list);

		ItemCodeDao idao = new ItemCodeDao();
		List<ItemCodeVO> ilist = new ArrayList<ItemCodeVO>();
		ItemCodeVO ivo = new ItemCodeVO();
		ivo.setGroupid("1");
		ilist = idao.ITEMCODESELECT(ivo);
		request.setAttribute("itemcodes", ilist);
		
		
		return "/jsp/company/recruitUpdate.jsp";
	}

}
