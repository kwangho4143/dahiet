package com.dahiet.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.common.Action;
import com.dahiet.dao.CodeDao;
import com.dahiet.dao.ItemCodeDao;
import com.dahiet.vo.CodeVO;
import com.dahiet.vo.ItemCodeVO;

public class RecruitCheck implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 체크박스 리스트 구현
				CodeDao dao = new CodeDao();
				List<CodeVO> list = new ArrayList<CodeVO>();
				CodeVO vo = new CodeVO();
				list = dao.CODESELECT(vo);
				request.setAttribute("codes", list);

				ItemCodeDao idao = new ItemCodeDao();
				List<ItemCodeVO> ilist = new ArrayList<ItemCodeVO>();
				ItemCodeVO ivo = new ItemCodeVO();
				ivo.setGroupid("1");
				ilist = idao.WITEMCODESELECT(ivo);
				request.setAttribute("itemcodes", ilist);
				

				return "/jsp/company/insertRecruit.jsp";
	}

}
