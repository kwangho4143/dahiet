package com.dahiet.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dahiet.common.Action;
import com.dahiet.common.FileRenamePolicy;
import com.dahiet.common.FileUtil;
import com.dahiet.dao.ComDao;
import com.dahiet.vo.ComVO;

public class UpdateComInf implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ComDao dao = new ComDao();
		ComVO vo = new ComVO();
		
		HttpSession session = request.getSession();
		String id= (String)session.getAttribute("id");
		vo.setId(id);
		vo.setPw(request.getParameter("pw"));
		vo.setTel(request.getParameter("tel"));
		vo.setAddr(request.getParameter("addr"));
		vo.setLink(request.getParameter("link"));
		vo.setType(request.getParameter("type"));
		vo.setEmps(request.getParameter("emps"));
		vo.setProfit(request.getParameter("profit"));
		vo.setItem(request.getParameter("item"));
		//vo.setImg(request.getParameter("img"));
		
		String appPath = request.getServletContext().getRealPath("/images");
		System.out.println(appPath);
		// 여러건
		try {
			for (Part part : request.getParts()) { //파일 읽을 때
				String fileName = FileUtil.extractFileName(part);
				if (!fileName.equals("")) {
					// 파일 명 중복 체크
					String uploadFile = appPath + File.separator + fileName;
					File renameFile = FileRenamePolicy.rename(new File(uploadFile));
					part.write(renameFile.getAbsolutePath());
					vo.setImg(renameFile.getName());
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//
		int n = dao.ComUpdate(vo);
		
		request.setAttribute("n", n);
		
		
		return "/companyMypage.do";
	}

}
